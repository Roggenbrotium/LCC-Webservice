package com.liland.lcc.dto;

public enum Roles{
    ROLE_USER(0), ROLE_ADMIN(1);

    public final Integer id;

    Roles(Integer id) {
        this.id = id;
    }
}
