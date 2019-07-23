package com.entity;

import java.io.Serializable;

public class Product_relation implements Serializable {
    private Integer productRelationId;

    private String name;

    private Integer parentid;

    private Integer type;

    private String img;

    public Integer getProductRelationId() {
        return productRelationId;
    }

    public void setProductRelationId(Integer productRelationId) {
        this.productRelationId = productRelationId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getParentid() {
        return parentid;
    }

    public void setParentid(Integer parentid) {
        this.parentid = parentid;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    @Override
    public String toString() {
        return "Product_relation{" +
                "productRelationId=" + productRelationId +
                ", name='" + name + '\'' +
                ", parentid=" + parentid +
                ", type=" + type +
                ", img='" + img + '\'' +
                '}';
    }
}