package com.example.registry;

public enum InstanceType {
    IVENTCLOUD(1), IGOV_APP(2);

    public final Integer id;

    private InstanceType(Integer id) {
        this.id = id;
    }
}
