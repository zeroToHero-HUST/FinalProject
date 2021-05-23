package com.zeroToHero.FinalProject.models.beans;


import java.io.Serializable;

public class Destinations implements Serializable {

    private long tourId;
    private long cityId;

    public Destinations() {
    }

    public long getTourId() {
        return tourId;
    }

    public void setTourId(long tourId) {
        this.tourId = tourId;
    }


    public long getCityId() {
        return cityId;
    }

    public void setCityId(long cityId) {
        this.cityId = cityId;
    }

}
