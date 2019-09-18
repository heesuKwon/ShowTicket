package com.kh.showticket.show;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/show")
public class ShowController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("/show.do")
	public ModelAndView ranking(ModelAndView mav) {
		logger.debug("랭킹페이지");
		
		mav.setViewName("menu/show");
		return mav;
	}

	
}
