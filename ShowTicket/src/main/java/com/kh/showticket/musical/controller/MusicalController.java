package com.kh.showticket.musical.controller;

import static com.kh.showticket.common.getApi.getApi.*;

import java.util.ArrayList;import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
@RequestMapping("/musical")
public class MusicalController {
	static Logger logger = LoggerFactory.getLogger("com.kh.showticket.musical.controller.MusicalController");
	
	static List<Map<String,String>> musicalDetailList;
	
	@PostConstruct
	public void postConstruct() {
		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190923&eddate=20191031&cpage=1&rows="+Integer.MAX_VALUE+"&shcate=AAAB";	
		List<Map<String,String>> musicalAllList = getList(url);
		
		musicalDetailList = new ArrayList<>();

		for(Map<String,String> map : musicalAllList) {
			url = "http://www.kopis.or.kr/openApi/restful/pblprfr/"+map.get("mt20id")+"?service=3127d89913494563a0e9684779988063";
			musicalDetailList.add(getDetailList(url));
		}
	
	}
	
	@RequestMapping("/musical.do")
	public ModelAndView show(ModelAndView mav) {
		logger.debug("뮤지컬리스트페이지");
	
		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190923&eddate=20191031&cpage=1&rows=8&shcate=AAAB";
		String url2 = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=ebfe5d2574de4631b6eda133b56b1297&stdate=20190928&eddate=20191031&cpage=1&rows=5&shcate=AAAB&prfstate=02";
		
		List<Map<String,String>> musicalList = getList(url);
		List<Map<String,String>> recentMusicalList = getList(url2);
		
		mav.addObject("musicalList", musicalList);
		mav.addObject("recentMusicalList", recentMusicalList);
		mav.setViewName("menu/musical");
		return mav;
	}
	
	
	@RequestMapping("/musicalAjax.do")
	public List<Map<String,String>> musicalAjax(@RequestParam int cpage) {
		logger.debug("전체뮤지컬 AJAX");
		logger.debug("cpage={}", cpage);

		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190923&eddate=20191031&cpage="+cpage+"&rows=8&shcate=AAAB";
		
		return getList(url);
	}


	@RequestMapping("/musicalDetail.do")
	public ModelAndView musicalDetail(ModelAndView mav) {
		logger.debug("뮤지컬상세페이지");
		mav.setViewName("musical/musicalDetail");
		return mav;
	}
	
	@RequestMapping("/musicalSearch.do")
	public List<Map<String,String>> musicalSearch(ModelAndView mav, @RequestParam String cate, @RequestParam String srchKeyword, @RequestParam int cpage) {
			//cate : searchAll / searchTitle / searchActor
			//srchKeyword : String
			//cpage

		final int numPerPage = 8;
		
		logger.debug("cate={}", cate);
		logger.debug("srchKeyword={}", srchKeyword);
		
		List<Map<String, String>> result = new ArrayList<>();
		List<Map<String, String>> resultPaged = new ArrayList<>(8);
		
		
		if(cate.equals("searchAll")) {
			for(Map<String, String> map : musicalDetailList) {
				if(map.get("prfnm").contains(srchKeyword) || map.get("prfcast").contains(srchKeyword)) {
					result.add(map);
				}
			}

		}
		else if(cate.equals("searchTitle")) {
			for(Map<String, String> map : musicalDetailList) {
				if(map.get("prfnm").contains(srchKeyword)) {
					result.add(map);
				}
			}
		}
		else if(cate.equals("searchActor")) {
			for(Map<String, String> map : musicalDetailList) {
				if(map.get("prfcast").contains(srchKeyword)) {
					result.add(map);
				}
			}
		}
		
		int startPage = (cpage-1)*numPerPage;
	
		int endPage = startPage+numPerPage;
		
		if(endPage>=result.size()) endPage = result.size();
		
		for(int i=startPage; i<endPage; i++) {
			resultPaged.add(result.get(i));
		}
		
			
		return resultPaged;
	}
	
	
	
}
