package com.dao;

import com.entity.*;

import java.util.*;

public interface IProduct_relationDao {
    List<Product_relation> selectAll(Map<String,Object> mp);
    List<Product_relation> selectParentid(Integer parentid);
    Product_relation selectByPrimaryKey(Integer id);

}
