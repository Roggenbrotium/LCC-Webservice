package com.liland.lcc.dto;

public class UpdateRequest {
    private String uuid;
    private String version;

    //region getter
    public String getUuid() {
        return uuid;
    }

    public String getVersion() {
        return version;
    }
    //endregion
    
    //region setter
    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public void setVersion(String version) {
        this.version = version;
    }
    //endregion
}
