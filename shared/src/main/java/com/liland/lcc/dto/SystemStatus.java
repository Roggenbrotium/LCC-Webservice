package com.liland.lcc.dto;

public enum SystemStatus {
    PENDING(0), ADOPTED(1), REJECTED(2);

    public final Integer id;

    SystemStatus(Integer id) {
        this.id = id;
    }
}
