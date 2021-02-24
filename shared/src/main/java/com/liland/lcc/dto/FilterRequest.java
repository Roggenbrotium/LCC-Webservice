package com.liland.lcc.dto;

public class FilterRequest {
    private FilterStates filter;

    /*public Filter(FilterStates filterStates){
        this.filterStates = filterStates;
    }*/

    public FilterStates getFilter(){
        return filter;
    }

    public void setFilter(FilterStates filter){
        this.filter = filter;
    }
}
