package com.zeroToHero.FinalProject.models.beans;


import java.io.Serializable;
import java.util.ArrayList;

public class Tours implements Serializable {

    private long tourId;
    private String title;
    private String description;
    private String images;
    private long duration;
    private double rating;
    private String price;
    private String countryName;
    private ArrayList<Cities> cities;

    public Tours(long tourId, String title, String description, String images, long duration, double rating, String price) {
        this.tourId = tourId;
        this.title = title;
        this.description = description;
        this.images = images;
        this.duration = duration;
        this.rating = rating;
        this.price = price;
    }

    public ArrayList<Cities> getCities() {
        return cities;
    }

    public void setCities(ArrayList<Cities> cities) {
        this.cities = cities;
    }

    public Tours() {
    }

    public long getTourId() {
        return tourId;
    }

    public void setTourId(long tourId) {
        this.tourId = tourId;
    }


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }


    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }


    public long getDuration() {
        return duration;
    }

    public void setDuration(long duration) {
        this.duration = duration;
    }


    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }


    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }
}
