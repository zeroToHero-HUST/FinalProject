package com.zeroToHero.FinalProject.models.beans;


import java.io.Serializable;
import java.sql.Date;
import java.time.LocalDateTime;

public class Comments implements Serializable {

    private long commentId;
    private String userId;
    private String content;
    private java.sql.Timestamp createdAt;
    private java.sql.Timestamp updatedAt;
    private LocalDateTime dateATime;
    private long blogId;
    private long reviewId;
    private String userName;
    private String dateTime;
    public Comments() {
    }
    public LocalDateTime getDateATime(){
        return dateATime;
    }
    public void setDateATime(LocalDateTime dt){
        dateATime = dt;
    }
    public String getDateTime(){
        return dateTime;
    }

    public void setDateTime(String dateTime) {
        this.dateTime = dateTime;
    }

    public String getUserName(){
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public long getCommentId() {
        return commentId;
    }

    public void setCommentId(long commentId) {
        this.commentId = commentId;
    }


    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }


    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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


    public long getBlogId() {
        return blogId;
    }

    public void setBlogId(long blogId) {
        this.blogId = blogId;
    }


    public long getReviewId() {
        return reviewId;
    }

    public void setReviewId(long reviewId) {
        this.reviewId = reviewId;
    }

}
