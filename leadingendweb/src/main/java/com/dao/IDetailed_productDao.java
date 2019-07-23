package com.dao;

import com.entity.Detailed_product;

import java.util.*;

public interface IDetailed_productDao {
    Detailed_product selectPidKey(Integer pid);
}
