package com.example.registry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.security.*;
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
    public ResponseEntity<String> add(@RequestBody UserData data) {
        if (data.getUuid().length() != 36){
            return new ResponseEntity<String>(ResponseStatus.INVALID_REQUEST.toString(), HttpStatus.OK);
        }
        else {
            boolean exists = datarepository.existsByUuid(data.getUuid());
            if (!exists){
                data.setStatus(0);
                datarepository.save(data);
                datarepository.flush();
                return new ResponseEntity<String>(ResponseStatus.OK.toString(), HttpStatus.OK);
            }
            else {
                return new ResponseEntity<String>(ResponseStatus.KNOWN_UUID.toString(), HttpStatus.OK);
            }
        }
    }

    @PostMapping(value = "/registry/adopt", consumes = "application/json", produces = "application/json")
    public ResponseEntity<String> adopt(@RequestBody Adopt data) {
        if (data.getUuid().length() != 36){
            return new ResponseEntity<String>(ResponseStatus.INVALID_REQUEST.toString(), HttpStatus.OK);
        }
        else {
            boolean exists = datarepository.existsByUuid(data.getUuid());
            if (!exists){
                return new ResponseEntity<String>(ResponseStatus.UNKNOWN_UUID.toString(), HttpStatus.OK);
            }
            else {
                UserData userData = datarepository.findByUuid(data.getUuid());
                if(data.getAdopt()){
                    userData.setStatus(1);
                }
                else {
                    userData.setStatus(2);
                }
                datarepository.save(userData);
                return new ResponseEntity<String>(ResponseStatus.OK.toString(), HttpStatus.OK);
            }
        }
    }

    @PostMapping(value = "/registry/update", consumes = "application/json", produces = "application/json")
    public ResponseEntity<String> update(@RequestBody Update data) {
        if (data.getUuid().length() != 36){
            return new ResponseEntity<String>(ResponseStatus.INVALID_REQUEST.toString(), HttpStatus.OK);
        }
        else {
            boolean exists = datarepository.existsByUuid(data.getUuid());
            if (!exists){
                return new ResponseEntity<String>(ResponseStatus.UNKNOWN_UUID.toString(), HttpStatus.OK);
            }
            else {
                UserData userData = datarepository.findByUuid(data.getUuid());
                userData.setVersion(data.getVersion());
                datarepository.save(userData);
                return new ResponseEntity<String>(ResponseStatus.OK.toString(), HttpStatus.OK);
            }
        }
    }

    @PostMapping(value = "/registry/list", consumes = "application/json", produces = "application/json")
    public ResponseEntity<ListResponse> list(@RequestBody Filter filter) {
        String instancetype = filter.getFilter().getInstancetype();
        String status = filter.getFilter().getStatus();
        List<UserData> userData;

        if(status.equals(SystemStatus.PENDING.toString())){
            userData = datarepository.findByInstancetypeAndStatus(instancetype, 0);
        }
        else if(status.equals(SystemStatus.ADOPTED.toString())){
            userData = datarepository.findByInstancetypeAndStatus(instancetype, 1);
        }
        else if(status.equals(SystemStatus.REJECTED.toString())){
            userData = datarepository.findByInstancetypeAndStatus(instancetype, 2);
        }
        else{
            userData = datarepository.findByInstancetype(instancetype);
        }

        return new ResponseEntity<ListResponse>(new ListResponse(ResponseStatus.OK.toString(), userData), HttpStatus.OK);
    }

    @PostMapping(value = "/registry/heartbeat", consumes = "application/json", produces = "application/json")
    public ResponseEntity<String> heartbeat(@RequestBody UserData data) {
        UserData userData = datarepository.findByUuid(data.getUuid());
        if (userData.getStatus() == 0){
            return new ResponseEntity<String>(ResponseStatus.NOT_ADOPTED.toString(), HttpStatus.OK);
        }
        //??? PENDING_CHANGES
        else if(userData == null){
            return new ResponseEntity<String>(ResponseStatus.PENDING_CHANGES.toString(), HttpStatus.OK);
        }
        else {
            userData.setTimestamp(data.getTimestamp());
            datarepository.save(userData);
            return new ResponseEntity<String>(ResponseStatus.OK.toString(), HttpStatus.OK);
        }
    }

    public String uuid_gen() {
        try{
            Process serialnum = Runtime.getRuntime().exec("sudo cat /sys/class/dmi/id/product_uuid");
            BufferedReader reader = new BufferedReader(new InputStreamReader(serialnum.getInputStream()));
            return reader.readLine().trim();
        }
        catch (Exception e){
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
