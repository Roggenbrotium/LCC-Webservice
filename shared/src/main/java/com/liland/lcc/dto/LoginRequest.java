package com.liland.lcc.dto;

public class LoginRequest {
    private String uuid;
    private String signature;

    public String getUuid(){
        return uuid;
    }

    public String getSignature(){
        return signature;
    }

    public void setUuid(String uuid){
        this.uuid = uuid;
    }

    public void setSignature(String signature){
        this.signature = signature;
    }
}

