package com.service;

import com.entity.Product_relation;

import java.util.*;

public interface IProduct_relationService {
    List<Product_relation> selectAll(Map<String,Object> mp);

    List<Product_relation> selectParentid(Integer parentid);
    Product_relation selectByPrimaryKey(Integer id);
}
