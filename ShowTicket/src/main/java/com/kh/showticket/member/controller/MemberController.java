package com.kh.showticket.member.controller;


import static com.kh.showticket.common.getApi.getApi.getList;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.common.MusicalAndShow;
import com.kh.showticket.common.getApi.getApi;
import com.kh.showticket.common.mailhandler.MailHandler;
import com.kh.showticket.common.mailhandler.TempKey;
import com.kh.showticket.coupon.model.service.CouponService;
import com.kh.showticket.member.model.service.MemberService;
import com.kh.showticket.member.model.vo.Member;
import com.kh.showticket.member.model.vo.MyPoint;
import com.kh.showticket.member.model.vo.Ticket;


@RequestMapping("/member")
@Controller
@SessionAttributes("memberLoggedIn")
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@Autowired
	CouponService couponService;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	JavaMailSender mailSender;

	private Logger logger = LoggerFactory.getLogger(getClass());

	@RequestMapping("/memberEnroll.do")
	public void memberEnroll() {

		// member/memberEnroll
		// -> ViewNameTransLator객체가 view단을 자동으로 찾음.
		System.out.println("서버 구동 후 자바 코드 수정!!");

	}
	
	@RequestMapping("/reservation.do")
	public String reservation(Model model, @RequestParam String memberId, @RequestParam int cPage) {

		//cPage = 1;
		int showContent = 10;
		//int pageBarSize = 4;
		
		// 1.업무 로직
		List<Ticket> list = memberService.selectReservationList(memberId);
		logger.debug("마이페이지 예매자 확인 :" + memberId);
		
		// 해당 회원의 전체 예매수 및 전체 페이지수
		int totalContentCount = list.size();
		logger.debug("예매자의 총 예매수 : "+totalContentCount);
		
		//int totalPage = (int)Math.ceil(((double)totalContentCount/showContent));
		//logger.debug("총 예매수에 따라 나와야할 총 페이지수 : "+totalPage);
		
		//int barStart = ((cPage-1)/pageBarSize)*pageBarSize + 1;
		//int barEnd = barStart + pageBarSize -1;
		///int barNo = barStart;
		//logger.debug("시작페이지 "+barStart+"~"+"종료페이지"+barEnd);
		//logger.debug("현재페이지랑 비교값 : "+barNo);
		
		int startContent = (cPage-1)*showContent + 1;
		int endContent = cPage*showContent;
		
		Map<String,Object> page = new HashMap<>();
		page.put("memberId",memberId);
		page.put("startContent",startContent);
		page.put("endContent",endContent);	
//		page.put("totalPage",totalPage);
//		page.put("barEnd",barEnd);
//		page.put("barNo",barNo);
		page.put("cPage",cPage);

		List<Ticket> pageList = memberService.selectReservationPage(page);
		
		// 2.view단처리
		//model.addAttribute("list", list);
		model.addAttribute("pageList", pageList);
		model.addAttribute("memberId", memberId);
		model.addAttribute("page", page);
				
		return "/member/reservation";
	}

	 @ResponseBody
	 @RequestMapping(value="/reservationTermAjax.do", method=RequestMethod.POST)
	public Map<String,Object> reservationTermAjax(@RequestParam String memberId, @RequestParam int num,
												 @RequestParam int s, @RequestParam int e, @RequestParam int page) {
		// 현재 list들은 10개씩만 나오게 되어있다.
		
		int startContent = s;
		int endContent = e;
		int minusNum = num * -1;

		// 페이징바 변수
		int cPage = 1;
		int showContent = 10;
		int pageBarSize = 4;
		int totalContent = 0;
		int totalPage = 0;
		int barStart = 0;
		int barEnd = 0;
		int barNo = 0;
		
		Map<String,Object> rMap = new HashMap<>();	
		
		List<Ticket> list = new ArrayList<>();
		
		Map<String,Object> content = new HashMap<>();
		content.put("memberId", memberId);
		content.put("num", minusNum);
		content.put("startContent",startContent);
		content.put("endContent",endContent);
		
		Map<String,Object> paging = new HashMap<>();
		
		
		logger.debug("ajax용 memberId :" + memberId);
		logger.debug("ajax용 num:" + minusNum);
		logger.debug("ajax용 s:" + startContent);
		logger.debug("ajax용 e:" + endContent);

		if(minusNum == -100){
			list = memberService.selectReservationPage(content);
			totalContent = list.size();
			totalPage = (int)Math.ceil(((double)totalContent/showContent));
			cPage = page;
		}
		else if(minusNum == -1 || minusNum == -2 || minusNum == -3) {
			list = memberService.selectReservationTerm(content);
			totalContent = list.size();
			totalPage = (int)Math.ceil(((double)totalContent/showContent));
			cPage = page;
		}
		else if(minusNum == -15) {			
			list = memberService.selectReservationTerm15(content);
			totalContent = list.size();
			totalPage = (int)Math.ceil(((double)totalContent/showContent));
			System.out.println("15list!!!!!!!!!!!!!!!!!!!!!"+list);
			cPage = page;
		}
		
		barStart = ((cPage-1)/pageBarSize)*pageBarSize + 1;
		barEnd = barStart + pageBarSize -1;
		barNo = barStart;
		
		rMap.put("reservationList",list);
		rMap.put("totalPage",totalPage);
		rMap.put("barNo",barNo);
		rMap.put("barEnd",barEnd);
		rMap.put("memberId",memberId);
		rMap.put("cPage",cPage);
		
		return rMap;
	 }
	
	
	@RequestMapping("/memberView.do")
	public void memberView() {
		
	}

	@RequestMapping("/myCoupon.do")
	public ModelAndView myCoupon(ModelAndView mav/*,String memberLoggedIn*/) {
		//임시
		//@SessionAttribute...
		//String memberLoggedIn = (Member) session.getAttribute("memberLoggedIn");
		String memberLoggedIn = "honggd";
		
		List<Map<String,String>> myCouponList = couponService.selectMyCouponList(memberLoggedIn);
		
		mav.addObject("myCouponList", myCouponList);
		mav.setViewName("member/myCoupon");
		
		return mav;
	}

	@RequestMapping("/myPoint.do")
	public ModelAndView myPoint(ModelAndView mav) {
		
		//임시
		String memberLoggedIn = "honggd";
		
		int totalPoint = 0;
		
		List<MyPoint> myPointList = memberService.selectMyPointList(memberLoggedIn);

		//멤버에서끌어오기
		totalPoint = memberService.selectOneMember(memberLoggedIn).getPoint();
		
		mav.addObject("myPointList", myPointList);
		mav.addObject("totalPoint", totalPoint);
		mav.setViewName("member/myPoint");
		
		return mav;
	}

	@RequestMapping("/myStandBy.do")
	public ModelAndView myStandBy(ModelAndView mav) {
		
		//임시
		String memberLoggedIn = "honggd";
		
		List<String> standByList = memberService.selectMyStandByList(memberLoggedIn);
		List<Map<String, String>> myStandByList = null;
		List<Map<String, String>> myStandByMList = new ArrayList<>();
		List<Map<String, String>> myStandBySList = new ArrayList<>();
		
		if(standByList.size()>0) {
			for(String showId : standByList) {
				String url = "http://kopis.or.kr/openApi/restful/pblprfr/"+showId+"?service=3127d89913494563a0e9684779988063";
				myStandByList = getList(url);	
			}	
		}
		
		if(myStandByList != null) {
			for(Map<String, String> map : myStandByList) {
				if(map.get("genrenm").equals("뮤지컬")) {
					myStandByMList.add(map);
				}
				if(map.get("genrenm").equals("연극")) {
					myStandBySList.add(map);
				}
			}
		}


		mav.addObject("myStandByMList", myStandByMList);
		mav.addObject("myStandBySList", myStandBySList);
		
		mav.setViewName("member/myStandBy");
		return mav;
	}
	
	@RequestMapping("/deleteStandBy.do")
	public ModelAndView deleteMyStandBy(ModelAndView mav,
										@RequestParam String showId) {
		logger.debug("showId={}", showId);
		
		String memberLoggedIn = "honggd";
		
		memberService.deleteMyStandBy(memberLoggedIn, showId);
		
		String msg = "대기가 취소되었습니다.";
		String loc = "/member/myStandBy.do";
		
		mav.addObject("msg", msg);
		mav.addObject("loc", loc);
		mav.setViewName("common/msg");
		
		return mav;
	}
	
	
	@RequestMapping("/myFollow.do")
	public ModelAndView myFollow(HttpSession session, ModelAndView mav) {
		String memberId = ((Member)session.getAttribute("memberLoggedIn")).getMemberId();

		List<String> follows = memberService.selectFollow(memberId);
		List<MusicalAndShow> masList = new ArrayList<>();
		getApi getApi = new getApi();
		for(String follow: follows) {
			masList.add(getApi.getMusicalAndShow(follow));
		}
		mav.addObject("masList", masList);
		mav.setViewName("/member/myFollow");
		return mav;
	}
	
	@RequestMapping("/deleteFollow.do")
	public ModelAndView deleteFollow(HttpSession session, ModelAndView mav, @RequestParam String playId) {
		String memberId = ((Member)session.getAttribute("memberLoggedIn")).getMemberId();
		Map<String, String> follow = new HashMap<>();
		follow.put("memberId", memberId);
		follow.put("playId",playId);
		memberService.deleteFollow(follow);
		
		String msg = "관심공연이 취소되었습니다.";
		String loc = "/member/myFollow.do";
		
		mav.addObject("msg", msg);
		mav.addObject("loc", loc);
		mav.setViewName("common/msg");
		
		return mav;
	}
	
	@RequestMapping(value="/memberUpdate.do")
	public String updateMember(Member member, Model model) {
		logger.debug("memberId="+member.getMemberId());
		logger.debug("member="+member);

		int result = memberService.updateMember(member);

		// 2. view단 처리
		model.addAttribute("msg", result>0?"회원 정보 수정 성공!":"회원 정보 수정 실패!");
		model.addAttribute("loc", "/");

		return "common/msg";
	}
	@RequestMapping(value="/deleteMember.do")
	public String deleteMember(@RequestParam String memberId,
								Model model,
								SessionStatus sessionStatus) {
		logger.info("memeberId="+memberId);
		logger.debug("memeberId="+memberId);
		int result = memberService.deleteMember(memberId);
		if(!sessionStatus.isComplete())
			sessionStatus.setComplete(); 
		// 2. view단 처리
		model.addAttribute("msg", result>0?"회원 삭제 성공!":"회원 삭제 실패!");
		model.addAttribute("loc", "/");
		
		return "common/msg";

	}
	@RequestMapping("/memberEnrollEnd.do")
	public String memberEnrollEnd(Member member, Model model) {

		// 0. 비밀번호 암호화
		String rawPassword = member.getPassword();
		System.out.println("암호화 전:"+ rawPassword);
		String encodedPassword = passwordEncoder.encode(rawPassword);
		System.out.println("암호화 후:"+ encodedPassword);
		// 암호화된 비밀번호를 member객체 대입
		member.setPassword(encodedPassword);

		// 1. 비즈니스 로직
		int result = memberService.insertMember(member);

		// 2. view단 처리
		model.addAttribute("msg", result>0?"회원 가입 성공!":"회원 가입 실패!");
		model.addAttribute("loc", "/");

		return "common/msg";
	}
	
	/* 이메일 인증 관련 코드 */
	@RequestMapping("/sendMail.do")
	@ResponseBody
	public String joinPost(@RequestParam String email, Model model) throws Exception {
		logger.info("member email: " + email);
		String authKey = memberService.createMail(email);
		
		
		return authKey;
	}
	
//	@RequestMapping(value="joinConfirm", method=RequestMethod.GET)
//	public String emailConfirm(Member member, Model model) throws Exception {
//		logger.info(member.getEmail() + ": auth confirmed");
//		member.setEmailAuthstatus(1);	// authstatus를 1로,, 권한 업데이트
////		memberService.updateMailAuthstatus(member);
//		
//		model.addAttribute("email_auth_check", 1);
//		
//		return "/user/joinPost";
//	}
	
	/*이메일 인증 관련 코드 끝*/
	
	@RequestMapping(value="/memberLogin.do", method=RequestMethod.POST)
	public String memberLogin(@RequestParam String memberId,
			@RequestParam String password,
			Model model) {

		// 1.업무로직 : 회원 정보 가져오기
		Member member = memberService.selectOneMember(memberId);

		String msg = "";

		// 1. 아이디가 존재하지 않는 경우
		if(member == null) {
			msg = "아이디가 존재하지 않습니다.";
		}
		else {
			// 2. 로그인 성공
			if(passwordEncoder.matches(password, member.getPassword())) {
				msg = "로그인 성공!";

				// memberLoggedIn 세션 속성에 지정
				// model에 지정된 속성은 requestScope 속성에 담긴다.
				model.addAttribute("memberLoggedIn", member);

			}
			// 3. 비밀번호가 틀린 경우
			else {
				msg = "비밀번호가 일치하지 않습니다.";
			}
		}

		// 2. view단 처리
		model.addAttribute("msg", msg);
		model.addAttribute("loc", "/");

		return "common/msg";		
	}
	
	/**
	 * 세션 무효화하기
	 * session.setAttribute("memberLoggedIn", member)
	 * -> session.invalidate()
	 * 
	 * @SessionAttributes("memberLoggedIn")
	 * model.addAttribute("memberLoggedIn",member)
	 * -> SessionStatus.setComplete()
	 */
	@RequestMapping("/memberLogout.do")
	public String memberLogout(SessionStatus sessionStatus) {

		if(!sessionStatus.isComplete())
			sessionStatus.setComplete();

		// 로그아웃시 메인 페이지로 보내기
		return "redirect:/";
	}
	
	/**
	 * 
	 * 웹서비스(html문서)  + data(xml, json) 
	 * 
	 * REST API
	 * Representational State Transfer API 
	 * 
	 * @ResponseBody: 자바객체를 xml/json타입으로 변환해서 전송
	 * 		- 자바객체를 리턴
	 * @RequestBody: 클라이언트가 전송한 xml/json타입을 자바객체로 변환해서 업무로직에 활용
	 */
	@ResponseBody
	@RequestMapping("/checkIdDuplicate.do")
	public Map<String,Object> checkIdDuplicate(@RequestParam String memberId) {
		logger.debug("id중복체크: @ResponseBody 이용방식");

		boolean isUsable = memberService.selectOneMember(memberId)==null?
				true:false;
		Map<String, Object> map = new HashMap<>();
		map.put("isUsable", isUsable);

		return map;

	}

	
/*아이디 비번 찾기 팝업 이동 */
	@RequestMapping("/memberIdFind.do")
	public String memberIdFinder() {
		
		
		
		return "/member/memberIdFind";
	}

	@RequestMapping("/memberPwdFind.do")
	public String memberPwdFinder() {
		
		
		
		return "/member/memberPwdFind";
	}
	
/*-----------------*/	


//	/*관리자페이지로 이동???*/
//    @ResponseBody
//    @RequestMapping("/adminpage.do")
//    public ModelAndView adminPage(ModelAndView mav) {
//        mav.setViewName("member/adminreport");
//        return mav;
//    }
//    
//    @ResponseBody
//    @RequestMapping("/adminmList.do")
//    public ModelAndView adminmemberList(ModelAndView mav) {
//        mav.setViewName("member/adminmList");
//        return mav;
//    }
    @ResponseBody
    @RequestMapping("/bookticket.do")
    public ModelAndView bookticket(ModelAndView mav) {
        mav.setViewName("member/bookticket");
        return mav;
    }
    
    
    @RequestMapping(value="/updatePwd.do",method=RequestMethod.GET)
	public String changePasswd(@RequestParam String memberId, Model model) {

		model.addAttribute("Member",memberService.selectOneMember(memberId));
		return "member/updatePwd";
	}

    
    @RequestMapping(value="/updatePasswordEnd.do",method=RequestMethod.POST)
	public String changePassword(@RequestParam String memberId,
								 @RequestParam String password,
								 @RequestParam String password_new, Model model) {
    				// 1.업무로직 : 회원 정보 가져오기
    				Member member = memberService.selectOneMember(memberId);
    				String pwd =member.getPassword();

    				System.out.println("받아온 비번:"+password);
    				
    				String newpassword = passwordEncoder.encode(password_new); //변경비번
    				int result =0;
    				
    				String msg = "";
    				String loc="";
	    			if(passwordEncoder.matches(password,pwd)==true) {
	    				//비밀번호가 맞으면 
	    				member.setPassword(newpassword);
	    				
	    				result =memberService.updatePwd(member); 
	
	    				if(result>0) {
	    					msg="비밀번호 변경성공";
	    					String script="self.close()";
	    					loc="/memberLogout.do";
	    					model.addAttribute("script",script);
	    					model.addAttribute("script",loc);
	    				}else {
	    					msg="변경실패";
	    				}
	    			}
	    			// 3. 비밀번호가 틀린 경우
	    			else {
	    				msg = "비밀번호가 일치하지 않습니다.";
	    				loc="/member/updatePwd.do?memberId="+memberId;
	    			}
	    				
	
	    			
	    			model.addAttribute("msg", msg);
	    			model.addAttribute("loc", loc); 
	    			
	    			return "common/msg";
	
				}
    @RequestMapping("/chkEmailUsable.do")
    @ResponseBody
    public String chkEmailUsable(@RequestParam String email){
    
    	
    	int cnt = 0;
    	String authCode = null;
   
    	cnt = memberService.chkEmailUsable(email);
    	logger.debug("cnt={}", cnt);
    	
    	//이메일 중복확인
    	if(cnt==0) {
    		String key = new TempKey().getKey(6, false); //6자리 랜덤 코드
    	
    		MailHandler sendMail;
			
    		try {
				sendMail = new MailHandler(mailSender);
				
				sendMail.setSubject("[ShowTicket] 이메일 인증코드입니다.");
	            sendMail.setText(new StringBuffer().append("<h1>이메일인증</h1>")
	            		.append("인증코드는 ")
	                    .append("<strong>"+key+"</strong>")
	                    .append("입니다.")
	                    .toString());
	            
	            sendMail.setFrom("showticket77@gmail.com", "(주)쇼티켓");
	            sendMail.setTo(email);
	            sendMail.send();
	           
			} catch (MessagingException e) {
				e.printStackTrace();
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
    		
    		authCode = key;
           
    	}
    	
    	//result.put("cnt", Integer.toString(cnt));
    	//result.put("authCode", authCode);
    	
    	
    	return authCode;
    }
    
    @RequestMapping(value="/reservationCancle.do",method=RequestMethod.POST)
    public String reservationCancle(Model model, @RequestParam int cancelTNo, @RequestParam String memberId) {
    	
    	logger.debug("취소할 예매번호: "+cancelTNo);
    	logger.debug("취소할 예매자: "+memberId);

    	Map<String, Object> cancel = new HashMap<>();
    	cancel.put("cancelTNo",cancelTNo);
    	cancel.put("memberId",memberId);
    	
    	int result = memberService.updateReservation(cancel);
    	
 		model.addAttribute("msg", result>0?"예매 취소 완료":"예매 취소 실패!");
    	model.addAttribute("loc", "/member/reservation.do?memberId="+memberId+"&cPage="+1);

    	return "common/msg";
    }
	
}

	