package com.example.registry;

import javax.persistence.*;

@Entity
@Table(name = "data")
public class UserData {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private final String uuid;
    private final String publickey;
    private final String instancetype;
    private final String version;
    private final Boolean status;

    public UserData(String uuid, String publickey, String instancetype, String version, Boolean status){
        this.uuid = uuid;
        this.publickey = publickey;
        this.instancetype = instancetype;
        this.version = version;
        this.status = status;
    }

    public String getUuid(){
        return uuid;
    }

    public String getPublickey(){
        return publickey;
    }

    public String getInstancetype(){
        return instancetype;
    }

    public String getVersion(){
        return version;
    }

    public boolean getStatus(){
        return status;
    }
}
