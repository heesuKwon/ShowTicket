package com.kh.showticket.talk.controller;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

public class TalkController {
	
	@GetMapping("help/talkStomp.do")
	public void websocket(Model model,
						 HttpSession session) {
		//비회원일 경우, httpSessionId값을 memberId로 사용한다.
		
		//임시
		String memberLoggedIn = "honggd";
		
	    /*String memberId = Optional.ofNullable(memberLoggedIn)
	                              .map(Member::getMemberId)
	                              .orElse(session.getId());//HttpSession의 JSESSIONID값을 저장
		*/
	}

}
