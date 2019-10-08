package com.kh.showticket.review.model.dao;

import java.util.List;

import com.kh.showticket.review.model.vo.Review;

public interface ReviewDAO {

	List<Review> reviewList(String reviewShowId);

	int insertReview(Review review);

	double selectReviewStar(String musicalId);

}
