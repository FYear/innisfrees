package com.service.impl;

import com.dao.*;
import com.entity.User_info;
import com.service.*;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("user_infoService")
public class User_infoService implements IUser_infoService {
@Autowired
   private IUser_infoDao dao;

    @Override
    public User_info userlogin(Map<String,Object> mp) {
        return dao.userlogin(mp);
    }

    @Override
    public List<User_info> selectAll() {
        return dao.selectAll();
    }

    @Override
    public User_info selectByPrimaryKey(Integer uid) {
        return dao.selectByPrimaryKey(uid);
    }

    @Override
    public List<User_info> selectAllByIf(Map<String, Object> mp) {
        return dao.selectAllByIf(mp);
    }


}
