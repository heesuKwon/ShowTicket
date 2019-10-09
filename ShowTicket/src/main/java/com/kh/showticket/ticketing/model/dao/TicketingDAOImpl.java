package com.kh.showticket.ticketing.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TicketingDAOImpl implements TicketingDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int selectMyPoint(String memberId) {
		return sqlSession.selectOne("ticketing.selectMyPoint",memberId);
	}

}
