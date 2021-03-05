package com.liland.lcc.dto;

public enum InstanceType {
    IVENTCLOUD(0), IGOV_APP(1);

    public final Integer id;

    InstanceType(Integer id) {
        this.id = id;
    }
}
