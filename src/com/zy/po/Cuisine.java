package com.zy.po;

public class Cuisine {
    private Integer id;

    private String cuisine;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCuisine() {
        return cuisine;
    }

    public void setCuisine(String cuisine) {
        this.cuisine = cuisine == null ? null : cuisine.trim();
    }
}