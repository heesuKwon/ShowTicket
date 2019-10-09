package com.kh.showticket.ticketing.controller;

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
import com.kh.showticket.member.model.vo.Member;

@Controller
@SessionAttributes("memberLoggedIn")
@RequestMapping("/ticketing")
public class TicketingController {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	CouponService couponService;

	@RequestMapping("/ticketConfirm.do")
	public ModelAndView ticketCheck(ModelAndView mav) {

		logger.debug("예매확인 페이지");

		mav.setViewName("ticketing/ticketConfirm");

		return mav;
	}

	@RequestMapping("/ticketingPoint.do")
	public ModelAndView ticketCheck2(ModelAndView mav, HttpSession session, @RequestParam String playId, @RequestParam String selectDate, @RequestParam String selectTime) {
		String memberId  = ((Member) session.getAttribute("memberLoggedIn")).getMemberId();

		List<Map<String, String>> cList = couponService.selectMyCouponList(memberId);

		logger.debug("예매확인 페이지");
		logger.debug("clISt>>>>>"+cList);

		MusicalAndShow mas = new getApi().getMusicalAndShow(playId);
		mav.addObject("mas", mas);
		mav.addObject("selectDate", selectDate);
		mav.addObject("selectTime", selectTime);
		mav.addObject("cLlist", cList);
		mav.setViewName("ticketing/ticketingPoint");

		return mav;
	}

	@RequestMapping(value="/ticketingSeat.do", method=RequestMethod.POST)
	public ModelAndView ticketingSeat(ModelAndView mav, @RequestParam String playId, 
			@RequestParam String selectDate, @RequestParam String selectTime, @RequestParam String selectNum) {
		logger.debug("좌석 페이지");
		MusicalAndShow mas = new getApi().getMusicalAndShow(playId);
		mav.addObject("mas", mas);
		mav.addObject("selectDate", selectDate);
		mav.addObject("selectTime", selectTime);
		mav.addObject("selectNum", selectNum);
		mav.setViewName("ticketing/ticketingSeat");
		return mav;
	}

}


