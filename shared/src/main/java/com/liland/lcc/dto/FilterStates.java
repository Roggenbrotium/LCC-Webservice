package com.liland.lcc.dto;

import com.fasterxml.jackson.annotation.JsonGetter;
import com.fasterxml.jackson.annotation.JsonSetter;

public class FilterStates {
    private SystemStatus status;
    private String instancetype;

    /*public FilterStates(String status, String instancetype){
        this.status = status;
        this.instancetype = instancetype;
    }*/

    @JsonGetter("status")
    public SystemStatus getStatus(){
        return status;
    }

    @JsonGetter("instancetype")
    public String getInstancetype(){
        return instancetype;
    }

    @JsonSetter("status")
    public void setStatus(SystemStatus status){
        this.status = status;
    }

    @JsonSetter("instancetype")
    public void setInstancetype(String instancetype){
        this.instancetype = instancetype;
    }
}
