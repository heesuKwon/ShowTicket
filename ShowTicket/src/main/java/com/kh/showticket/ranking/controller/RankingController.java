package com.kh.showticket.ranking.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/ranking")  
public class RankingController {

	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("/ranking.do")
	public ModelAndView ranking(ModelAndView mav) {
		logger.debug("랭킹페이지");
		
		mav.setViewName("ranking/ranking");
		return mav;
	}
	


}
