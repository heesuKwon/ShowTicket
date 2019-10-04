package com.kh.showticket.help.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.help.model.service.NoticeService;
import com.kh.showticket.help.model.vo.NoticeTicketOpen;

@RestController
@RequestMapping("/help")
public class NoticeController {
	
	@Autowired
	NoticeService noticeService;
	
	Logger logger = LoggerFactory.getLogger(getClass());

	@RequestMapping("/notice.do")
	public ModelAndView notice(@RequestParam(value="cPage",defaultValue="1",required=false) int cPage) {
		logger.debug("help페이지 요청");
		ModelAndView mav = new ModelAndView();
		
		List<NoticeTicketOpen> list = noticeService.selectNoticeTicketOpenList(cPage);
	
		mav.addObject("list",list);
		mav.addObject("cPage",cPage);
		mav.setViewName("help/notice/notice");
		return mav;
	}
	
	@RequestMapping("/noticeView.do")
	public ModelAndView noticeView(@RequestParam int noticeNo, ModelAndView mav) {
		
		NoticeTicketOpen notice = noticeService.selectOne(noticeNo);
		
		mav.addObject("n",notice);
		mav.setViewName("help/notice/noticeView");
		return mav;
	}
	
	@RequestMapping("/noticeWrite.do")
	public ModelAndView noticeWrite(ModelAndView mav) {

		mav.setViewName("help/notice/noticeWrite");
		return mav;
	}
	
	@RequestMapping(value="/noticeWriteEnd.do", method=RequestMethod.POST)
	public ModelAndView noticeWriteEnd(NoticeTicketOpen notice, Model model, ModelAndView mav) {
		String msg = "";
		String loc="";
		int result = noticeService.noticeWriteEnd(notice); 
			if(result>0) {
				msg="notice 추가 성공";
				loc="/help/notice.do";
			} 
			else {
				msg="변경실패";
				loc="/help/noticeWrite.do";
			}
			
	
			mav.addObject("msg", msg);
			mav.addObject("loc", loc);
			mav.setViewName("common/msg");
			return mav;
		
	}
	
	@RequestMapping("/noticeUpdate.do")
	public ModelAndView noticeUpdate(@RequestParam int noticeNo, ModelAndView mav) {
		NoticeTicketOpen notice = noticeService.selectOne(noticeNo);
		mav.addObject("n", notice);
		mav.setViewName("help/notice/noticeUpdate");
		return mav;
	}
	
}
