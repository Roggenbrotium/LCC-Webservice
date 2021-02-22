package com.example.registry;

public class Update {
    private String uuid;
    private String version;

    public Update(String uuid, String version){
        this.uuid = uuid;
        this.version = version;
    }

    public String getUuid(){
        return uuid;
    }

    public String getVersion(){
        return version;
    }

    public void setUuid(String uuid){
        this.uuid = uuid;
    }

    public void setVersion(String version){
        this.version = version;
    }
}
