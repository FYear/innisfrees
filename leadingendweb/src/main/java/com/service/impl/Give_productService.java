package com.service.impl;

import com.dao.IGive_productDao;
import com.entity.Give_product;
import com.service.IGive_productService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@MapperScan(basePackages = "com.dao")

@Service("give_productService")
public class Give_productService implements IGive_productService{
@Autowired
private IGive_productDao dao;
    @Override
    public Give_product selectByPrimaryKey(Integer id) {
        return dao.selectByPrimaryKey(id);
    }
}
