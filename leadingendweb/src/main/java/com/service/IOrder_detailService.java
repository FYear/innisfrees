package com.service;

import java.util.*;


import com.entity.Order_detail;

public interface IOrder_detailService {
	List<Order_detail> selectAllIf(Map<String, Object> mp);
	int zonghe(List<Order_detail> odlist);
	Integer insertSelective(Order_detail od);
}
