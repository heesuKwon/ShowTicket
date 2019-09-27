package com.kh.showticket.common.postconstruct;

import static com.kh.showticket.common.getApi.getApi.getDetailList;
import static com.kh.showticket.common.getApi.getApi.getList;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

@Controller
public class PostConstructing {
	
	Logger logger = LoggerFactory.getLogger(getClass());

	public static List<Map<String,String>> musicalDetailList;
	public static List<Map<String,String>> showDetailList;
	
	@PostConstruct
	public void postConstruct() {
		//전체 뮤지컬 리스트
		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190923&eddate=20191031&cpage=1&rows="+Integer.MAX_VALUE+"&shcate=AAAB";	
		List<Map<String,String>> musicalAllList = getList(url);
		musicalDetailList = new ArrayList<>();
		
		for(Map<String,String> map : musicalAllList) {
			url = "http://www.kopis.or.kr/openApi/restful/pblprfr/"+map.get("mt20id")+"?service=3127d89913494563a0e9684779988063";
			musicalDetailList.add(getDetailList(url));
		}
		//logger.debug("musicalDetailList={}",musicalDetailList);
		
		//전체 쇼 리스트
		url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190923&eddate=20191031&cpage=1&rows="+Integer.MAX_VALUE+"&shcate=AAAA";	
		List<Map<String,String>> showAllList = getList(url);
		
		showDetailList = new ArrayList<>();

		for(Map<String,String> map : showAllList) {
			url = "http://www.kopis.or.kr/openApi/restful/pblprfr/"+map.get("mt20id")+"?service=3127d89913494563a0e9684779988063";
			showDetailList.add(getDetailList(url));
		}
	}

}
