package com.kh.showticket.event.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class DiscountDAOImpl implements DiscountDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	
}
