package com.service;

import com.entity.*;

import java.util.List;
import java.util.Map;

public interface IUser_infoService {
    User_info userlogin(Map<String,Object> mp);
    List<User_info> selectAll();
    User_info selectByPrimaryKey(Integer uid);
    List<User_info> selectAllByIf(Map<String,Object> mp);
}
