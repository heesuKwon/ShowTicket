package com.kh.showticket.musical.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/musical")
public class MusicalController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("/musical.do")
	public ModelAndView ranking(ModelAndView mav) {
		logger.debug("랭킹페이지");
		
		mav.setViewName("menu/musical");
		return mav;
	}
}
