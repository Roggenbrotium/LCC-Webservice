package com.liland.lcc.dto;

public class AdoptRequest {
    private String uuid;
    private Boolean adopt;

    //region getter
    public String getUuid() {
        return uuid;
    }

    public Boolean getAdopt() {
        return adopt;
    }
    //endregion

    //region setter
    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public void setAdopt(Boolean adopt) {
        this.adopt = adopt;
    }
    //endregion
}
