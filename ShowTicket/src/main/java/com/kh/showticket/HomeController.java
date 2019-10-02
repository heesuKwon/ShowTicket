package com.kh.showticket;

import static com.kh.showticket.common.getApi.getApi.getBoxList;
import static com.kh.showticket.common.getApi.getApi.getConcatList;
import static com.kh.showticket.common.getApi.getApi.getTotalBoxList;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

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
		Calendar c1 = Calendar.getInstance();
		c1.add(Calendar.DATE, -1); // 오늘날짜로부터 -1
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd"); // 날짜 포맷 
		String sysdate = sdf.format(c1.getTime()); // String으로 저장
		c1.add(Calendar.DATE, -2); // 오늘날짜로부터 -2
		SimpleDateFormat sd = new SimpleDateFormat("yyyyMMdd");
		String yesterday = sd.format(c1.getTime());
		c1.add(Calendar.DATE, 30); // 오늘날짜로부터 30
		SimpleDateFormat nm = new SimpleDateFormat("yyyyMMdd");
		String nextMonth = nm.format(c1.getTime());
		
		String url1 = "http://kopis.or.kr/openApi/restful/boxoffice?service=9f6a9651f5e648ac95d2cc7a210a4587&ststype=day&date="+sysdate+"&catecode=AAAB";
		String url2 = "http://kopis.or.kr/openApi/restful/boxoffice?service=9f6a9651f5e648ac95d2cc7a210a4587&ststype=day&date="+sysdate+"&catecode=AAAA";
		String url2_1 = "http://kopis.or.kr/openApi/restful/boxoffice?service=9f6a9651f5e648ac95d2cc7a210a4587&ststype=day&date="+yesterday+"&catecode=AAAA";

		String urlDL1 = "http://kopis.or.kr/openApi/restful/boxoffice?service=9f6a9651f5e648ac95d2cc7a210a4587&ststype=day&date=20190923&catecode=AAAA";
		String urlDL2 = "http://kopis.or.kr/openApi/restful/boxoffice?service=9f6a9651f5e648ac95d2cc7a210a4587&ststype=day&date=20190823&catecode=AAAB";
		
		
		String url3 = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=9f6a9651f5e648ac95d2cc7a210a4587&stdate="+sysdate+"&eddate="+nextMonth+"&rows=5&cpage=1&shcate=AAAA";		
		String url4 = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=9f6a9651f5e648ac95d2cc7a210a4587&stdate="+sysdate+"&eddate="+nextMonth+"&rows=5&cpage=1&shcate=AAAB";		
		
		List<NoticeTicketOpen> list = noticeService.selectNoticeTicketOpenList(cPage);
		
		model.addObject("list",list); 
		model.addObject("BoxlistM", getBoxList(url1));
		model.addObject("BoxlistP", getTotalBoxList(url2,url2_1));
		model.addObject("ticketOpen",getConcatList(url3,url4));
		model.addObject("BoxlistT", getTotalBoxList(urlDL2,urlDL1));
		/*
		 * for(int i=0;i<getConcatList(url3,url4).size();i++) {
		 * logger.debug("list"+i+"번째");
		 * logger.debug("list내용"+getConcatList(url3,url4).get(i)); Map<String, String>
		 * map = new HashMap<String, String>(); map = getConcatList(url3,url4).get(i);
		 * NoticeTicketOpen nto = new NoticeTicketOpen(); nto.set
		 * 
		 * int result = noticeService.insertOne(map); }
		 */
		
		
		model.addObject("cPage",cPage);	
		model.setViewName("forward:/index.jsp");
		
		logger.debug("ticketOpen"+getConcatList(url3,url4));
		
		return model;
	}
	
	
	
}