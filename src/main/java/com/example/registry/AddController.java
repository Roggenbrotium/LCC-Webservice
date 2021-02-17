package com.example.registry;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;

@RestController
@RequestMapping(method = {RequestMethod.GET, RequestMethod.PUT})
public class AddController {

    private final String uuid = uuid_gen();
    private final UserData data = new UserData(uuid, "publickey", "instancetype", "version", true);

    @GetMapping("/get")
    public ResponseEntity<Object> get() {
        return new ResponseEntity<Object>(data, HttpStatus.OK);
    }

    @PostMapping("/post")
    public ResponseEntity<String> post() {
        return new ResponseEntity<String>("POST Response", HttpStatus.OK);
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
