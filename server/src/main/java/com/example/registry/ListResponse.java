package com.example.registry;

import java.util.List;

public class ListResponse {
    private String status;
    private List<UserData> userList;

    public ListResponse(String status, List<UserData> userList){
        this.status = status;
        this.userList = userList;
    }

    public String getStatus(){
        return status;
    }

    public List<UserData> getUserList(){
        return userList;
    }

    public void setFilterStates(String status){
        this.status = status;
    }

    public void setUserList(List<UserData> userList){
        this.userList = userList;
    }
}
