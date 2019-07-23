package com.entity;

import java.io.Serializable;

public class Detailed_product implements Serializable {
    private Integer detailedProductId;

    private Integer pid;

    private String skin;

    private String component;

    private String img;

    public Integer getDetailedProductId() {
        return detailedProductId;
    }

    public void setDetailedProductId(Integer detailedProductId) {
        this.detailedProductId = detailedProductId;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getSkin() {
        return skin;
    }

    public void setSkin(String skin) {
        this.skin = skin == null ? null : skin.trim();
    }

    public String getComponent() {
        return component;
    }

    public void setComponent(String component) {
        this.component = component == null ? null : component.trim();
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    @Override
    public String toString() {
        return "Detailed_product{" +
                "detailedProductId=" + detailedProductId +
                ", pid=" + pid +
                ", skin='" + skin + '\'' +
                ", component='" + component + '\'' +
                ", img='" + img + '\'' +
                '}';
    }
}