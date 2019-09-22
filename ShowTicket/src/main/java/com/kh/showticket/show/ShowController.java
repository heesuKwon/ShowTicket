package com.kh.showticket.show;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.kh.showticket.common.getApi.getApi.*;

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
	
	DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	DocumentBuilder dBuilder;
	Document doc;
	
	
	@RequestMapping("/show.do")
	public ModelAndView show(ModelAndView mav) {
		logger.debug("쇼리스트페이지");
	
		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190901&eddate=20191231&cpage=1&rows=8&shcate=AAAA";

		List<Map<String,String>> showList = getList(url);
		
		mav.addObject("showList", showList);
		mav.setViewName("menu/show");
		return mav;
	}
	
	
	@RequestMapping("/showAjax.do")
	public List<Map<String,String>> showAjax(@RequestParam int cpage) {
		logger.debug("전체쇼 AJAX");
		logger.debug("cpage={}", cpage);

		String url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=3127d89913494563a0e9684779988063&stdate=20190901&eddate=20191231&cpage="+cpage+"&rows=8&shcate=AAAA";
		
		return getList(url);

	}

	
	


	
}
