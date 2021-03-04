package com.liland.lcc.dto;

public class FilterStates {
    private SystemStatus status;
    private String instancetype;

    public SystemStatus getStatus() {
        return status;
    }

    public String getInstancetype() {
        return instancetype;
    }

    public void setStatus(SystemStatus status) {
        this.status = status;
    }

    public void setInstancetype(String instancetype) {
        this.instancetype = instancetype;
    }
}
