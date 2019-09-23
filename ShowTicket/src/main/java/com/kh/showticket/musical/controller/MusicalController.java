package com.kh.showticket.musical.controller;

import java.util.List;
import java.util.Map;
import static com.kh.showticket.common.getApi.getApi.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
@RequestMapping("/musical")
public class MusicalController {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	
	@RequestMapping("/musical.do")
	public ModelAndView show(ModelAndView mav) {
		logger.debug("뮤지컬리스트페이지");
	
		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190901&eddate=20191231&cpage=1&rows=8&shcate=AAAB";

		List<Map<String,String>> musicalList = getOrderedListByDate(getList(url));
		
		mav.addObject("musicalList", musicalList);
		mav.setViewName("menu/musical");
		return mav;
	}
	
	
	@RequestMapping("/musicalAjax.do")
	public List<Map<String,String>> musicalAjax(@RequestParam int cpage) {
		logger.debug("전체뮤지컬 AJAX");
		logger.debug("cpage={}", cpage);

		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190901&eddate=20191231&cpage="+cpage+"&rows=8&shcate=AAAB";
		
		return getOrderedListByDate(getList(url));

	}


	@RequestMapping("/musicalDetail.do")
	public ModelAndView musicalDetail(ModelAndView mav) {
		logger.debug("뮤지컬상세페이지");
		mav.setViewName("musical/musicalDetail");
		return mav;
	}
}
