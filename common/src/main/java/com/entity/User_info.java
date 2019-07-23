package com.entity;

import java.io.Serializable;
import java.util.Date;

public class User_info implements Serializable {
    private Integer uid;

    private String userName;

    private String pass;

    private String phone;

    private String email;

    private Date birthday;

    private Integer integral;

    private Integer couponId;

    private Integer couponNum;

    private Integer type;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass == null ? null : pass.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getIntegral() {
        return integral;
    }

    public void setIntegral(Integer integral) {
        this.integral = integral;
    }

    public Integer getCouponId() {
        return couponId;
    }

    public void setCouponId(Integer couponId) {
        this.couponId = couponId;
    }

    public Integer getCouponNum() {
        return couponNum;
    }

    public void setCouponNum(Integer couponNum) {
        this.couponNum = couponNum;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
    @Override
    public String toString() {
        return "User_info{" +
                "uid=" + uid +
                ", userName='" + userName + '\'' +
                ", pass='" + pass + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", birthday=" + birthday +
                ", integral=" + integral +
                ", couponId=" + couponId +
                ", couponNum=" + couponNum +
                ", type=" + type +
                '}';
    }
}