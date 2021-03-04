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
public class WebserviceController {

    @Autowired
    private DataRepository datarepository;

    //saves a new system to the database
    //does not require token
    @PostMapping(value = "/registry/add", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> add(@RequestBody UserDataRequest data) {
        if (data.getUuid().length() != 36) {
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.INVALID_REQUEST));
        } else {
            boolean exists = datarepository.existsByUuid(data.getUuid());
            if (!exists) {
                UserDataDB userDataDB = new UserDataDB();
                userDataDB.setUuid(data.getUuid());
                byte[] bytes = data.getPublickey().getBytes(StandardCharsets.UTF_8);
                Blob blob = BlobProxy.generateProxy(bytes);
                userDataDB.setPublickey(blob);
                userDataDB.setInstancetype(data.getInstancetype());
                userDataDB.setVersion(data.getVersion());
                userDataDB.setStatus(SystemStatus.PENDING);
                datarepository.save(userDataDB);
                return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
            } else {
                return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.KNOWN_UUID));
            }
        }
    }

    //accepts or rejects a system
    @PostMapping(value = "/registry/adopt", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> adopt(@RequestBody AdoptRequest data) {
        if (data.getUuid().length() != 36) {
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.INVALID_REQUEST));
        } else {
            boolean exists = datarepository.existsByUuid(data.getUuid());
            if (!exists) {
                return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.UNKNOWN_UUID));
            } else {
                UserDataDB userData = datarepository.findByUuid(data.getUuid());
                if (data.getAdopt()) {
                    userData.setStatus(SystemStatus.ADOPTED);
                } else {
                    userData.setStatus(SystemStatus.REJECTED);
                }
                datarepository.save(userData);
                return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
            }
        }
    }

    //updates version of a system in the database
    @PostMapping(value = "/registry/update", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> update(@RequestBody UpdateRequest data, @RequestHeader String Authorization) {
        String uuid = getUuidFromJwtToken(Authorization);
        UserDataDB userData = datarepository.findByUuid(uuid);
        userData.setVersion(data.getVersion());
        datarepository.save(userData);
        return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
    }

    //lists all systems in the database with optional filters
    @PostMapping(value = "/registry/list", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<ListResponse> list(@RequestBody FilterRequest filter) throws SQLException {
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

        return ResponseEntity.ok().body(new ListResponse(ResponseStatus.OK, userDataResponses));
    }

    //saves/updates the timestamp of a specific system in the database
    @PostMapping(value = "/registry/heartbeat", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> heartbeat(@RequestHeader String Authorization) {
        UserDataDB userData = datarepository.findByUuid(getUuidFromJwtToken(Authorization));
        if (userData.getStatus() != SystemStatus.ADOPTED) {
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.NOT_ADOPTED));
        } else {
            userData.setTimestamp(LocalDateTime.now().withNano(0));
            datarepository.save(userData);
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
        }
    }

    //verifies the received signature and creates JWT-token for later usage
    @PostMapping(value = "/registry/login", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<StatusResponse> login(@RequestBody LoginRequest data) throws Exception {
        UserDataDB userDataDB = datarepository.findByUuid(data.getUuid());
        if (userDataDB.getStatus() == SystemStatus.ADOPTED) {
            Blob blob = userDataDB.getPublickey();
            String publicKey = new String(userDataDB.getPublickey().getBytes(1L, (int) blob.length()));

            byte[] publicBytes = Base64.getDecoder().decode(publicKey);
            X509EncodedKeySpec keySpec = new X509EncodedKeySpec(publicBytes);
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            PublicKey pubKey = keyFactory.generatePublic(keySpec);

            boolean verify = verify(Base64.getDecoder().decode(data.getSignature()), pubKey, data.getMsg());

            if (verify) {
                HttpHeaders httpHeaders = new HttpHeaders();
                httpHeaders.set("Authentication", generateJwtToken(data.getUuid()));
                return ResponseEntity.ok().headers(httpHeaders).body(new StatusResponse(ResponseStatus.OK));
            } else {
                return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.INVALID_REQUEST));
            }
        } else {
            return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.NOT_ADOPTED));
        }
    }

    //deletes a specific system from the database
    //only for testing
    @PostMapping(value = "/registry/delete", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> delete(@RequestHeader String Authorization) {
        String uuid = getUuidFromJwtToken(Authorization);
        UserDataDB userData = datarepository.findByUuid(uuid);
        datarepository.delete(userData);
        return ResponseEntity.ok().body(new StatusResponse(ResponseStatus.OK));
    }

    //decrypts the received signature and compares the newly created hash with the decrypted one
    public static boolean verify(byte[] signature, Key publicKey, String message) throws IllegalBlockSizeException, InvalidKeyException,
            BadPaddingException, NoSuchAlgorithmException, NoSuchPaddingException {
        Cipher cipher = Cipher.getInstance("RSA");
        cipher.init(Cipher.DECRYPT_MODE, publicKey);
        byte[] decryptedMsg = cipher.doFinal(signature);

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
