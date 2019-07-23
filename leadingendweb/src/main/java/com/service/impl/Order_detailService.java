package com.service.impl;

import com.dao.IOrder_detailDao;

import com.entity.*;

import java.util.*;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.service.*;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@MapperScan(basePackages = "com.dao")
@Service("order_detailService")
public class Order_detailService implements IOrder_detailService{
	@Autowired
	IOrder_detailDao dao;
	public List<Order_detail> selectAllIf(Map<String, Object> mp) {
		
		return dao.selectAllIf(mp);
	}
	
	public int zonghe(List<Order_detail> odlist) {
		int num=0;
		for(Order_detail od:odlist){
			num+=od.getQuantity();
		}
		return num;
	}

	@Override
	public Integer insertSelective(Order_detail od) {
		return dao.insertSelective(od);
	}


}
