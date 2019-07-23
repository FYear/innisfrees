package com.service;

import com.entity.*;

import java.util.*;

public interface ISkincare_productService {
    List<Skincare_product> selectAll();
    Skincare_product selectByPrimaryKey(Integer id);
}
