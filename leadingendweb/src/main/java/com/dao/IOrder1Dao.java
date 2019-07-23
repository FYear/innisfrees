package com.dao;

import com.entity.*;
import java.util.*;

public interface IOrder1Dao {
	
	List<Order1> selectAllIf(Map<String, Object> mp);
	
	Integer selectMoneyIf(Map<String, Object> mp);
	
	List<Order1> selectOneWeek(Integer num);
	int  updateByPrimaryKeySelective(Order1 o);
	Integer insertSelective(Order1 order1);
	Order1 selectByPrimaryKey(Integer id);
}
