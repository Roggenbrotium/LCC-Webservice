package com.liland.lcc.dto;

public class LoginRequest {
    private String uuid;
    private String signature;
    private String msg;

    /*public LoginRequest(String uuid, String signature, String msg){
        this.uuid = uuid;
        this.signature = signature;
        this.msg = msg;
    }*/

    public String getUuid(){
        return uuid;
    }

    public String getSignature(){
        return signature;
    }

    public String getMsg(){
        return msg;
    }

    public void setUuid(String uuid){
        this.uuid = uuid;
    }

    public void setSignature(String signature){
        this.signature = signature;
    }

    public void setMsg(String msg){
        this.msg = msg;
    }
}
