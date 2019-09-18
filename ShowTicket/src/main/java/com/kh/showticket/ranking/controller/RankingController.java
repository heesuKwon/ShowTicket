package com.kh.showticket.ranking.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ranking")
public class RankingController {

	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("/ranking.do")
	public void ranking() {
		logger.debug("랭킹페이지");
	}
	


}
