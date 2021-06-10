package com.zeroToHero.FinalProject.models.beans;

import java.io.Serializable;
import java.sql.Timestamp;

public class Blogs implements Serializable {

    private long blogId;
    private String userId;
    private java.sql.Timestamp createdAt;
    private java.sql.Timestamp updatedAt;
    private String content;
    private String images;
    private String title;
    private String date;
    private String month;

    public Blogs(long blogId, String userId, Timestamp createdAt, Timestamp updatedAt, String content, String images, String title, String date, String month) {
        this.blogId = blogId;
        this.userId = userId;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.content = content;
        this.images = images;
        this.title = title;
        this.date = date;
        this.month = month;
    }

    public String getDate(){
        return date;
    }
    public void setDate(String date){
        this.date = date;
    }
    public String getMonth(){
        return  month;
    }
    public void setMonth(String month){
        this.month = month;
    }

    public Blogs() {
    }

    public long getBlogId() {
        return blogId;
    }

    public void setBlogId(long blogId) {
        this.blogId = blogId;
    }


    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }


    public java.sql.Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(java.sql.Timestamp createdAt) {
        this.createdAt = createdAt;
    }


    public java.sql.Timestamp getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(java.sql.Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }


    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }


    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }
    public void setTitle(String title){
        this.title = title;
    }
    public String getTitle(){
        return title;

    }

}
