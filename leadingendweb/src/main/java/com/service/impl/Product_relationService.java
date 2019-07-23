package com.service.impl;

import com.dao.IProduct_relationDao;
import com.entity.Product_relation;
import com.service.IProduct_relationService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Transactional
@MapperScan(basePackages = "com.dao")

@Service("product_relationService")
public class Product_relationService implements IProduct_relationService{
@Autowired
private IProduct_relationDao dao;



    @Override
    public List<Product_relation> selectAll(Map<String, Object> mp) {
        return dao.selectAll(mp);
    }

    @Override
    public List<Product_relation> selectParentid(Integer parentid) {
        return dao.selectParentid(parentid);
    }

    @Override
    public Product_relation selectByPrimaryKey(Integer id) {
        return dao.selectByPrimaryKey(id);
    }
}
