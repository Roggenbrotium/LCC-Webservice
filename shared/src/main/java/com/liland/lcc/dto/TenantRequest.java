package com.liland.lcc.dto;

import java.time.LocalDate;

public class TenantRequest{
    
    private int externalid;
    private String name;
    private LocalDate expirationdate;
    
    public int getExternalid() {
        return externalid;
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
    
    public void setName(String name){
        this.name = name;
    }
    
    public void setExpirationdate(LocalDate expirationdate){
        this.expirationdate = expirationdate;
    }
}
