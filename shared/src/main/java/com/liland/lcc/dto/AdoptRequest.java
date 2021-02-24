package com.liland.lcc.dto;

public class AdoptRequest {
    private String uuid;
    private Boolean adopt;

    public AdoptRequest(String uuid, Boolean adopt){
        this.uuid = uuid;
        this.adopt = adopt;
    }

    public String getUuid(){
        return uuid;
    }

    public Boolean getAdopt(){
        return adopt;
    }

    public void setUuid(String uuid){
        this.uuid = uuid;
    }

    public void setAdopt(Boolean adopt){
        this.adopt = adopt;
    }

}
