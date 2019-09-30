package com.kh.showticket.musical.controller;

import static com.kh.showticket.common.getApi.getApi.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.common.MusicalAndShow;
import com.kh.showticket.common.postconstruct.PostConstructing;
import com.kh.showticket.musical.model.service.MusicalService;


@RestController
@RequestMapping("/musical")
public class MusicalController {
	static Logger logger = LoggerFactory.getLogger("com.kh.showticket.musical.controller.MusicalController");
	
	@Autowired
	MusicalService musicalService;
	
	List<Map<String,String>> musicalDetailList = PostConstructing.musicalDetailList;
	
	@RequestMapping("/musical.do")
	public ModelAndView musical(ModelAndView mav) {
		//logger.debug("뮤지컬리스트페이지");
		
		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190923&eddate=20191031&cpage=1&rows=8&shcate=AAAB";
		
		List<Map<String,String>> musicalList = getList(url);
		mav.addObject("musicalList", musicalList);
		mav.setViewName("menu/musical");
		return mav;
	}
	
	
	@RequestMapping("/musicalAjax.do")
	@ResponseBody
	public List<Map<String,String>> musicalAjax(@RequestParam int cpage) {
		//logger.debug("전체뮤지컬 AJAX");
		//logger.debug("cpage={}", cpage);

		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190923&eddate=20191031&cpage="+cpage+"&rows=8&shcate=AAAB";
		
		return getList(url);
	}


	@RequestMapping("/musicalDetail.do")
	public ModelAndView musicalDetail(ModelAndView mav, @RequestParam String musicalId) {
		//logger.debug("뮤지컬상세페이지");
		//logger.debug("musicalId={}",musicalId);
		
		MusicalAndShow musical = musicalService.selectOne(musicalId);
		
//		String url = "http://www.kopis.or.kr/openApi/restful/prfplc?service=3127d89913494563a0e9684779988063";
		String url = "http://www.kopis.or.kr/openApi/restful/prfplc/"+musical.getHallId()+"?service=3127d89913494563a0e9684779988063";
		Map<String, String> address = musicalService.selectPlace(url);
		logger.debug("musicalAll"+ musical);
		logger.info("musicalAddress"+ address);
		mav.addObject("musical", musical);
		mav.addObject("address", address);
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
