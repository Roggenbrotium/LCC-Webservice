package com.liland.lcc.dto;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class TenantResponse{

    
    private int externalid;
    private String uuid;
    private String name;
    private LocalDate expirationdate;
    
    public TenantResponse(int externalid, String uuid, String name, LocalDate expirationdate){
        this.externalid = externalid;
        this.uuid = uuid;
        this.name = name;
        this.expirationdate = expirationdate;
    }
    
    public int getExternalid() {
        return externalid;
    }
    
    public String getUuid(){
        return uuid;
    }
    
    public String getName(){
        return name;
    }
    
    public LocalDate getExpirationdate(){
        return expirationdate;
    }

    public void setExternalid(int externalid) {
        this.externalid = externalid;
    }
    
    public void setUuid(String uuid){
        this.uuid = uuid;
    }
    
    public void setName(String name){
        this.name = name;
    }
    
    public void setExpirationdate(LocalDate expirationdate){
        this.expirationdate = expirationdate;
    }
}
