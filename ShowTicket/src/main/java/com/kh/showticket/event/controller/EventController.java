package com.kh.showticket.event.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/event")
public class EventController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("/eventList.do")
	public ModelAndView event(ModelAndView mav) {
		logger.debug("event페이지 요청");
		
		mav.setViewName("event/eventList");
		return mav;
	}
	
}
