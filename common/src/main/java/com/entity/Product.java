package com.entity;

import java.io.Serializable;
import java.util.Date;

public class Product implements Serializable  {
    private Integer pid;

    private String productId;

    private String name;

    @Override
    public String toString() {
        return "Product{" +
                "pid=" + pid +
                ", productId='" + productId + '\'' +
                ", name='" + name + '\'' +
                ", title='" + title + '\'' +
                ", day=" + day +
                ", salesVolume=" + salesVolume +
                ", state1='" + state1 + '\'' +
                ", price=" + price +
                ", discountPrice=" + discountPrice +
                ", giveProductId=" + giveProductId +
                ", state=" + state +
                ", volume='" + volume + '\'' +
                ", categorylevel1id=" + categorylevel1id +
                ", categorylevel2id=" + categorylevel2id +
                ", skincareId=" + skincareId +
                ", effect='" + effect + '\'' +
                ", productImg='" + productImg + '\'' +
                '}';
    }

    private String title;

    private Date day;

    private Integer salesVolume;

    private String state1;

    private Float price;

    private Float discountPrice;

    private Integer giveProductId;

    private Integer state;

    private String volume;

    private Integer categorylevel1id;

    private Integer categorylevel2id;

    private Integer skincareId;

    private String effect;

    private String productImg;
    private Integer gnum;
    private String gname;
    private String gimg;

    public Integer getGnum() {
        return gnum;
    }

    public void setGnum(Integer gnum) {
        this.gnum = gnum;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public String getGimg() {
        return gimg;
    }

    public void setGimg(String gimg) {
        this.gimg = gimg;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId == null ? null : productId.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Date getDay() {
        return day;
    }

    public void setDay(Date day) {
        this.day = day;
    }

    public Integer getSalesVolume() {
        return salesVolume;
    }

    public void setSalesVolume(Integer salesVolume) {
        this.salesVolume = salesVolume;
    }

    public String getState1() {
        return state1;
    }

    public void setState1(String state1) {
        this.state1 = state1 == null ? null : state1.trim();
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Float getDiscountPrice() {
        return discountPrice;
    }

    public void setDiscountPrice(Float discountPrice) {
        this.discountPrice = discountPrice;
    }

    public Integer getGiveProductId() {
        return giveProductId;
    }

    public void setGiveProductId(Integer giveProductId) {
        this.giveProductId = giveProductId;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getVolume() {
        return volume;
    }

    public void setVolume(String volume) {
        this.volume = volume == null ? null : volume.trim();
    }

    public Integer getCategorylevel1id() {
        return categorylevel1id;
    }

    public void setCategorylevel1id(Integer categorylevel1id) {
        this.categorylevel1id = categorylevel1id;
    }

    public Integer getCategorylevel2id() {
        return categorylevel2id;
    }

    public void setCategorylevel2id(Integer categorylevel2id) {
        this.categorylevel2id = categorylevel2id;
    }

    public Integer getSkincareId() {
        return skincareId;
    }

    public void setSkincareId(Integer skincareId) {
        this.skincareId = skincareId;
    }

    public String getEffect() {
        return effect;
    }

    public void setEffect(String effect) {
        this.effect = effect == null ? null : effect.trim();
    }

    public String getProductImg() {
        return productImg;
    }


    public void setProductImg(String productImg) {
        this.productImg = productImg == null ? null : productImg.trim();
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Product product = (Product) o;

        if (pid != null ? !pid.equals(product.pid) : product.pid != null) return false;
        if (productId != null ? !productId.equals(product.productId) : product.productId != null) return false;
        if (name != null ? !name.equals(product.name) : product.name != null) return false;
        if (title != null ? !title.equals(product.title) : product.title != null) return false;
        if (day != null ? !day.equals(product.day) : product.day != null) return false;
        if (salesVolume != null ? !salesVolume.equals(product.salesVolume) : product.salesVolume != null) return false;
        if (state1 != null ? !state1.equals(product.state1) : product.state1 != null) return false;
        if (price != null ? !price.equals(product.price) : product.price != null) return false;
        if (discountPrice != null ? !discountPrice.equals(product.discountPrice) : product.discountPrice != null)
            return false;
        if (giveProductId != null ? !giveProductId.equals(product.giveProductId) : product.giveProductId != null)
            return false;
        if (state != null ? !state.equals(product.state) : product.state != null) return false;
        if (volume != null ? !volume.equals(product.volume) : product.volume != null) return false;
        if (categorylevel1id != null ? !categorylevel1id.equals(product.categorylevel1id) : product.categorylevel1id != null)
            return false;
        if (categorylevel2id != null ? !categorylevel2id.equals(product.categorylevel2id) : product.categorylevel2id != null)
            return false;
        if (skincareId != null ? !skincareId.equals(product.skincareId) : product.skincareId != null) return false;
        if (effect != null ? !effect.equals(product.effect) : product.effect != null) return false;
        return productImg != null ? productImg.equals(product.productImg) : product.productImg == null;
    }

    @Override
    public int hashCode() {
        int result = pid != null ? pid.hashCode() : 0;
        result = 31 * result + (productId != null ? productId.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (day != null ? day.hashCode() : 0);
        result = 31 * result + (salesVolume != null ? salesVolume.hashCode() : 0);
        result = 31 * result + (state1 != null ? state1.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + (discountPrice != null ? discountPrice.hashCode() : 0);
        result = 31 * result + (giveProductId != null ? giveProductId.hashCode() : 0);
        result = 31 * result + (state != null ? state.hashCode() : 0);
        result = 31 * result + (volume != null ? volume.hashCode() : 0);
        result = 31 * result + (categorylevel1id != null ? categorylevel1id.hashCode() : 0);
        result = 31 * result + (categorylevel2id != null ? categorylevel2id.hashCode() : 0);
        result = 31 * result + (skincareId != null ? skincareId.hashCode() : 0);
        result = 31 * result + (effect != null ? effect.hashCode() : 0);
        result = 31 * result + (productImg != null ? productImg.hashCode() : 0);
        return result;
    }
}