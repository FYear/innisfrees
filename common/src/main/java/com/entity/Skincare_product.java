package com.entity;

import java.io.Serializable;

public class Skincare_product implements Serializable {
    private Integer skincareProductId;

    private String name;

    private String iconclass;

    private String img;

    public Integer getSkincareProductId() {
        return skincareProductId;
    }

    public void setSkincareProductId(Integer skincareProductId) {
        this.skincareProductId = skincareProductId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getIconclass() {
        return iconclass;
    }

    public void setIconclass(String iconclass) {
        this.iconclass = iconclass == null ? null : iconclass.trim();
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    @Override
    public String toString() {
        return "Skincare_product{" +
                "skincareProductId=" + skincareProductId +
                ", name='" + name + '\'' +
                ", iconclass='" + iconclass + '\'' +
                ", img='" + img + '\'' +
                '}';
    }
}