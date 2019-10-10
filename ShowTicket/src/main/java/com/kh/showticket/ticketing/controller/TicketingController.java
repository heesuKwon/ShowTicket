package com.kh.showticket.ticketing.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.common.MusicalAndShow;
import com.kh.showticket.common.getApi.getApi;
import com.kh.showticket.common.selenium.Crawling;
import com.kh.showticket.common.selenium.CrawlingShow;
import com.kh.showticket.coupon.model.service.CouponService;
import com.kh.showticket.member.model.service.MemberService;
import com.kh.showticket.member.model.vo.Member;
import com.kh.showticket.member.model.vo.Ticket;
import com.kh.showticket.ticketing.model.service.TicketingService;

import lombok.extern.java.Log;
@Log
@Controller
@SessionAttributes("memberLoggedIn")
@RequestMapping("/ticketing")
public class TicketingController {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	CouponService couponService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	TicketingService ticketingService;

	@RequestMapping("/ticketConfirm.do")
	public ModelAndView ticketCheck(ModelAndView mav, @RequestParam String playId, 
			@RequestParam String selectDate, @RequestParam String selectTime) {

		logger.debug("예매확인 페이지");

		MusicalAndShow mas = new getApi().getMusicalAndShow(playId);
		mav.addObject("mas", mas);
		mav.addObject("selectDate", selectDate);
		mav.addObject("selectTime", selectTime);
		mav.setViewName("ticketing/ticketConfirm");

		return mav;
	}

	@RequestMapping("/ticketingPoint.do")
	public ModelAndView ticketCheck2(ModelAndView mav, HttpSession session, @RequestParam String playId, @RequestParam String selectDate,
									@RequestParam String selectTime, @RequestParam String[] seat) {
		String memberId  = ((Member) session.getAttribute("memberLoggedIn")).getMemberId();

		List<Map<String, String>> cList = couponService.selectMyCouponList(memberId);
		for (int i=0 ; i<seat.length ; i++) {
			System.out.println("seat"+i+":"+seat[i]);
		}
		logger.debug("예매확인: 페이지");
		logger.debug("clISt>>>>>"+cList);
		
		int myPoint = ticketingService.selectMyPoint(memberId);

		MusicalAndShow mas = new getApi().getMusicalAndShow(playId);
		mav.addObject("mas", mas);
		mav.addObject("selectDate", selectDate);
		mav.addObject("selectTime", selectTime);
		mav.addObject("cLlist", cList);
		mav.addObject("myPoint", myPoint);
		mav.setViewName("ticketing/ticketingPoint");

		return mav;
	}

	@RequestMapping(value="/ticketingSeat.do", method=RequestMethod.POST)
	public ModelAndView ticketingSeat(ModelAndView mav, @RequestParam String playId, 
			@RequestParam String selectDate, @RequestParam String selectTime, @RequestParam String selectNum) {
		logger.debug("좌석 페이지");
		logger.debug("selectNum={}", selectNum);
		MusicalAndShow mas = new getApi().getMusicalAndShow(playId);
		logger.debug("ModelAndView={}", mas);
		String html= "";
//		Ticket ticket = new Ticket();
//		ticket.setTicketTime(selectTime.substring(1,3));

//		List<Ticket> list = memberService.getTicketList();
		try {
			if(mas.getName().contains("옥탑방")) {
				html = new CrawlingShow().getImg(mas, selectDate, selectNum);
			}
			else {
				
				html = new Crawling().getImg(mas, selectDate, selectNum);
			}
		} catch (NullPointerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String main = html.substring(html.indexOf("http"), html.indexOf(" border")-1);
		logger.debug(main);
		mav.addObject("html", html);
		mav.addObject("main", main);
		mav.addObject("mas", mas);
		mav.addObject("selectDate", selectDate);
		mav.addObject("selectTime", selectTime);
		mav.addObject("selectNum", selectNum);
		mav.setViewName("ticketing/ticketingSeat");
		return mav;
	}
	

	@RequestMapping("/pay.do")
	public String ticketPay(Model model) {  // 포인트 , 아이디 
		
		logger.debug("예매결제페이지");
		
		return "/ticketing/pay";
	}
	

}


