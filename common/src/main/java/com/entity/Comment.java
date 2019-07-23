package com.entity;

import java.io.Serializable;
import java.util.Date;

public class Comment implements Serializable {
    private Integer commentId;

    private Integer uid;

    private Integer pid;

    private String fraction;

    private Date day;

    private String content;

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getFraction() {
        return fraction;
    }

    public void setFraction(String fraction) {
        this.fraction = fraction == null ? null : fraction.trim();
    }

    public Date getDay() {
        return day;
    }

    public void setDay(Date day) {
        this.day = day;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    @Override
    public String toString() {
        return "Comment{" +
                "commentId=" + commentId +
                ", uid=" + uid +
                ", pid=" + pid +
                ", fraction='" + fraction + '\'' +
                ", day=" + day +
                ", content='" + content + '\'' +
                '}';
    }
}