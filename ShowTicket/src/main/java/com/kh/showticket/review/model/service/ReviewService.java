package com.kh.showticket.review.model.service;

import java.util.List;

import com.kh.showticket.review.model.vo.Review;

public interface ReviewService {

	List<Review> reviewList(String reviewShowId);

	int insertReview(Review review);

}
