package com.kh.showticket.talk.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.member.model.vo.Member;
import com.kh.showticket.talk.model.service.TalkService;

@Controller
public class SupporterTalkController {	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	TalkService talkService;
	
	@RequestMapping("/help/supporter.do")
	public ModelAndView admin(ModelAndView mav, 
					  HttpSession session, 
					  @SessionAttribute(value="memberLoggedIn", required=false) Member memberLoggedIn){
		String memberId = Optional.ofNullable(memberLoggedIn).map(Member::getMemberId)
															 .orElseThrow(IllegalStateException::new);
		String chatId = null;
		
		//if(!"ticket77".equals(memberId)) throw new IllegalStateException("로그인 후 이용하세요.");
		
		List<Map<String, String>> recentList = talkService.findRecentList();
		logger.info("recentList={}",recentList);
		
		mav.addObject("recentList", recentList);
		mav.setViewName("help/supporterTalk");
		return mav;
	}
	
	
	@RequestMapping("/talk.do/{chatId}")
	public String adminChat(@PathVariable("chatId") String chatId, Model model){
		
		List<Map<String, String>> chatList = talkService.findChatListByChatId(chatId);
		model.addAttribute("chatList", chatList);
		
		logger.info("chatList={}",chatList);
		return "help/talk";
	}
}
