package com.liland.lcc.dto;

public enum InstanceType {
    IVENTCLOUD(1), IGOV_APP(2);

    public final Integer id;

    InstanceType(Integer id) {
        this.id = id;
    }
}
