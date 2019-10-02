package com.kh.showticket.ranking.controller;

import static com.kh.showticket.common.getApi.getApi.getBoxList;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/ranking")  
public class RankingController {

	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("/ranking.do")
	public ModelAndView ranking(ModelAndView mav) {
		logger.debug("랭킹페이지");
		
		SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd");
		Calendar cal = Calendar.getInstance();
		cal.add(cal.DATE,-1);
		String yesterday = date.format(cal.getTime());
		
		String url1 = "http://kopis.or.kr/openApi/restful/boxoffice?service=3127d89913494563a0e9684779988063&ststype=day&date="+yesterday+"&catecode=AAAA";
		
		mav.addObject("dayBoxList",getBoxList(url1));
		logger.debug("dayBoxList=="+getBoxList(url1));
		mav.setViewName("ranking/ranking");
		return mav;
	}
	
	@RequestMapping("/rankAjax.do")
	public List<Map<String,String>> getRankList(@RequestParam String url1){
		return getBoxList(url1);
	}

}
