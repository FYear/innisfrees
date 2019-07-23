package com.entity;

import java.io.Serializable;
import java.util.Date;

public class Activity implements Serializable{
    private Integer activityId;

    private String title;

    private Date maxTime;

    private Date minTime;

    private String content;

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Date getMaxTime() {
        return maxTime;
    }

    public void setMaxTime(Date maxTime) {
        this.maxTime = maxTime;
    }

    public Date getMinTime() {
        return minTime;
    }

    public void setMinTime(Date minTime) {
        this.minTime = minTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    @Override
    public String toString() {
        return "Activity{" +
                "activityId=" + activityId +
                ", title='" + title + '\'' +
                ", maxTime=" + maxTime +
                ", minTime=" + minTime +
                ", content='" + content + '\'' +
                '}';
    }
}