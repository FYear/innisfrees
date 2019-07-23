package com.service.impl;

import com.entity.*;
import com.dao.*;
import com.service.*;

import java.util.*;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("orderService")
public class Order1Service implements IOrder1Service{
	
	@Autowired
	private  IOrder1Dao dao;
	public Integer selectMoneyIf(Map<String, Object> mp) {
		return dao.selectMoneyIf(mp);
	}
	public List<Order1> selectAllIf(Map<String, Object> mp) {
		return dao.selectAllIf(mp);
	}
	public List<Order1> selectOneWeek(Integer num) {
		return dao.selectOneWeek(num);
	}

	@Override
	public Integer insertSelective(Order1 order1) {
		return dao.insertSelective(order1);
	}

	public int updateByPrimaryKeySelective(Order1 o) {
		return dao.updateByPrimaryKeySelective(o);
	}

	@Override
	public Order1 selectByPrimaryKey(Integer id) {
		return dao.selectByPrimaryKey(id);
	}

}
