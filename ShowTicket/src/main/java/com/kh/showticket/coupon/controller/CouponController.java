package com.kh.showticket.coupon.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.coupon.model.service.CouponService;
import com.kh.showticket.coupon.model.vo.Coupon;

@Controller
@RequestMapping("/coupon")
public class CouponController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	CouponService couponService;
	
	@RequestMapping("/coupon.do")
	public ModelAndView coupon(ModelAndView mav) {
		logger.debug("coupon페이지 요청");
		
		List<Coupon> couponList = couponService.selectCouponList();
		
		mav.addObject("couponList", couponList);
		mav.setViewName("coupon/coupon");
		return mav;
	}
	
	@RequestMapping("couponDownload.do")
	public ModelAndView couponDownload(ModelAndView mav, @RequestParam int couponNo) {
		logger.debug("coupon다운로드 요청");

		//String memberLoggedIn = (Member) session.getAttribute("memberLoggedIn");
		//임시
		String memberLoggedIn = "honggd";
		
		couponService.couponDownload(couponNo, memberLoggedIn);
		
		//String loc = "/member/myCoupon.do?memberId="+memberLoggedIn;
		String loc = "/member/myCoupon.do";
		String msg = "쿠폰 다운로드 성공!";
		
		mav.addObject("loc", loc);
		mav.addObject("msg", msg);
		
		mav.setViewName("common/msg");
		return mav;
	}
	
}
