package com.service;

import com.entity.Shopping_cart;

import java.util.*;

public interface IShopping_cartService {
    Integer insert(Shopping_cart sc);
    List<Shopping_cart> selectByuser(Map<String,Object> mp);
    Integer deleteByPrimaryKey(Integer id);
    Integer deleteUserKey(Integer uid);
    Integer deleteProductKey(Integer pid);
    Integer updateUserPid(Shopping_cart cart);
    List<Shopping_cart> selectAllByIf(Map<String,Object> mp);
    Integer insertSelective(Shopping_cart cart);
    Integer updateByPrimaryKeySelective(Shopping_cart cart);
    Integer deleteUserProduct(Map<String,Object> mp);
}
