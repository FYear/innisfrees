package com.service.impl;

import com.dao.*;
import com.entity.*;
import com.service.IProductService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Transactional
@MapperScan(basePackages = "com.dao")

@Service("productService")
public class ProductService implements IProductService {
    @Autowired
    private IProductDao dao;
    @Override
    public List<Product> newselect() {
        return dao.newselect();
    }

    @Override
    public List<Product> moerselect() {
        return dao.moerselect();
    }

    @Override
    public Product selectByPrimaryKey(Integer pid) {
        return dao.selectByPrimaryKey(pid);
    }

    @Override
    public List<Product> selectAll(Map<String, Object> mp) {
        return dao.selectAll(mp);
    }

    @Override
    public List<Product> selectActive(Map<String, Object> mp) {
        return dao.selectActive(mp);
    }

    @Override
    public List<Product> selectEffect(Map<String, Object> mp) {
        return dao.selectEffect(mp);
    }

    @Override
    public List<Product> selectSkincare(Integer id) {
        return dao.selectSkincare(id);
    }

    @Override
    public List<Product> selectAllByIf(Map<String, Object> mp) {
        return dao.selectAllByIf(mp);
    }


}
