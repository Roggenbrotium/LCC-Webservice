package com.liland.lcc.dto;

import java.util.List;

public class TenantListResponse{
    private ResponseStatus status;
    private List<TenantResponse> list;

    public TenantListResponse(ResponseStatus status, List<TenantResponse> list) {
        this.status = status;
        this.list = list;
    }

    public ResponseStatus getStatus() {
        return status;
    }

    public List<TenantResponse> getList() {
        return list;
    }

    public void setFilterStates(ResponseStatus status) {
        this.status = status;
    }

    public void setList(List<TenantResponse> list) {
        this.list = list;
    }
}
