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
     * Saves a new system to the database.
     * Does not require token.
     */
    @PostMapping(value = "/registry/add", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> add(@RequestBody UserDataRequest userDataRequest){
        if(userDataRequest.getUuid().length() != 36){
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.INVALID_REQUEST));
        }else{
            if(dataRepository.existsByUuid(userDataRequest.getUuid())){
                UserDataDB userDataDB = new UserDataDB();
                userDataDB.setUuid(userDataRequest.getUuid());
                
                userDataDB.setInstanceType(userDataRequest.getInstancetype());
                if(userDataDB.getInstanceType() == null){
                    return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.INVALID_REQUEST));
                }
                
                userDataDB.setVersion(userDataRequest.getVersion());
                userDataDB.setStatus(SystemStatus.PENDING);
                
                byte[] bytes = userDataRequest.getPublickey().getBytes(StandardCharsets.UTF_8);
                Blob blob = BlobProxy.generateProxy(bytes);
                userDataDB.setPublicKey(blob);
                
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
    public ResponseEntity<StatusResponse> adopt(@RequestBody AdoptRequest adoptRequest){
        if(adoptRequest.getUuid().length() != 36){
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.INVALID_REQUEST));
        }else{
            if(dataRepository.existsByUuid(adoptRequest.getUuid())){
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
    public ResponseEntity<StatusResponse> update(@RequestBody UpdateRequest updateRequest, @RequestHeader String Authorization){
        String uuid = getUuidFromJwtToken(Authorization);
        if(dataRepository.existsByUuid(uuid)){
            dataRepository.updateVersion(updateRequest.getVersion(), uuid);
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
    public ResponseEntity<ListResponse> list(@RequestBody FilterRequest filterRequest) throws SQLException{
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
            Blob blob = userDataDB.getPublicKey();
            String pKey = new String(userDataDB.getPublicKey().getBytes(1L, (int) blob.length()));
            userDataResponses.add(new UserDataResponse(userDataDB.getUuid(), pKey, userDataDB.getInstanceType(), userDataDB.getVersion(),
                    userDataDB.getStatus(), userDataDB.getTimestamp()));
        }
        
        return ResponseEntity.ok().body(new ListResponse(ResponseStatus.OK, userDataResponses));
    }
    
    /**
     * Updates the timestamp of a specific system in the database.
     * Does require token.
     */
    @PostMapping(value = "/registry/heartbeat", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<StatusResponse> heartbeat(@RequestHeader String Authorization){
        String uuid = getUuidFromJwtToken(Authorization);
        UserDataDB userData = dataRepository.findByUuid(uuid);
        if(userData.getStatus() != SystemStatus.ADOPTED){
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.NOT_ADOPTED));
        }else{
            dataRepository.updateTimestamp(LocalDateTime.now().withNano(0), uuid);
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
        }
    }
    
    /**
     * Verifies the received signature and creates JWT-token for later usage.
     * Does not require token.
     */
    @PostMapping(value = "/registry/login", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<StatusResponse> login(@RequestBody LoginRequest data) throws Exception{
        UserDataDB userDataDB = dataRepository.findByUuid(data.getUuid());
        if(userDataDB == null){
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.INVALID_REQUEST));
        }
        
        if(userDataDB.getStatus() == SystemStatus.ADOPTED){
            Blob blob = userDataDB.getPublicKey();
            String publicKey = new String(userDataDB.getPublicKey().getBytes(1L, (int) blob.length()));
            
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
    public ResponseEntity<StatusResponse> delete(@RequestHeader String Authorization){
        String uuid = getUuidFromJwtToken(Authorization);
        UserDataDB userData = dataRepository.findByUuid(uuid);
        dataRepository.delete(userData);
        return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
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
