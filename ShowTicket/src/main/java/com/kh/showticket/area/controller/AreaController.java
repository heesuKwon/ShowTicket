package com.kh.showticket.area.controller;

import java.util.List;
import java.util.Map;

import static com.kh.showticket.common.getApi.getApi.*;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/area")
public class AreaController {
	
	@RequestMapping("/area.do")
	public ModelAndView areaList(ModelAndView mav) {
		
		String url1="http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190901&eddate=20191231&cpage=1&rows=6&shcate=AAAA";
		String url2="http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190901&eddate=20191231&cpage=1&rows=6&shcate=AAAB";
		
		mav.setViewName("area/area");
		mav.addObject("concatList", getOrderedListByDate(getConcatList(url1,url2)));
		return mav;
	}
	
	@RequestMapping("/areaAjax.do")
	public List<Map<String,String>> getAreaList(@RequestParam int cpage) {
		
		String url1="http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190901&eddate=20191231&cpage="+cpage+"&rows=6&shcate=AAAA";
		String url2="http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190901&eddate=20191231&cpage="+cpage+"&rows=6&shcate=AAAB";

		return getOrderedListByDate(getConcatList(url1,url2));
	}
	
	@RequestMapping("/seoulAjax.do")
	public List<Map<String,String>> getSeoulList(@RequestParam int cpage) {
		
		String url1="http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190901&eddate=20191231&cpage="+cpage+"&rows=4&shcate=AAAA&signgucode=11&signgucodesub=1111";
		String url2="http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190901&eddate=20191231&cpage="+cpage+"&rows=4&shcate=AAAB&signgucode=11&signgucodesub=1111";
		
		return getOrderedListByDate(getConcatList(url1,url2));
	}

}
