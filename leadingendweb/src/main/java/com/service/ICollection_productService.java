package com.service;

import com.entity.Collection_product;

import java.util.List;
import java.util.Map;

public interface ICollection_productService {
    List<Collection_product> selectAllByIf(Map<String,Object> mp);
    Integer deleteByPrimaryKey(Integer id);
    Integer insertSelective(Collection_product cp);
    Integer updateByPrimaryKeySelective(Collection_product cp);
}
