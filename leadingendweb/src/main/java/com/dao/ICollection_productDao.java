package com.dao;

import com.entity.Collection_product;

import java.util.*;

public interface ICollection_productDao {
   List<Collection_product> selectAllByIf(Map<String,Object> mp);
    Integer deleteByPrimaryKey(Integer id);
    Integer insertSelective(Collection_product cp);
    Integer updateByPrimaryKeySelective(Collection_product cp);
}
