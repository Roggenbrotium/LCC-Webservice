package com.liland.lcc.dto;

import java.util.List;

public class UserListResponse{
    private ResponseStatus status;
    private List<UserDataResponse> list;

    //region getter
    public ResponseStatus getStatus() {
        return status;
    }

    public List<UserDataResponse> getList() {
        return list;
    }
    //endregion
    
    //region setter
    public void setStatus(ResponseStatus status) {
        this.status = status;
    }

    public void setList(List<UserDataResponse> list) {
        this.list = list;
    }
    //endregion
}
