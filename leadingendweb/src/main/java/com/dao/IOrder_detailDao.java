package com.dao;

import java.util.*;

import com.entity.Order_detail;

public interface IOrder_detailDao {
	
	List<Order_detail> selectAllIf(Map<String, Object> mp);

	Integer insertSelective(Order_detail od);
}
