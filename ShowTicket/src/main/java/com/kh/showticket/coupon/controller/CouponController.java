package com.kh.showticket.coupon.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/coupon")
public class CouponController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("/coupon.do")
	public ModelAndView event(ModelAndView mav) {
		logger.debug("coupon페이지 요청");
		
		mav.setViewName("coupon/coupon");
		return mav;
	}
	
}
