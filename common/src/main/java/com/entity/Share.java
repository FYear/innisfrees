package com.entity;

import java.io.Serializable;
import java.util.Date;

public class Share implements Serializable {
    private Integer shareId;

    private Integer uid;

    private Integer pid;

    private String title;

    private String fraction;

    private Date day;

    private String content;

    private String img;

    public Integer getShareId() {
        return shareId;
    }

    public void setShareId(Integer shareId) {
        this.shareId = shareId;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    @Override
    public String toString() {
        return "Share{" +
                "shareId=" + shareId +
                ", uid=" + uid +
                ", pid=" + pid +
                ", title='" + title + '\'' +
                ", fraction='" + fraction + '\'' +
                ", day=" + day +
                ", content='" + content + '\'' +
                ", img='" + img + '\'' +
                '}';
    }
}