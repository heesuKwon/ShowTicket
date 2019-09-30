package com.kh.showticket.show;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.kh.showticket.common.getApi.getApi.*;

import javax.annotation.PostConstruct;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

@RestController
@RequestMapping("/show")
public class ShowController {
	Logger logger = LoggerFactory.getLogger(getClass());
	

	static List<Map<String,String>> showDetailList;
	
	@PostConstruct
	public void postConstruct() {
		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190923&eddate=20191031&cpage=1&rows="+Integer.MAX_VALUE+"&shcate=AAAA";	
		List<Map<String,String>> showAllList = getList(url);
		
		showDetailList = new ArrayList<>();

		for(Map<String,String> map : showAllList) {
			url = "http://www.kopis.or.kr/openApi/restful/pblprfr/"+map.get("mt20id")+"?service=3127d89913494563a0e9684779988063";
			showDetailList.add(getDetailList(url));
		}
	
	}
	
	
	@RequestMapping("/show.do")
	public ModelAndView show(ModelAndView mav) {
		logger.debug("쇼리스트페이지");
	
		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190923&eddate=20190923&cpage=1&rows=8&shcate=AAAA";
		String url2 = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=ebfe5d2574de4631b6eda133b56b1297&stdate=20190928&eddate=20191031&cpage=1&rows=5&shcate=AAAA&prfstate=02";
		
		List<Map<String,String>> showList = getList(url);
		List<Map<String,String>> recentShowList = getList(url2);
		
		mav.addObject("showList", showList);
		mav.addObject("recentShowList", recentShowList);
		mav.setViewName("menu/show");
		return mav;
	}
	
	
	@RequestMapping("/showAjax.do")
	public List<Map<String,String>> showAjax(@RequestParam int cpage) {
		logger.debug("전체쇼 AJAX");
		logger.debug("cpage={}", cpage);

		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190923&eddate=20190923&cpage="+cpage+"&rows=8&shcate=AAAA";
		
		return getList(url);

	}
	
	@RequestMapping("/showSearch.do")
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
			for(Map<String, String> map : showDetailList) {
				if(map.get("prfnm").contains(srchKeyword) || map.get("prfcast").contains(srchKeyword)) {
					result.add(map);
				}
			}

		}
		else if(cate.equals("searchTitle")) {
			for(Map<String, String> map : showDetailList) {
				if(map.get("prfnm").contains(srchKeyword)) {
					result.add(map);
				}
			}
		}
		else if(cate.equals("searchActor")) {
			for(Map<String, String> map : showDetailList) {
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
