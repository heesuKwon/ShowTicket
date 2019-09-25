package com.kh.showticket.ticketing.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/ticketing")
public class TicketingController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("/ticketConfirm.do")
	public ModelAndView ticketCheck(ModelAndView mav) {
		
		logger.debug("예매확인 페이지");
		
		mav.setViewName("ticketing/ticketConfirm");
		
		return mav;
	}
	
	@RequestMapping("/ticketingPoint.do")
	public ModelAndView ticketCheck2(ModelAndView mav) {
		
		logger.debug("예매확인 페이지");
		
		mav.setViewName("ticketing/ticketingPoint");
		
		return mav;
	}
}


