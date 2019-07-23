package com.service.impl;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@MapperScan(basePackages = "com.dao")

@Service("commentService")
public class CommentService {
}
