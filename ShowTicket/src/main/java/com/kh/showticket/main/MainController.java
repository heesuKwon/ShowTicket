package com.kh.showticket.main;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.help.model.service.NoticeService;


@Controller
@RequestMapping("/main")
public class MainController {
	
	NoticeService noticeService;
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("/searchResult.do")
	public ModelAndView searchResult(ModelAndView mav) {
		logger.debug("통합검색결과");
		
		mav.setViewName("main/searchResult");
		return mav;
	}
	

	
}
