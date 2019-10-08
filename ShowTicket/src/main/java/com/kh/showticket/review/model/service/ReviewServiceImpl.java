package com.kh.showticket.review.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.showticket.review.model.dao.ReviewDAO;
import com.kh.showticket.review.model.vo.Review;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	ReviewDAO reviewDAO;

	@Override
	public List<Review> reviewList(String reviewShowId) {
		return reviewDAO.reviewList(reviewShowId);
	}

	@Override
	public int insertReview(Review review) {
		return reviewDAO.insertReview(review);
	}
}
