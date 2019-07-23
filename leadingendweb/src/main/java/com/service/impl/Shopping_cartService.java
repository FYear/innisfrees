package com.service.impl;
import com.dao.*;
import com.entity.*;
import com.service.*;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Transactional
@MapperScan(basePackages = "com.dao")

@Service("shopping_cartService")
public class Shopping_cartService implements IShopping_cartService {
@Autowired
private IShopping_cartDao dao;
    @Override
    public Integer insert(Shopping_cart sc) {
        return dao.insert(sc);
    }

    @Override
    public List<Shopping_cart> selectByuser(Map<String, Object> mp) {
        return dao.selectByuser(mp);
    }

    @Override
    public Integer deleteByPrimaryKey(Integer id) {
        return dao.deleteByPrimaryKey(id);
    }

    @Override
    public Integer deleteUserKey(Integer uid) {
        return dao.deleteUserKey(uid);
    }

    @Override
    public Integer deleteProductKey(Integer pid) {
        return dao.deleteProductKey(pid);
    }

    @Override
    public Integer updateUserPid(Shopping_cart cart) {
        return dao.updateUserPid(cart);
    }

    @Override
    public List<Shopping_cart> selectAllByIf(Map<String, Object> mp) {
        return dao.selectAllByIf(mp);
    }

    @Override
    public Integer insertSelective(Shopping_cart cart) {
        return dao.insertSelective(cart);
    }

    @Override
    public Integer updateByPrimaryKeySelective(Shopping_cart cart) {
        return dao.updateByPrimaryKeySelective(cart);
    }

    @Override
    public Integer deleteUserProduct(Map<String,Object> mp) {
        return dao.deleteUserProduct(mp);
    }
}
