package com.kh.showticket.musical.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.showticket.common.MusicalAndShow;

@Repository
public class MusicalDAOImpl implements MusicalDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public double selectReviewStar(String musicalId) {
		return sqlSession.selectOne("musical.selectReviewStar", musicalId);
	}
	
	
}
