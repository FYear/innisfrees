package com.service;

import com.entity.User_address;

import java.util.List;
import java.util.Map;

public interface IUser_addressService {
    List<User_address> selectAllByIf(Map<String,Object> mp);
    User_address selectByPrimaryKey(Integer id);
    List<User_address> selectUid(Map<String ,Object> mp);
    int deleteByPrimaryKey(Integer uaid);
    int insertSelective(User_address ua);
    int updateByPrimaryKeySelective(User_address ua);
}
