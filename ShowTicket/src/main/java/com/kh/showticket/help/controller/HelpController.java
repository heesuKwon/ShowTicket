package com.kh.showticket.help.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.help.model.service.FaqService;
import com.kh.showticket.help.model.service.NoticeService;
import com.kh.showticket.help.model.vo.Faq;
import com.kh.showticket.help.model.vo.NoticeTicketOpen;

@RestController
@RequestMapping("/help")
//@SessionAttributes("memberLoggedIn")
public class HelpController {
	
	@Autowired
	NoticeService noticeService;
	@Autowired
	FaqService faqService;
	
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
	@ResponseBody
	@RequestMapping("/faq.do")
	public ModelAndView faq(ModelAndView mav) {
		logger.debug("help페이지 요청");
		/*
		 * List<Faq> faqTicketList = faqService.faqTicketList();
		 * logger.debug("faqTicketList="+faqTicketList); mav.addObject("list",
		 * faqTicketList);
		 */
		mav.setViewName("help/faq");
		return mav;
	}
	@RequestMapping("/faqWrite.do")
	public ModelAndView faqWrite(ModelAndView mav) {
		logger.debug("help페이지 요청");
		
		mav.setViewName("help/faqWrite");
		return mav;
	}
	@RequestMapping(value="/faqWriteEnd.do", method=RequestMethod.POST)
	public String faqWriteEnd(Faq faq, Model model) {
		logger.debug("faq"+ faq);
		
		String msg = "";
		String loc="";
		int result = faqService.faqWriteEnd(faq); 
			if(result>0) {
				msg="faq 추가 성공";
				loc="/help/faq.do";
			} 
			else {
				msg="변경실패";
				loc="/help/faqWrite.do";
			}
			
			model.addAttribute("msg", msg);
			model.addAttribute("loc", loc); 
	
			return "common/msg";
		
		
	}
	/*LIST 가지고옴*/
	@ResponseBody
	@RequestMapping(value="/faqTicketList.do", method=RequestMethod.POST)
	public List<Faq> faqTicketList(@RequestBody Faq faq) {
		logger.debug("post로 넘어온 help.faq:"+faq);
		List<Faq> list = faqService.faqTicketList(faq);
		logger.debug("faqTicketList="+list);
		return list;
	}
	@RequestMapping("/faqBuyList.do")
	public ModelAndView faqBuyList(ModelAndView mav) {
		List<Faq> list = faqService.faqBuyList();	
		logger.debug("faqBuyList="+list);
		mav.addObject("list", list);
		mav.setViewName("help/faq");
		return mav;
	}
	@RequestMapping("/faqMemberList.do")
	public ModelAndView faqMemberList(ModelAndView mav) {
		List<Faq> faqMemberList = faqService.faqMemberList();
		logger.debug("faqMemberList="+faqMemberList);
		mav.addObject("list", faqMemberList);
		mav.setViewName("help/faq");
		return mav;
	}
	@RequestMapping("/faqCouponList.do")
	public ModelAndView faqCouponList(ModelAndView mav) {
		List<Faq> faqCouponList = faqService.faqCouponList();
		logger.debug("faqCouponList="+faqCouponList);
		mav.addObject("list", faqCouponList);
		mav.setViewName("help/faq");
		return mav;
	}
	@RequestMapping("/faqElseList.do")
	public ModelAndView faqElseList(ModelAndView mav) {
		List<Faq> faqElseList = faqService.faqElseList();
		logger.debug("faqElseList="+faqElseList);
		mav.addObject("list", faqElseList);
		mav.setViewName("help/faq");
		return mav;
	}
	@RequestMapping("/faqAllList.do")
	public ModelAndView faqAllList(ModelAndView mav) {
		List<Faq> faqAllList = faqService.faqAllList();
		logger.debug("faqAllList="+faqAllList);
		mav.addObject("list", faqAllList);
		
		mav.setViewName("help/faq");
		return mav;
	}
	
//	@RequestMapping("/talk.do")
//	public ModelAndView talk(ModelAndView mav) {
//		mav.setViewName("help/talk");
//		return mav;
//	}
	
}
