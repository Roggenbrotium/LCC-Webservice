package com.liland.lcc.dto;

import java.util.List;

public class TenantListResponse{
    private List<TenantResponse> list;

    public TenantListResponse(List<TenantResponse> list){
        this.list = list;
    }

    public List<TenantResponse> getList() {
        return list;
    }

    public void setList(List<TenantResponse> list) {
        this.list = list;
    }
}
