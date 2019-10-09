package com.kh.showticket.review.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.showticket.review.model.vo.Review;

@Repository
public class ReviewDAOImpl implements ReviewDAO{
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public List<Review> reviewList(String reviewShowId) {
		return sqlSession.selectList("review.reviewList",reviewShowId);
	}

	@Override
	public int insertReview(Review review) {
		return sqlSession.insert("review.insertReview", review);
	}

	@Override
	public double selectReviewStar(String musicalId) {
		String ans = sqlSession.selectOne("review.selectReviewStar", musicalId);
		if(ans==null) {
			return -1.0;
		}
		else {
			return Double.parseDouble(ans);
		}
		//return sqlSession.selectOne("review.selectReviewStar", musicalId)==null?-1:sqlSession.selectOne("review.selectReviewStar", musicalId);
	}
}
