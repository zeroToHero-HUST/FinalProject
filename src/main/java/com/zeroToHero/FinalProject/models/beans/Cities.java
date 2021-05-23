package com.zeroToHero.FinalProject.models.beans;


import java.io.Serializable;

public class Cities implements Serializable {

    private long cityId;
    private String name;
    private long countryId;
    private String description;

    public Cities(long cityId) {
        this.cityId = cityId;
    }

    public long getCityId() {
        return cityId;
    }

    public void setCityId(long cityId) {
        this.cityId = cityId;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public long getCountryId() {
        return countryId;
    }

    public void setCountryId(long countryId) {
        this.countryId = countryId;
    }


    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
