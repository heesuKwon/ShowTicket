package com.kh.showticket.event.controller;

import static com.kh.showticket.common.getApi.getApi.getConcatList;

import java.sql.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.event.model.service.DiscountService;
import com.kh.showticket.event.model.vo.Discount;


@Controller
@RequestMapping("/event")
public class EventController {
	
	@Autowired 
	DiscountService discountService;
	
	Logger logger = LoggerFactory.getLogger(getClass());

	@RequestMapping("/eventList.do")
	public ModelAndView event(ModelAndView mav) {
		logger.debug("event페이지 요청");

		String url1="http://www.kopis.or.kr/openApi/restful/pblprfr?service=61b91b2730084f47a2c5304ed87d2294&stdate=20190623&eddate=20190923&cpage=1&rows=2&shcate=AAAA";
		String url2="http://www.kopis.or.kr/openApi/restful/pblprfr?service=61b91b2730084f47a2c5304ed87d2294&stdate=20190623&eddate=20190923&cpage=1&rows=1&shcate=AAAB";
		
		mav.setViewName("event/eventList");
		mav.addObject("eventList",getConcatList(url1,url2));
		
		return mav;
	}

	@RequestMapping("/endEventList.do")
	public ModelAndView endEvent(ModelAndView mav) {
		logger.debug("endEvent페이지 요청");
		
		mav.setViewName("event/endEventList");
		return mav;
	}

	@RequestMapping("/prizewinner.do")
	public ModelAndView prizewinner(ModelAndView mav) {
		logger.debug("prizewinner페이지 요청");

		mav.setViewName("event/prizewinner");
		return mav;
	}

	@RequestMapping("/addSaleEvent.do")
	public ModelAndView addSaleEvent(ModelAndView mav) {

		mav.setViewName("/event/addSaleEvent");
		
		
		/*
		 * String
		 * url1=" http://www.kopis.or.kr/openApi/restful/pblprfr?service=61b91b2730084f47a2c5304ed87d2294&stdate=20190901&eddate=20190923&rows=10&cpage=1"
		 * ; String url2=
		 * "http://www.kopis.or.kr/openApi/restful/pblprfr?service=61b91b2730084f47a2c5304ed87d2294&stdate=20190623&eddate=20190923&cpage=1&rows=5&shcate=AAAB";
		 */

		//mav.addObject("S_event",getConcatList(url1,url2));
		
		
		
		return mav;
	}

	@RequestMapping("/prizewinnerWrite.do")
	public String writeprizewinner() {

		return "/event/writeprizewinner";
	}
	
	@RequestMapping("/eventWrite.do")
	public ModelAndView eventWrite(ModelAndView mav) {
		logger.debug("eventWrite페이지 요청");
		
		mav.setViewName("event/eventWrite");
		return mav;
	}
	
	@RequestMapping("/eventView.do")
	public ModelAndView eventView(ModelAndView mav) {
		logger.debug("prizewinner페이지 요청");
		
		mav.setViewName("event/eventView");
		return mav;
	}
	
	@RequestMapping("/insertAddSale.do")
	public String insertAddSale(Discount discount, Model model) {
		
		logger.info("특가 할인 입력 기능 요청");
		
		System.out.println(discount.getShowId());
		System.out.println(discount.getDisCountEndDate());
		int result = discountService.insertAddSale(discount);
		
		// 2. view단 처리
		model.addAttribute("msg", result>0?"할인 등록성공":"할인 등록 실패");
		model.addAttribute("loc", "/event/addSaleEvent.do");

		
		/*.setViewName("redirect:/event/addSaleEvent.do");*/
		return "common/msg";
	}
}
