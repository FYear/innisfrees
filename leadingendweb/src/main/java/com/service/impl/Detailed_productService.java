package com.service.impl;

import com.dao.IDetailed_productDao;
import com.entity.Detailed_product;
import com.service.IDetailed_productService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@MapperScan(basePackages = "com.dao")

@Service("detailed_productService")
public class Detailed_productService implements IDetailed_productService {
    @Autowired
    private IDetailed_productDao dao;
    @Override
    public Detailed_product selectPidKey(Integer pid) {
        return dao.selectPidKey(pid);
    }
}
