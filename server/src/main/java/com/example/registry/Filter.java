package com.example.registry;

public class Filter {
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
