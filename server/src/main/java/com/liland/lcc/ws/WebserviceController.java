package com.liland.lcc.ws;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.liland.lcc.dto.ResponseStatus;
import com.liland.lcc.dto.*;
import org.hibernate.engine.jdbc.BlobProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.transaction.Transactional;
import java.nio.charset.StandardCharsets;
import java.security.*;
import java.security.spec.X509EncodedKeySpec;
import java.sql.Blob;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.*;

import static com.auth0.jwt.algorithms.Algorithm.HMAC512;
import static com.liland.lcc.ws.SecurityConstants.*;
import static java.nio.charset.StandardCharsets.UTF_8;

@RestController
@RequestMapping(method = {RequestMethod.GET, RequestMethod.PUT})
public class WebserviceController{
    
    @Autowired
    private DataRepository dataRepository;
    
    @Autowired
    private TenantRepository tenantRepository;
    
    public static String ipAddress;
    
    //region registry
    
    /**
     * Saves a new system to the database.
     * Does not require token.
     */
    @PostMapping(value = "/registry/add", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> systemAdd(@RequestBody UserDataRequest userDataRequest){
        if(userDataRequest.getUuid().length() != 36){
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.INVALID_REQUEST));
        }else{
            if(!dataRepository.existsByUuid(userDataRequest.getUuid())){
                UserDataDB userDataDB = new UserDataDB();
                userDataDB.setUuid(userDataRequest.getUuid());
                
                userDataDB.setInstancetype(userDataRequest.getInstancetype());
                if(userDataDB.getInstancetype() == null){
                    return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.INVALID_REQUEST));
                }
                
                userDataDB.setVersion(userDataRequest.getVersion());
                userDataDB.setStatus(SystemStatus.PENDING);
                
                byte[] bytes = userDataRequest.getPublickey().getBytes(StandardCharsets.UTF_8);
                Blob blob = BlobProxy.generateProxy(bytes);
                userDataDB.setPublickey(blob);
                userDataDB.setIpaddress(ipAddress);
                
                dataRepository.save(userDataDB);
                return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
            }else{
                return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.KNOWN_UUID));
            }
        }
    }
    
    /**
     * Accepts or rejects a system.
     * Does not require token but normally it would.
     */
    @PostMapping(value = "/registry/adopt", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<StatusResponse> systemAdopt(@RequestBody AdoptRequest adoptRequest){
        if(adoptRequest.getUuid().length() != 36){
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.INVALID_REQUEST));
        }else{
            if(!dataRepository.existsByUuid(adoptRequest.getUuid())){
                return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.UNKNOWN_UUID));
            }else{
                if(adoptRequest.getAdopt()){
                    dataRepository.updateStatus(SystemStatus.ADOPTED.getId(), adoptRequest.getUuid());
                }else{
                    dataRepository.updateStatus(SystemStatus.REJECTED.getId(), adoptRequest.getUuid());
                }
                return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
            }
        }
    }
    
    /**
     * Updates version of a system in the database.
     * Does require token.
     */
    @PostMapping(value = "/registry/update", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<StatusResponse> systemUpdate(@RequestBody UpdateRequest updateRequest, @RequestHeader String Authorization){
        String uuid = getUuidFromJwtToken(Authorization);
        if(dataRepository.existsByUuid(uuid)){
            dataRepository.updateVersion(updateRequest.getVersion(), uuid, ipAddress);
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
        }
        return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.UNKNOWN_UUID));
    }
    
    /**
     * Lists all systems in the database with optional filters.
     * Does require token.
     */
    @PostMapping(value = "/registry/list", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<UserListResponse> systemList(@RequestBody FilterRequest filterRequest) throws SQLException{
        InstanceType instancetype = filterRequest.getFilter().getInstancetype();
        SystemStatus status = filterRequest.getFilter().getStatus();
        List<UserDataDB> userData;
        List<UserDataResponse> userDataResponses = new ArrayList<>();
        
        if(status != null){
            if(instancetype != null){
                userData = dataRepository.findByInstancetypeAndStatus(instancetype, status);
            }else{
                userData = dataRepository.findByStatus(status);
            }
        }else{
            if(instancetype != null){
                userData = dataRepository.findByInstancetype(instancetype);
            }else{
                userData = dataRepository.findAll();
            }
        }
        
        for(UserDataDB userDataDB : userData){
            Blob blob = userDataDB.getPublickey();
            String pKey = new String(userDataDB.getPublickey().getBytes(1L, (int) blob.length()));
            userDataResponses.add(new UserDataResponse(userDataDB.getUuid(), pKey, userDataDB.getInstancetype(), userDataDB.getVersion(),
                    userDataDB.getStatus(), userDataDB.getTimestamp()));
        }
        
        return ResponseEntity.ok().body(new UserListResponse(ResponseStatus.OK, userDataResponses));
    }
    
    /**
     * Updates the timestamp of a specific system in the database.
     * Does require token.
     */
    @PostMapping(value = "/registry/heartbeat", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<StatusResponse> systemHeartbeat(@RequestHeader String Authorization){
        String uuid = getUuidFromJwtToken(Authorization);
        UserDataDB userData = dataRepository.findByUuid(uuid);
        if(userData.getStatus() != SystemStatus.ADOPTED){
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.NOT_ADOPTED));
        }else{
            dataRepository.updateTimestamp(LocalDateTime.now().withNano(0), uuid, ipAddress);
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
        }
    }
    
    /**
     * Verifies the received signature and creates JWT-token for later usage.
     * Does not require token.
     */
    @PostMapping(value = "/registry/login", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<StatusResponse> systemLogin(@RequestBody LoginRequest data) throws Exception{
        UserDataDB userDataDB = dataRepository.findByUuid(data.getUuid());
        if(userDataDB == null){
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.INVALID_REQUEST));
        }
        
        if(userDataDB.getStatus() == SystemStatus.ADOPTED){
            Blob blob = userDataDB.getPublickey();
            String publicKey = new String(userDataDB.getPublickey().getBytes(1L, (int) blob.length()));
            
            byte[] publicBytes = Base64.getDecoder().decode(publicKey);
            X509EncodedKeySpec keySpec = new X509EncodedKeySpec(publicBytes);
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            PublicKey pubKey = keyFactory.generatePublic(keySpec);
            
            boolean verify = verifyKey(Base64.getDecoder().decode(data.getSignature()), pubKey, data.getMsg());
            
            if(verify){
                HttpHeaders httpHeaders = new HttpHeaders();
                httpHeaders.set("Authentication", generateJwtToken(data.getUuid()));
                return ResponseEntity.ok().headers(httpHeaders).body(new StatusResponse(ResponseStatus.OK));
            }else{
                return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.INVALID_REQUEST));
            }
        }else{
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.NOT_ADOPTED));
        }
    }
    
    /**
     * Deletes a specific system from the database.
     * Does require token.
     * Used only for testing.
     */
    @PostMapping(value = "/registry/delete", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> systemDelete(@RequestHeader String Authorization){
        String uuid = getUuidFromJwtToken(Authorization);
        UserDataDB userData = dataRepository.findByUuid(uuid);
        dataRepository.delete(userData);
        return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
    }
    
    //endregion
    
    //region ws/tenants
    
    /**
     * Saves a tenant of a specific system in the database.
     * Does require token.
     */
    @PostMapping(value = "/ws/tenants/add", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> tenantAdd(@RequestBody TenantRequest tenantRequest, @RequestHeader String Authorization){
        UserDataDB userData = dataRepository.findByUuid(getUuidFromJwtToken(Authorization));
        TenantDB tenantDB = new TenantDB();
        tenantDB.setExternalid(tenantRequest.getExternalid());
        tenantDB.setSystemid(userData.getId());
        tenantDB.setName(tenantRequest.getName());
        tenantDB.setExpirationdate(tenantRequest.getExpirationdate());
        tenantRepository.save(tenantDB);
        return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
    }
    
    /**
     * Updates a tenant of a specific system in the database.
     * Does require token.
     */
    @PostMapping(value = "/ws/tenants/update", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<StatusResponse> tenantUpdate(@RequestBody TenantRequest tenantRequest, @RequestHeader String Authorization){
        UserDataDB userData = dataRepository.findByUuid(getUuidFromJwtToken(Authorization));
        TenantDB tenantDB = tenantRepository.findBySystemidAndExternalid(userData.getId(), tenantRequest.getExternalid());
        tenantDB.setName(tenantRequest.getName());
        tenantDB.setExpirationdate(tenantRequest.getExpirationdate());
        tenantRepository.save(tenantDB);
        return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
    }
    
    /**
     * Creates a list of tenants of a specific system in the database.
     * Does require token.
     */
    @PostMapping(value = "/ws/tenants/list", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<TenantListResponse> tenantList(@RequestHeader String Authorization){
        List<TenantDB> tenantDBList;
        List<TenantResponse> tenantResponses = new ArrayList<>();
    
        tenantDBList = tenantRepository.findAll();
    
        for(TenantDB tenantDB : tenantDBList){
            UserDataDB userDataDB = dataRepository.findById(tenantDB.getSystemid());
            if(getUuidFromJwtToken(Authorization).equals(userDataDB.getUuid())){
                tenantResponses.add(new TenantResponse(tenantDB.getExternalid(), userDataDB.getUuid(),
                        tenantDB.getName(), tenantDB.getExpirationdate()));
            }
        }
    
        return ResponseEntity.ok().body(new TenantListResponse(tenantResponses));
    }
    
    @PostMapping(value = "/ws/tenants/delete", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<StatusResponse> tenantDelete(@RequestBody TenantRequest tenantRequest, @RequestHeader String Authorization){
        UserDataDB userData = dataRepository.findByUuid(getUuidFromJwtToken(Authorization));
        TenantDB tenantDB = tenantRepository.findBySystemidAndExternalid(userData.getId(), tenantRequest.getExternalid());
        tenantRepository.delete(tenantDB);
        return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
    }
    
    //endregion
    
    
    /**
     * Decrypts the received signature and compares the newly created hash with the decrypted one.
     */
    public static boolean verifyKey(byte[] signature, Key publicKey, String message) throws IllegalBlockSizeException, InvalidKeyException,
            BadPaddingException, NoSuchAlgorithmException, NoSuchPaddingException{
        Cipher cipher = Cipher.getInstance("RSA");
        cipher.init(Cipher.DECRYPT_MODE, publicKey);
        byte[] decryptedMsg = cipher.doFinal(signature);
        
        byte[] messageBytes = message.getBytes(UTF_8);
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        
        return Arrays.equals(messageDigest.digest(messageBytes), decryptedMsg);
    }
    
    /**
     * Generates a new token with a given uuid.
     */
    public String generateJwtToken(String uuid){
        return JWT.create()
                .withSubject(uuid)
                .withExpiresAt(new Date(System.currentTimeMillis() + EXPIRATION_TIME))
                .sign(HMAC512(SECRET.getBytes()));
    }
    
    /**
     * Gets the uuid of a given token.
     */
    public String getUuidFromJwtToken(String token){
        return JWT.require(Algorithm.HMAC512(SECRET.getBytes()))
                .build()
                .verify(token.replace(TOKEN_PREFIX, ""))
                .getSubject();
    }

}
