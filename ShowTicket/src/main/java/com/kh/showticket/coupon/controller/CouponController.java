package com.kh.showticket.coupon.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.coupon.model.service.CouponService;
import com.kh.showticket.coupon.model.vo.Coupon;

import static com.kh.showticket.common.getApi.getApi.*;

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

		boolean flag = true;
		
		//String memberLoggedIn = (Member) session.getAttribute("memberLoggedIn");
		//임시
		String memberLoggedIn = "honggd";
		String loc = "";
		String msg = "";
		List<Map<String, String>> couponList = couponService.selectMyCouponList(memberLoggedIn);
		
		logger.debug("쿠폰리스트={}", couponList);
		for(Map<String,String> coupon : couponList) {
			logger.debug("쿠폰넘버={}", coupon.get("couponNo"));
			logger.debug("쿠폰넘버={}", String.valueOf(coupon.get("couponNo")));
			if(Integer.parseInt(String.valueOf(coupon.get("couponNo")))==couponNo) {
				 flag = false;
				 break;
			}
		}
		
		if(flag==true) {
			couponService.couponDownload(couponNo, memberLoggedIn);
			
			//String loc = "/member/myCoupon.do?memberId="+memberLoggedIn;
			loc = "/member/myCoupon.do";
			msg = "쿠폰 다운로드 성공!";
			
		}
		else if(flag==false) {
			loc = "/coupon/coupon.do";
			msg = "이미 다운로드한 쿠폰입니다.";
		}
		
	
		mav.addObject("loc", loc);
		mav.addObject("msg", msg);
		
		mav.setViewName("common/msg");
		return mav;
	}
	
	@RequestMapping("/couponAdd.do")
	public String couponAdd(Model model) {
		
		String url1 = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=ebfe5d2574de4631b6eda133b56b1297&stdate=20190928&eddate=20191031&cpage=1&rows=10&shcate=AAAA";
		String url2 = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=ebfe5d2574de4631b6eda133b56b1297&stdate=20190928&eddate=20191031&cpage=1&rows=10&shcate=AAAB";
		
		List<Map<String,String>> showList = getList(url1);
		List<Map<String,String>> musicalList = getList(url2);
		
		model.addAttribute("showList", showList);
		model.addAttribute("musicalList", musicalList);
		
		return "/coupon/couponAdd";
	}
	
	@RequestMapping(value="/insertCouponAdd.do", method=RequestMethod.POST)
	public String insertCouponAdd(Model model, @RequestParam(value="couponTitle") String couponTitle, @RequestParam(value="couponPrice") int couponPrice,
								  @RequestParam(value="couponTime") int couponTime, @RequestParam(value="couponCount") int couponCount, @RequestParam(value="showId") String[] showId){

		
		logger.debug("dddddd {}", couponTime);
		String no = "";
		int result = 0;
		
		Map<String,Object> addMap = new HashMap<>();
		addMap.put("couponTitle",couponTitle);
		addMap.put("couponPrice",couponPrice);
		addMap.put("couponTime",couponTime);
		addMap.put("couponCount",couponCount);
	
		for(int i=0; i<showId.length; i++) {
			if(showId[i].equals("null")) {
				no = null;
				addMap.put("showId",no);
				result = couponService.insertCouponAdd(addMap);	
			}
			else {
				no = showId[i];
				System.out.println("제발"+no);
				addMap.put("showId",no);
				result = couponService.insertCouponAdd(addMap);								
			}
		}
		
    	model.addAttribute("msg", result>0?"쿠폰 등록 완료":"쿠폰 등록 실패");
    	model.addAttribute("loc", "/coupon/coupon.do");
		
		return "common/msg";
	}
	
//	@RequestMapping(value="/couponUpdate.do", method=RequestMethod.POST)
//	public String couponUpdate(Model model, @RequestParam String couponTitle, @RequestParam int couponPrice,
//			  				   @RequestParam int couponTime, @RequestParam int couponCount, @RequestParam String[] showId) {
//		
//		String no = "";
//		int result = 0;
//		
//		Map<String,Object> addMap = new HashMap<>();
//		addMap.put("couponTitle",couponTitle);
//		addMap.put("couponPrice",couponPrice);
//		addMap.put("couponTime",couponTime);
//		addMap.put("couponCount",couponCount);
//	
//		for(int i=0; i<showId.length; i++) {
//			if(showId[i].equals("null")) {
//				no = null;
//				addMap.put("showId",no);
//				result = couponService.insertCouponAdd(addMap);	
//			}
//			else {
//				no = showId[i];
//				System.out.println("제발"+no);
//				addMap.put("showId",no);
//				result = couponService.insertCouponAdd(addMap);								
//			}
//		}
//		
//		model.addAttribute("msg", result>0?"쿠폰 수정 성공":"쿠폰 수정 실패");
//    	model.addAttribute("loc", "/coupon/coupon.do");
//		
//		return "common/msg";
//	}
	
}
