package com.liland.lcc.ws;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.liland.lcc.dto.ResponseStatus;
import com.liland.lcc.dto.*;
import org.hibernate.engine.jdbc.BlobProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

import static com.auth0.jwt.algorithms.Algorithm.HMAC512;
import static com.liland.lcc.ws.SecurityConstants.*;
import static java.nio.charset.StandardCharsets.UTF_8;

@RestController
@RequestMapping(method = {RequestMethod.GET, RequestMethod.PUT})
public class WebserviceController {

    @Autowired
    private DataRepository datarepository;

    //for user
    @PostMapping(value = "/registry/add", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> add(@RequestBody UserDataRequest data){
        if (data.getUuid().length() != 36){
            return new ResponseEntity<StatusResponse>(new StatusResponse(ResponseStatus.INVALID_REQUEST), HttpStatus.OK);
        } else {
            boolean exists = datarepository.existsByUuid(data.getUuid());
            if (!exists){
                UserDataDB userDataDB = new UserDataDB();
                userDataDB.setUuid(data.getUuid());
                byte[] bytes = data.getPublickey().getBytes(StandardCharsets.UTF_8);
                Blob blob = BlobProxy.generateProxy(bytes);
                userDataDB.setPublickey(blob);
                userDataDB.setInstancetype(data.getInstancetype());
                userDataDB.setVersion(data.getVersion());
                userDataDB.setStatus(SystemStatus.PENDING);
                datarepository.save(userDataDB);
                return new ResponseEntity<StatusResponse>(new StatusResponse(ResponseStatus.OK), HttpStatus.OK);
            } else {
                return new ResponseEntity<StatusResponse>(new StatusResponse(ResponseStatus.KNOWN_UUID), HttpStatus.OK);
            }
        }
    }

    //for admin
    @PostMapping(value = "/registry/adopt", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> adopt(@RequestBody AdoptRequest data) {
        if (data.getUuid().length() != 36){
            return new ResponseEntity<StatusResponse>(new StatusResponse(ResponseStatus.INVALID_REQUEST), HttpStatus.OK);
        } else {
            boolean exists = datarepository.existsByUuid(data.getUuid());
            if (!exists){
                return new ResponseEntity<StatusResponse>(new StatusResponse(ResponseStatus.UNKNOWN_UUID), HttpStatus.OK);
            } else {
                UserDataDB userData = datarepository.findByUuid(data.getUuid());
                if(data.getAdopt()){
                    userData.setStatus(SystemStatus.ADOPTED);
                } else {
                    userData.setStatus(SystemStatus.REJECTED);
                }
                datarepository.save(userData);
                return new ResponseEntity<StatusResponse>(new StatusResponse(ResponseStatus.OK), HttpStatus.OK);
            }
        }
    }

    //for user
    @PostMapping(value = "/registry/update", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> update(@RequestBody UpdateRequest data, @RequestHeader String Authorization) {
        String uuid = getUuidFromJwtToken(Authorization);
        UserDataDB userData = datarepository.findByUuid(uuid);
        userData.setVersion(data.getVersion());
        datarepository.save(userData);
        return new ResponseEntity<StatusResponse>(new StatusResponse(ResponseStatus.OK), HttpStatus.OK);
    }

    //for admin
    @PostMapping(value = "/registry/list", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<ListResponse> list(@RequestBody FilterRequest filter, @RequestHeader String Authorization) throws SQLException {
        String instancetype = filter.getFilter().getInstancetype();
        SystemStatus status = filter.getFilter().getStatus();
        List<UserDataDB> userData;
        List<UserDataResponse> userDataResponses = new ArrayList<>();

        if (status != null) {
            if (!instancetype.isEmpty()) {
                userData = datarepository.findByInstancetypeAndStatus(instancetype, status);
            } else {
                userData = datarepository.findByStatus(status);
            }
        } else {
            if (!instancetype.isEmpty()) {
                userData = datarepository.findByInstancetype(instancetype);
            } else {
                userData = datarepository.findAll();
            }
        }

        for (UserDataDB userDataDB : userData) {
            Blob blob = userDataDB.getPublickey();
            String pkey = new String(userDataDB.getPublickey().getBytes(1L, (int) blob.length()));
            userDataResponses.add(new UserDataResponse(userDataDB.getUuid(), pkey, userDataDB.getInstancetype(), userDataDB.getVersion(),
                    userDataDB.getStatus(), userDataDB.getTimestamp()));
        }

        return new ResponseEntity<ListResponse>(new ListResponse(ResponseStatus.OK, userDataResponses), HttpStatus.OK);
    }

    //for user
    @PostMapping(value = "/registry/heartbeat", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> heartbeat(@RequestBody UserDataRequest data) throws ParseException {
        UserDataDB userData = datarepository.findByUuid(data.getUuid());
        if (userData.getStatus() != SystemStatus.ADOPTED){
            return new ResponseEntity<StatusResponse>(new StatusResponse(ResponseStatus.NOT_ADOPTED), HttpStatus.OK);
        } else {
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
            LocalDateTime now = LocalDateTime.now();
            userData.setTimestamp(new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").parse(dtf.format(now)));
            datarepository.save(userData);
            return new ResponseEntity<StatusResponse>(new StatusResponse(ResponseStatus.OK), HttpStatus.OK);
        }
    }

    //for user
    @PostMapping(value = "/registry/login", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<String> login(@RequestBody LoginRequest data) throws Exception {
        UserDataDB userDataDB = datarepository.findByUuid(data.getUuid());
        if(userDataDB.getStatus() == SystemStatus.ADOPTED){
            Blob blob = userDataDB.getPublickey();
            String publicKey = new String(userDataDB.getPublickey().getBytes(1L, (int) blob.length()));

            byte[] publicBytes = Base64.getDecoder().decode(publicKey);
            X509EncodedKeySpec keySpec = new X509EncodedKeySpec(publicBytes);
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            PublicKey pubKey = keyFactory.generatePublic(keySpec);

            boolean verify = verify(Base64.getDecoder().decode(data.getSignature()), pubKey, data.getMsg());

            if (verify){
                return new ResponseEntity<String>(generateJwtToken(data.getUuid()), HttpStatus.OK);
            }
            else{
                return new ResponseEntity<String>("0", HttpStatus.OK);
            }
        }
        else {
            return new ResponseEntity<String>("1", HttpStatus.OK);
        }
    }

    //only for testing
    @PostMapping(value = "/registry/delete", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> delete(@RequestHeader String Authorization) {
        String uuid = getUuidFromJwtToken(Authorization);
        UserDataDB userData = datarepository.findByUuid(uuid);
        datarepository.delete(userData);
        return new ResponseEntity<StatusResponse>(new StatusResponse(ResponseStatus.OK), HttpStatus.OK);
    }

    public static boolean verify(byte[] signature, Key publicKey, String message) throws IllegalBlockSizeException, InvalidKeyException,
            BadPaddingException, NoSuchAlgorithmException, NoSuchPaddingException {
        Cipher cipher = Cipher.getInstance("RSA");
        cipher.init(Cipher.DECRYPT_MODE, publicKey);
        byte [] decryptedMsg = cipher.doFinal(signature);

        byte[] messageBytes = message.getBytes(UTF_8);
        MessageDigest md = MessageDigest.getInstance("SHA-256");

        return Arrays.equals(md.digest(messageBytes), decryptedMsg);
    }

    public String generateJwtToken(String uuid) {
        return JWT.create()
                .withSubject(uuid)
                .withExpiresAt(new Date(System.currentTimeMillis() + EXPIRATION_TIME))
                .sign(HMAC512(SECRET.getBytes()));
    }

    public String getUuidFromJwtToken(String token) {
        return JWT.require(Algorithm.HMAC512(SECRET.getBytes()))
                .build()
                .verify(token.replace(TOKEN_PREFIX, ""))
                .getSubject();
    }

}
