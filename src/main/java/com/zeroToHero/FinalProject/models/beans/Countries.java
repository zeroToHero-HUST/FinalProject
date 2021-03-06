package com.zeroToHero.FinalProject.models.beans;


import java.io.Serializable;

public class Countries implements Serializable {

    private long countryId;
    private String name;
    private String description;

    public Countries() {
    }

    public long getCountryId() {
        return countryId;
    }

    public void setCountryId(long countryId) {
        this.countryId = countryId;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
