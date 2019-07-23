package com.dao;

import com.entity.*;

import java.util.*;

public interface ISkincare_productDao {
    List<Skincare_product> selectAll();
    Skincare_product selectByPrimaryKey(Integer id);
}
