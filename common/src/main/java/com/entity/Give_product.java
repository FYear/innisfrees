package com.entity;

import java.io.Serializable;

public class Give_product implements Serializable {
    private Integer giveProductId;

    private String name;

    private Integer num;

    private String img;

    public Integer getGiveProductId() {
        return giveProductId;
    }

    public void setGiveProductId(Integer giveProductId) {
        this.giveProductId = giveProductId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    @Override
    public String toString() {
        return "Give_product{" +
                "giveProductId=" + giveProductId +
                ", name='" + name + '\'' +
                ", num=" + num +
                ", img='" + img + '\'' +
                '}';
    }
}