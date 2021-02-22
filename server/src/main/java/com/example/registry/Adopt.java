package com.example.registry;

public class Adopt {
    private String uuid;
    private Boolean adopt;

    public Adopt(String uuid, Boolean adopt){
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
