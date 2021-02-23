package com.example.registry;

public enum SystemStatus {
    PENDING(0), ADOPTED(1), REJECTED(2);

    public final Integer id;

    private SystemStatus(Integer id) {
        this.id = id;
    }
}
