package com.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Order1 {
    private Integer orderId;

    private Integer uid;

    private String uname;

    private String readdressName;

    private String useraddress;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createtime;

    private String createtime1;

    public String getCreatetime1() { // 格式页面显示的时间

        if(createtime != null){
            SimpleDateFormat smf = new SimpleDateFormat("yyyy-MM-dd");
            return smf.format(createtime);
        }else{
            return "";
        }

    }

    private Float cost;


    private String serialnumber;

    private String state;

    private String remark;


    public String getReaddressName() {
        return readdressName;
    }

    public void setReaddressName(String readdressName) {
        this.readdressName = readdressName;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUseraddress() {
        return useraddress;
    }

    public void setUseraddress(String useraddress) {
        this.useraddress = useraddress == null ? null : useraddress.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Float getCost() {
        return cost;
    }

    public void setCost(Float cost) {
        this.cost = cost;
    }

    public String getSerialnumber() {
        return serialnumber;
    }

    public void setSerialnumber(String serialnumber) {
        this.serialnumber = serialnumber == null ? null : serialnumber.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

}