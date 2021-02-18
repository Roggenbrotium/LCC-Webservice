package com.example.registry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;

@RestController
@RequestMapping(method = {RequestMethod.GET, RequestMethod.PUT})
public class AddController {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    private final String uuid = uuid_gen();
    private final UserData data = new UserData(uuid, "publickey", "instancetype", "version", true);

    @GetMapping("/get")
    public ResponseEntity<Object> get() {
        return new ResponseEntity<Object>(data, HttpStatus.OK);
    }

    @PostMapping("/post")
    public ResponseEntity<String> post() {
        return new ResponseEntity<String>(test_sql(), HttpStatus.OK);
    }

    public String test_sql(){
        String sql = "INSERT INTO data (uuid, publickey, instancetype, version, status) VALUES('testuuid', 'pkey', 'typeb', '12.2.5', false);";
        int rows = jdbcTemplate.update(sql);

        if(rows > 0){
            return "succes";
        }
        return "fail";
    }

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
}
