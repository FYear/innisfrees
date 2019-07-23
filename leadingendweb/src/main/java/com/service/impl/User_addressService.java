package com.service.impl;

import com.dao.IUser_addressDao;
import com.entity.User_address;
import com.service.IUser_addressService;
import com.service.IUser_infoService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Transactional
@MapperScan(basePackages = "com.dao")

@Service("user_addressService")
public class User_addressService implements IUser_addressService{
    @Autowired
    private IUser_addressDao dao;

    @Override
    public List<User_address> selectAllByIf(Map<String, Object> mp) {
        return dao.selectAllByIf(mp);
    }

    @Override
    public User_address selectByPrimaryKey(Integer id) {
        return dao.selectByPrimaryKey(id);
    }

    @Override
    public List<User_address> selectUid(Map<String, Object> mp) {
        return dao.selectUid(mp);
    }

    @Override
    public int deleteByPrimaryKey(Integer uaid) {
        return dao.deleteByPrimaryKey(uaid);
    }

    @Override
    public int insertSelective(User_address ua) {
        return dao.insertSelective(ua);
    }

    @Override
    public int updateByPrimaryKeySelective(User_address ua) {
        return dao.updateByPrimaryKeySelective(ua);
    }
}
