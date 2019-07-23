package com.service;

import com.entity.*;

import java.util.*;

public interface IProductService {
    List<Product> newselect();
    List<Product> moerselect();
    Product selectByPrimaryKey(Integer pid);
    List<Product> selectAll(Map<String,Object> mp);
    List<Product> selectActive(Map<String,Object> mp);
    List<Product> selectEffect(Map<String ,Object> mp);
    List<Product> selectSkincare(Integer id);
    List<Product> selectAllByIf(Map<String,Object> mp);
}
