package com.liland.lcc.ws;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "tenants")
public class TenantDB{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private int externalid;
    private int systemid;
    private String name;
    private LocalDate expirationdate;
    
    public Integer getId() {
        return id;
    }
    
    public int getExternalid() {
        return externalid;
    }
    
    public int getSystemid(){
        return systemid;
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
    
    public void setSystemid(int systemid){
        this.systemid = systemid;
    }
    
    public void setName(String name){
        this.name = name;
    }
    
    public void setExpirationdate(LocalDate expirationdate){
        this.expirationdate = expirationdate;
    }
}
