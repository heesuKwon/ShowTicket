package com.kh.showticket.main;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.common.postconstruct.PostConstructing;
import com.kh.showticket.event.model.service.EventService;


@Controller
@RequestMapping("/main")
public class MainController {

	@Autowired
	EventService eventService;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	List<Map<String,String>> musicalDetailList = PostConstructing.musicalDetailList;
	List<Map<String,String>> showDetailList = PostConstructing.showDetailList;
	
	@RequestMapping("/search.do")
	public ModelAndView searchResult(ModelAndView mav, @RequestParam String queryKeyword) {
		List<Map<String,String>> mTicketResult = new ArrayList<>();
		List<Map<String,String>> sTicketResult = new ArrayList<>();
		List<Map<String,String>> eventResult = new ArrayList<>();
		
		
		int mCnt = 0;
		int sCnt = 0;
	
		int eCnt = 0;
		
		logger.debug("통합검색결과");
		
		//1.검색 키워드
		logger.debug("queryKeyword="+queryKeyword);

		//2.티켓 검색
		for(Map<String,String> map : musicalDetailList) {
			if(map.get("prfnm").contains(queryKeyword) || map.get("prfcast").contains(queryKeyword)) {
				mTicketResult.add(map);
			}
		}
		
		for(Map<String,String> map : showDetailList) {
			if(map.get("prfnm").contains(queryKeyword) || map.get("prfcast").contains(queryKeyword)) {
				sTicketResult.add(map);
			}
		}
		
		//3.이벤트 검색
		eventResult = eventService.searchEventList(queryKeyword);
		
		mCnt = mTicketResult.size();
		sCnt = sTicketResult.size();
		eCnt = eventResult.size();

		mav.addObject("mCnt", mCnt);
		mav.addObject("sCnt", sCnt);
		mav.addObject("eCnt", eCnt);
		mav.addObject("mTicketResult",mTicketResult);
		mav.addObject("sTicketResult",sTicketResult);
		mav.addObject("eventResult",eventResult);
		
		mav.setViewName("main/search");
		return mav;
	}
	

	
}
