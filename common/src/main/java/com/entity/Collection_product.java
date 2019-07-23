package com.entity;

import java.io.Serializable;

public class Collection_product implements Serializable {
    private Integer collectionProductId;

    private Integer uid;

    private Integer pid;

    public Integer getCollectionProductId() {
        return collectionProductId;
    }

    public void setCollectionProductId(Integer collectionProductId) {
        this.collectionProductId = collectionProductId;
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

    @Override
    public String toString() {
        return "Collection_product{" +
                "collectionProductId=" + collectionProductId +
                ", uid=" + uid +
                ", pid=" + pid +
                '}';
    }
}