package com.service.impl;

import com.dao.ICollection_productDao;
import com.entity.Collection_product;
import com.service.ICollection_productService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Transactional
@MapperScan(basePackages = "com.dao")

@Service("collection_productService")
public class Collection_productService  implements ICollection_productService{
    @Autowired
    private ICollection_productDao dao;
    @Override
    public List<Collection_product> selectAllByIf(Map<String,Object> mp) {
        return dao.selectAllByIf(mp);
    }

    @Override
    public Integer deleteByPrimaryKey(Integer id) {
        return dao.deleteByPrimaryKey(id);
    }

    @Override
    public Integer insertSelective(Collection_product cp) {
        return dao.insertSelective(cp);
    }

    @Override
    public Integer updateByPrimaryKeySelective(Collection_product cp) {
        return dao.updateByPrimaryKeySelective(cp);
    }
}
