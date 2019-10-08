package com.kh.showticket.review.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.showticket.review.model.service.ReviewService;
import com.kh.showticket.review.model.vo.Review;

@RestController
@RequestMapping("/review")
@SessionAttributes("memberLoggedIn")
public class ReviewController {

	@Autowired
	ReviewService reviewService;
	
	Logger logger = LoggerFactory.getLogger(getClass());

	
	@GetMapping(value="/reviewList.do")
	public List<Review> reviewList(@RequestParam("reviewShowId") String reviewShowId) {
		logger.debug("get로 넘어온 .Review:"+reviewShowId);
		List<Review> list = reviewService.reviewList(reviewShowId);
		logger.debug("reviewList="+list);
		return list;
	}
	
	@PostMapping(value="/insertReview.do")
	public Map<String, String> insertReview(@RequestBody Review review){
		logger.info("review=", review);
		int result = reviewService.insertReview(review);
		Map<String, String> map = new HashMap<>();
		map.put("msg", "메뉴 등록성공!");
		return map;
	}
	
	
}
