package com.example.registry;

import org.apache.catalina.User;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.security.*;
import java.util.Base64;

@RestController
@RequestMapping(method = {RequestMethod.GET, RequestMethod.PUT})
public class WebserviceController {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Autowired
    private DataRepository datarepository;
    private final String uuid = uuid_gen();
    private final String pkey = key_gen();
    private final UserData data = new UserData(uuid, pkey, "instancetype", "version", true);

    public WebserviceController() throws NoSuchAlgorithmException {
    }

    @GetMapping("/registry/adopt")
    public ResponseEntity<Object> get() {
        return new ResponseEntity<Object>(data, HttpStatus.OK);
    }

    @PostMapping("/registry/add")
    public ResponseEntity<String> save() {
        try{
            datarepository.save(data);
            datarepository.flush();
        }
        catch (Exception e){
            return new ResponseEntity<String>("error: " + e.getMessage(), HttpStatus.OK);
        }
        return new ResponseEntity<String>("success", HttpStatus.OK);
    }

    /*public String test_sql(){
        String sql = "INSERT INTO data (uuid, publickey, instancetype, version, status) VALUES('testuuid', 'pkey', 'typeb', '12.2.5', false);";
        int rows = jdbcTemplate.update(sql);

        if(rows > 0){
            return "succes";
        }
        return "error";
    }*/

    public String uuid_gen(){
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

        return DigestUtils.sha256Hex(Base64.getEncoder().encodeToString(pub_key.getEncoded()));
    }
}
