package com.service;

import java.util.List;
import java.util.Map;

import com.entity.*;
public interface IOrder1Service {
	
	List<Order1> selectAllIf(Map<String, Object> mp);
	Integer selectMoneyIf(Map<String, Object> mp);
	List<Order1> selectOneWeek(Integer num);
	Integer insertSelective(Order1 order1);
	int  updateByPrimaryKeySelective(Order1 o);
	Order1 selectByPrimaryKey(Integer id);
}
