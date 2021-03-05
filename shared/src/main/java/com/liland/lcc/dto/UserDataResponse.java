package com.liland.lcc.dto;

import java.time.LocalDateTime;

public class UserDataResponse {

    private String uuid;
    private String publickey;
    private InstanceType instancetype;
    private String version;
    private SystemStatus status;
    private LocalDateTime timestamp;

    public UserDataResponse(String uuid, String publickey, InstanceType instancetype, String version, SystemStatus status, LocalDateTime timestamp){
        this.uuid = uuid;
        this.publickey = publickey;
        this.instancetype = instancetype;
        this.version = version;
        this.status = status;
        this.timestamp = timestamp;
    }

    public String getUuid(){
        return uuid;
    }

    public String getPublickey(){
        return publickey;
    }

    public InstanceType getInstancetype(){
        return instancetype;
    }

    public String getVersion(){
        return version;
    }

    public SystemStatus getStatus(){
        return status;
    }

    public LocalDateTime getTimestamp(){
        return timestamp;
    }

    public void setUuid(String uuid){
        this.uuid = uuid;
    }

    public void setPublickey(String publickey){
        this.publickey = publickey;
    }

    public void setInstancetype(InstanceType instancetype){
        this.instancetype = instancetype;
    }

    public void setVersion(String version){
        this.version = version;
    }

    public void setStatus(SystemStatus status){
        this.status = status;
    }

    public void setTimestamp(LocalDateTime timestamp){
        this.timestamp = timestamp;
    }
}
