
package com.kh.showticket.musical.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.showticket.common.MusicalAndShow;
import com.kh.showticket.coupon.model.vo.Coupon;

@Repository
public class MusicalDAOImpl implements MusicalDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public double selectReviewStar(String musicalId) {
		return sqlSession.selectOne("musical.selectReviewStar", musicalId)==null?-1:sqlSession.selectOne("musical.selectReviewStar", musicalId);
	}

	@Override
	public int insertWait(Map<String, String> userAndMusical) {
		return sqlSession.insert("musical.insertWait", userAndMusical);
	}

	@Override
	public List<Coupon> selectCoupon(String musicalId) {
		return sqlSession.selectList("musical.selectCoupon", musicalId);
	}

	@Override
	public String selectDiscount(String musicalId) {
		return sqlSession.selectOne("musical.selectDiscount", musicalId);
	}
	
	
}
