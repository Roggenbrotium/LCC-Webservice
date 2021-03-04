package com.liland.lcc.dto;

import java.util.List;

public class ListResponse {
    private ResponseStatus status;
    private List<UserDataResponse> list;

    public ListResponse(ResponseStatus status, List<UserDataResponse> list) {
        this.status = status;
        this.list = list;
    }

    public ResponseStatus getStatus() {
        return status;
    }

    public List<UserDataResponse> getList() {
        return list;
    }

    public void setFilterStates(ResponseStatus status) {
        this.status = status;
    }

    public void setList(List<UserDataResponse> list) {
        this.list = list;
    }
}
