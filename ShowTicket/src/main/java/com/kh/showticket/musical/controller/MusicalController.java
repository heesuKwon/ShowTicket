package com.kh.showticket.musical.controller;

import static com.kh.showticket.common.getApi.getApi.getList;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.common.MusicalAndShow;
import com.kh.showticket.musical.model.service.MusicalService;


@Controller
@RequestMapping("/musical")
public class MusicalController {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	MusicalService musicalService;
	
	
	@RequestMapping("/musical.do")
	public ModelAndView show(ModelAndView mav) {
		logger.debug("뮤지컬리스트페이지");
	
		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190923&eddate=20190923&cpage=1&rows=8&shcate=AAAB";

		List<Map<String,String>> musicalList = getList(url);
		
		mav.addObject("musicalList", musicalList);
		mav.setViewName("menu/musical");
		return mav;
	}
	
	
	@RequestMapping("/musicalAjax.do")
	@ResponseBody
	public List<Map<String,String>> musicalAjax(@RequestParam int cpage) {
		logger.debug("전체뮤지컬 AJAX");
		logger.debug("cpage={}", cpage);

		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190923&eddate=20190923&cpage="+cpage+"&rows=8&shcate=AAAB";
		
		return getList(url);

	}


	@RequestMapping("/musicalDetail.do")
	public ModelAndView musicalDetail(ModelAndView mav, @RequestParam String musicalId) {
		logger.debug("뮤지컬상세페이지");
		logger.debug("musicalId={}",musicalId);
		
		MusicalAndShow musical = musicalService.selectOne(musicalId);
		
		mav.addObject("musical", musical);
	
		mav.setViewName("musical/musicalDetail");
		return mav;
	}
}
