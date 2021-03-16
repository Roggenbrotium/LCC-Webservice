package com.liland.lcc.dto;

public class LoginRequest {
    private String uuid;
    private String signature;
    private String msg;

    //region getter
    public String getUuid() {
        return uuid;
    }

    public String getSignature() {
        return signature;
    }

    public String getMsg() {
        return msg;
    }
    //endregion
    
    //region setter
    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
    //endregion
}
