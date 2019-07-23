package com.service.impl;

import com.dao.ISkincare_productDao;
import com.entity.Skincare_product;
import com.service.ISkincare_productService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@MapperScan(basePackages = "com.dao")

@Service("skincare_productService")
public class Skincare_productService implements ISkincare_productService {
    @Autowired
    private ISkincare_productDao dao;
    @Override
    public List<Skincare_product> selectAll() {
        return dao.selectAll();
    }

    @Override
    public Skincare_product selectByPrimaryKey(Integer id) {
        return dao.selectByPrimaryKey(id);
    }
}
