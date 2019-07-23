package com.entity;

import java.io.Serializable;

public class Coupon implements Serializable{
    private Integer couponId;

    private Float price;

    private Float maxPrice;

    private String name;

    public Integer getCouponId() {
        return couponId;
    }

    public void setCouponId(Integer couponId) {
        this.couponId = couponId;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Float getMaxPrice() {
        return maxPrice;
    }

    public void setMaxPrice(Float maxPrice) {
        this.maxPrice = maxPrice;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    @Override
    public String toString() {
        return "Coupon{" +
                "couponId=" + couponId +
                ", price=" + price +
                ", maxPrice=" + maxPrice +
                ", name='" + name + '\'' +
                '}';
    }
}