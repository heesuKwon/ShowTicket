package com.kh.showticket;

import static com.kh.showticket.common.getApi.getApi.getBoxList;
import static com.kh.showticket.common.getApi.getApi.getConcatList;
import static com.kh.showticket.common.getApi.getApi.getTotalBoxList;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.help.model.service.NoticeService;
import com.kh.showticket.help.model.vo.NoticeTicketOpen;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	NoticeService noticeService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, ModelAndView model,@RequestParam(value="cPage",defaultValue="1",required=false) int cPage) {
		
		String url1 = "http://kopis.or.kr/openApi/restful/boxoffice?service=9f6a9651f5e648ac95d2cc7a210a4587&ststype=day&date=20190923&catecode=AAAA";
		String url2 = "http://kopis.or.kr/openApi/restful/boxoffice?service=9f6a9651f5e648ac95d2cc7a210a4587&ststype=day&date=20190823&catecode=AAAB";
		String url3 = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=9f6a9651f5e648ac95d2cc7a210a4587&stdate=20191011&eddate=20200101&rows=5&cpage=1&shcate=AAAA";		
		String url4 = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=9f6a9651f5e648ac95d2cc7a210a4587&stdate=20191011&eddate=20200101&rows=5&cpage=1&shcate=AAAB";		
		
		List<NoticeTicketOpen> list = noticeService.selectNoticeTicketOpenList(cPage);
		 
		model.addObject("list",list); 
		model.addObject("BoxlistM", getBoxList(url1));
		model.addObject("BoxlistP", getBoxList(url2));
		model.addObject("ticketOpen",getConcatList(url3,url4));
		model.addObject("BoxlistT", getTotalBoxList(url2,url1));
		
		logger.debug("ticketOpen"+getConcatList(url3,url4));
		
		model.addObject("cPage",cPage);	
		model.setViewName("forward:/index.jsp");
		return model;
	}
	
	
	
}