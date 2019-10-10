package com.kh.showticket.ticketing.controller;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.common.MusicalAndShow;
import com.kh.showticket.common.getApi.getApi;
import com.kh.showticket.coupon.model.service.CouponService;
import com.kh.showticket.member.model.service.MemberService;
import com.kh.showticket.member.model.vo.Member;
import com.kh.showticket.member.model.vo.Ticket;
import com.kh.showticket.ticketing.model.service.TicketingService;

@Controller
@SessionAttributes("memberLoggedIn")
@RequestMapping("/ticketing")
public class TicketingController {
	java.util.Date utilDate = new java.util.Date();
	java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	CouponService couponService;
	
	@Autowired
	TicketingService ticketingService;

	@Autowired
	MemberService memberservice;
	
	@RequestMapping("/ticketConfirm.do")
	public ModelAndView ticketCheck(ModelAndView mav, @RequestParam String playId,HttpSession session,
			@RequestParam String selectDate, @RequestParam String selectTime, @RequestParam String totalCouponPrice,
			@RequestParam String totalPointPrice) {
		logger.debug("예매확인 페이지");
		logger.debug("totalCouponPrice"+totalCouponPrice);
		String memberId  = ((Member) session.getAttribute("memberLoggedIn")).getMemberId();
		MusicalAndShow mas = new getApi().getMusicalAndShow(playId);
		Ticket ticket = new Ticket();
	    
		ticket.setTicketBuyer(memberId);
		ticket.setTicketShowId(mas.getId());
		String realPrice = mas.getPrice();
		realPrice = realPrice.replaceAll("[^0-9]", "");
		int price = Integer.parseInt("110000");
		ticket.setTicketPrice(price);
		ticket.setTicketGrade("R");
		String date_s = selectDate;
		Date date = null;
	
		SimpleDateFormat beforeFormat = new SimpleDateFormat("yyyy.mm.dd");        
        // Date로 변경하기 위해서는 날짜 형식을 yyyy-mm-dd로 변경해야 한다.
        SimpleDateFormat afterFormat = new SimpleDateFormat("yyyy-mm-dd");
        
        java.util.Date tempDate = null;
        
        try {
            // 현재 yyyymmdd로된 날짜 형식으로 java.util.Date객체를 만든다.
            tempDate = beforeFormat.parse(date_s);
        } catch (ParseException e) {
            e.printStackTrace();
        }        
        // java.util.Date를 yyyy-mm-dd 형식으로 변경하여 String로 반환한다.
        String transDate = afterFormat.format(tempDate);
        // 반환된 String 값을 Date로 변경한다.
        date = Date.valueOf(transDate);
        
		ticket.setTicketDate(date);
		ticket.setTicketPlace(mas.getHallName());
		ticket.setTicketCount(1);
		ticket.setTicketSeat("2층 R석");
		ticket.setTicketTime(mas.getTime());
		Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.DATE, 2);
        Date d = new Date(cal.getTimeInMillis());
		ticket.setTicketCancel(d);
		ticket.setTicketStatus("N");
		ticket.setTicketShowName(mas.getName());

		int tPrice = ticket.getTicketPrice()-Integer.parseInt(totalCouponPrice)-Integer.parseInt(totalPointPrice)+1000;
		ticket.setTicketPrice(tPrice);
		
		
		logger.debug("ticket"+ticket);
		mav.addObject("ticket",ticket);
		mav.addObject("tPrice",tPrice);
		mav.addObject("mas", mas);
		mav.addObject("totalCouponPrice",totalCouponPrice);
		mav.addObject("selectDate", selectDate);
		mav.addObject("selectTime", selectTime);
		mav.setViewName("ticketing/ticketConfirm");

		int result = memberservice.insertTicket(ticket);
		
		System.out.println("result"+result);
		return mav;
	}

	@RequestMapping("/ticketingPoint.do")
	public ModelAndView ticketCheck2(ModelAndView mav, HttpSession session, @RequestParam String playId, @RequestParam String selectDate, @RequestParam String selectTime) {
		logger.debug("예매확인 페이지");
		String memberId  = ((Member) session.getAttribute("memberLoggedIn")).getMemberId();

		Map<String, String> memAndPlay = new HashMap<>();
		memAndPlay.put("memberId", memberId);
		memAndPlay.put("playId", playId);
		List<Map<String, String>> cList = couponService.selectCouponListbyPlayId(memAndPlay);
		System.out.println("Clist"+cList);
		
		int myPoint = ticketingService.selectMyPoint(memberId);

		MusicalAndShow mas = new getApi().getMusicalAndShow(playId);
		mav.addObject("mas", mas);
		mav.addObject("selectDate", selectDate);
		mav.addObject("selectTime", selectTime);
		mav.addObject("cList", cList);
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
		mav.addObject("mas", mas);
		mav.addObject("selectDate", selectDate);
		mav.addObject("selectTime", selectTime);
		mav.addObject("selectNum", selectNum);
		mav.setViewName("ticketing/ticketingSeat");
		return mav;
	}

}


