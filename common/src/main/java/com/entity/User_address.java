package com.entity;

import java.io.Serializable;

public class User_address implements Serializable {
    private Integer userAddressId;

    private Integer uid;

    private String address;

    private Integer isdefault;

    private String remark;

    private String readdressUser;

    private Integer readdressPhone;

    public Integer getUserAddressId() {
        return userAddressId;
    }

    public void setUserAddressId(Integer userAddressId) {
        this.userAddressId = userAddressId;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getIsdefault() {
        return isdefault;
    }

    public void setIsdefault(Integer isdefault) {
        this.isdefault = isdefault;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getReaddressUser() {
        return readdressUser;
    }

    public void setReaddressUser(String readdressUser) {
        this.readdressUser = readdressUser == null ? null : readdressUser.trim();
    }

    public Integer getReaddressPhone() {
        return readdressPhone;
    }

    public void setReaddressPhone(Integer readdressPhone) {
        this.readdressPhone = readdressPhone;
    }

    @Override
    public String toString() {
        return "User_address{" +
                "userAddressId=" + userAddressId +
                ", uid=" + uid +
                ", address='" + address + '\'' +
                ", isdefault=" + isdefault +
                ", remark='" + remark + '\'' +
                ", readdressUser='" + readdressUser + '\'' +
                ", readdressPhone=" + readdressPhone +
                '}';
    }
}