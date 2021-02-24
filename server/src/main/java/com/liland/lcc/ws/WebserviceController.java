package com.liland.lcc.ws;

import com.liland.lcc.dto.*;
import com.liland.lcc.dto.ResponseStatus;
import org.hibernate.engine.jdbc.BlobProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.security.*;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

@RestController
@RequestMapping(method = {RequestMethod.GET, RequestMethod.PUT})
public class WebserviceController {

    @Autowired
    private DataRepository datarepository;

    public WebserviceController() throws NoSuchAlgorithmException {
    }

    @PostMapping(value = "/registry/add", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> add(@RequestBody UserDataRequest data){
        if (data.getUuid().length() != 36){
            return new ResponseEntity<StatusResponse>(new StatusResponse(com.liland.lcc.dto.ResponseStatus.INVALID_REQUEST), HttpStatus.OK);
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
                return new ResponseEntity<StatusResponse>(new StatusResponse(com.liland.lcc.dto.ResponseStatus.OK), HttpStatus.OK);
            } else {
                return new ResponseEntity<StatusResponse>(new StatusResponse(com.liland.lcc.dto.ResponseStatus.KNOWN_UUID), HttpStatus.OK);
            }
        }
    }

    @PostMapping(value = "/registry/adopt", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> adopt(@RequestBody AdoptRequest data) {
        if (data.getUuid().length() != 36){
            return new ResponseEntity<StatusResponse>(new StatusResponse(com.liland.lcc.dto.ResponseStatus.INVALID_REQUEST), HttpStatus.OK);
        } else {
            boolean exists = datarepository.existsByUuid(data.getUuid());
            if (!exists){
                return new ResponseEntity<StatusResponse>(new StatusResponse(com.liland.lcc.dto.ResponseStatus.UNKNOWN_UUID), HttpStatus.OK);
            } else {
                UserDataDB userData = datarepository.findByUuid(data.getUuid());
                if(data.getAdopt()){
                    userData.setStatus(SystemStatus.ADOPTED);
                } else {
                    userData.setStatus(SystemStatus.REJECTED);
                }
                datarepository.save(userData);
                return new ResponseEntity<StatusResponse>(new StatusResponse(com.liland.lcc.dto.ResponseStatus.OK), HttpStatus.OK);
            }
        }
    }

    @PostMapping(value = "/registry/update", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> update(@RequestBody UpdateRequest data) {
        if (data.getUuid().length() != 36){
            return new ResponseEntity<StatusResponse>(new StatusResponse(com.liland.lcc.dto.ResponseStatus.INVALID_REQUEST), HttpStatus.OK);
        } else {
            boolean exists = datarepository.existsByUuid(data.getUuid());
            if (!exists){
                return new ResponseEntity<StatusResponse>(new StatusResponse(com.liland.lcc.dto.ResponseStatus.UNKNOWN_UUID), HttpStatus.OK);
            } else {
                UserDataDB userData = datarepository.findByUuid(data.getUuid());
                userData.setVersion(data.getVersion());
                datarepository.save(userData);
                return new ResponseEntity<StatusResponse>(new StatusResponse(com.liland.lcc.dto.ResponseStatus.OK), HttpStatus.OK);
            }
        }
    }

    @PostMapping(value = "/registry/list", consumes = "application/json", produces = "application/json")
    @Transactional
    public ResponseEntity<ListResponse> list(@RequestBody FilterRequest filter) throws SQLException {
        String instancetype = filter.getFilter().getInstancetype();
        SystemStatus status = filter.getFilter().getStatus();
        List<UserDataDB> userData;
        List<UserDataResponse> userDataResponses = new ArrayList<>();

        if(status != null){
            if(!instancetype.isEmpty()){
                userData = datarepository.findByInstancetypeAndStatus(instancetype, status);
            } else {
                userData = datarepository.findByStatus(status);
            }
        } else{
            if(!instancetype.isEmpty()) {
                userData = datarepository.findByInstancetype(instancetype);
            } else {
                userData = datarepository.findAll();
            }
        }

        for (UserDataDB userDataDB: userData) {
            Blob blob = userDataDB.getPublickey();
            String pkey = new String(userDataDB.getPublickey().getBytes(1L, (int) blob.length()));
            userDataResponses.add(new UserDataResponse(userDataDB.getUuid(), pkey, userDataDB.getInstancetype(), userDataDB.getVersion(),
                    userDataDB.getStatus(), userDataDB.getTimestamp()));
        }

        return new ResponseEntity<ListResponse>(new ListResponse(com.liland.lcc.dto.ResponseStatus.OK, userDataResponses), HttpStatus.OK);
    }

    @PostMapping(value = "/registry/heartbeat", consumes = "application/json", produces = "application/json")
    public ResponseEntity<StatusResponse> heartbeat(@RequestBody UserDataRequest data) throws ParseException {
        UserDataDB userData = datarepository.findByUuid(data.getUuid());
        if (userData.getStatus() != SystemStatus.ADOPTED){
            return new ResponseEntity<StatusResponse>(new StatusResponse(com.liland.lcc.dto.ResponseStatus.NOT_ADOPTED), HttpStatus.OK);
        } else {
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
            LocalDateTime now = LocalDateTime.now();
            userData.setTimestamp(new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").parse(dtf.format(now)));
            datarepository.save(userData);
            return new ResponseEntity<StatusResponse>(new StatusResponse(ResponseStatus.OK), HttpStatus.OK);
        }
    }

    public String uuid_gen() {
        try{
            Process serialnum = Runtime.getRuntime().exec("sudo cat /sys/class/dmi/id/product_uuid");
            BufferedReader reader = new BufferedReader(new InputStreamReader(serialnum.getInputStream()));
            return reader.readLine().trim();
        } catch (Exception e){
            return e.getMessage();
        }
    }

    public String key_gen() throws NoSuchAlgorithmException {
            KeyPairGenerator kg= KeyPairGenerator.getInstance("RSA");
            kg.initialize(2048);
            KeyPair kp = kg.generateKeyPair();
            Key pub_key = kp.getPublic();

            return Base64.getEncoder().encodeToString(pub_key.getEncoded());
    }
}
