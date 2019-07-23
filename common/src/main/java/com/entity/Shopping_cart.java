package com.entity;

import java.io.Serializable;

public class Shopping_cart implements Serializable {
    private Integer shoppingCartId;

    private Integer uid;

    private Integer pid;

    private Integer num;

    public Integer getShoppingCartId() {
        return shoppingCartId;
    }

    public void setShoppingCartId(Integer shoppingCartId) {
        this.shoppingCartId = shoppingCartId;
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

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "Shopping_cart{" +
                "shoppingCartId=" + shoppingCartId +
                ", uid=" + uid +
                ", pid=" + pid +
                ", num=" + num +
                '}';
    }
}