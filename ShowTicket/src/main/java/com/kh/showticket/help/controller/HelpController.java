package com.kh.showticket.help.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.member.model.service.MemberService;
import com.kh.showticket.member.model.vo.Member;

@Controller
@RequestMapping("/help")
//@SessionAttributes("memberLoggedIn")
public class HelpController {
	
	Logger logger = LoggerFactory.getLogger(getClass());

	
	@RequestMapping("/main.do")
	public ModelAndView main(ModelAndView mav) {
		logger.debug("help페이지 요청");
		
		mav.setViewName("help/main");
		return mav;
	}
	@RequestMapping("/notice.do")
	public ModelAndView notice(ModelAndView mav) {
		logger.debug("help페이지 요청");
		
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
