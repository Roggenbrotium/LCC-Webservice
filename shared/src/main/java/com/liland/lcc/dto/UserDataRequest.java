package com.liland.lcc.dto;

public class UserDataRequest {

    private String uuid;
    private String publickey;
    private String instancetype;
    private String version;

    //Wants default Constructor for some reason
    /*public UserData(String uuid, String publickey, String instancetype, String version, int status){
        this.uuid = uuid;
        this.publickey = publickey;
        this.instancetype = instancetype;
        this.version = version;
        this.status = status;
    }*/

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

    public void setUuid(String uuid){
        this.uuid = uuid;
    }

    public void setPublickey(String publickey){
        this.publickey = publickey;
    }

    public void setInstancetype(String instancetype){
        this.instancetype = instancetype;
    }

    public void setVersion(String version){
        this.version = version;
    }
}
