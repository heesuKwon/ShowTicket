package com.kh.showticket.event.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.showticket.event.model.vo.Discount;
@Repository
public class DiscountDAOImpl implements DiscountDAO {
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int insertAddSale(Discount discount) {
		return sqlSession.insert("discount.insertAddSale",discount);
	}
	
	
}
