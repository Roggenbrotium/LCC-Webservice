package com.example.registry;

import java.util.List;

public class ListResponse {
    private ResponseStatus status;
    private List<UserDataDB> list;

    public ListResponse(ResponseStatus status, List<UserDataDB> list){
        this.status = status;
        this.list = list;
    }

    public ResponseStatus getStatus(){
        return status;
    }

    public List<UserDataDB> getList(){
        return list;
    }

    public void setFilterStates(ResponseStatus status){
        this.status = status;
    }

    public void setList(List<UserDataDB> list){
        this.list = list;
    }
}
