package com.kh.showticket.help.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.help.model.service.NoticeService;
import com.kh.showticket.help.model.vo.NoticeTicketOpen;

@Controller
@RequestMapping("/help")
//@SessionAttributes("memberLoggedIn")
public class HelpController {
	
	@Autowired
	NoticeService noticeService;
	
	Logger logger = LoggerFactory.getLogger(getClass());

	
	@RequestMapping("/main.do")
	public ModelAndView main(ModelAndView mav) {
		logger.debug("help페이지 요청");
		
		mav.setViewName("help/main");
		return mav;
	}
	@RequestMapping("/notice.do")
	public ModelAndView notice(@RequestParam(value="cPage",defaultValue="1",required=false) int cPage) {
		logger.debug("help페이지 요청");
		ModelAndView mav = new ModelAndView();
		
		List<NoticeTicketOpen> list = noticeService.selectNoticeTicketOpenList(cPage);
	
		mav.addObject("list",list);
		mav.addObject("cPage",cPage);
		mav.setViewName("help/notice");
		return mav;
	}
	@RequestMapping("/faq.do")
	public ModelAndView faq(ModelAndView mav) {
		logger.debug("help페이지 요청");
		
		mav.setViewName("help/faq");
		return mav;
	}

	
}
