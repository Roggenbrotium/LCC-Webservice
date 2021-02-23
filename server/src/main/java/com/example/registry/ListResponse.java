package com.example.registry;

import java.util.List;

public class ListResponse {
    private ResponseStatus status;
    private List<UserDataDB> userList;

    public ListResponse(ResponseStatus status, List<UserDataDB> userList){
        this.status = status;
        this.userList = userList;
    }

    public ResponseStatus getStatus(){
        return status;
    }

    public List<UserDataDB> getUserList(){
        return userList;
    }

    public void setFilterStates(ResponseStatus status){
        this.status = status;
    }

    public void setUserList(List<UserDataDB> userList){
        this.userList = userList;
    }
}
