package com.example.registry;

public class StatusResponse {
    private ResponseStatus status;

    public StatusResponse(ResponseStatus status){
        this.status = status;
    }

    public ResponseStatus getStatus(){
        return status;
    }

    public void setStatus(ResponseStatus status){
        this.status = status;
    }
}
