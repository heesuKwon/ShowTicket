package com.kh.showticket.member.controller;


import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;

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

import com.kh.showticket.common.mailhandler.MailHandler;
import com.kh.showticket.common.mailhandler.TempKey;
import com.kh.showticket.coupon.model.service.CouponService;
import com.kh.showticket.member.model.service.MemberService;
import com.kh.showticket.member.model.vo.Member;
import com.kh.showticket.member.model.vo.Ticket;
import com.kh.showticket.member.model.vo.MyPoint;

@RequestMapping("/member")
@Controller
@SessionAttributes("memberLoggedIn")
public class MemberController {

	@Autowired()
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
	public String reservation(Model model, @RequestParam String memberId) {

		// 1.업무 로직
		List<Ticket> list = memberService.selectReservationList(memberId);
				
		logger.debug("마이페이지 예매자 확인 :" + memberId);
				
		// 2.view단처리
		model.addAttribute("list", list);
				
		return "/member/reservation";
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
	public String myStandBy() {

		return "/member/myStandBy";
	}
	@RequestMapping("/myInterest.do")
	public String myInterest() {

		return "/member/myInterest";
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


	/*관리자페이지로 이동???*/
    @ResponseBody
    @RequestMapping("/adminpage.do")
    public ModelAndView adminPage(ModelAndView mav) {
        mav.setViewName("member/adminreport");
        return mav;
    }
    
    @ResponseBody
    @RequestMapping("/adminmList.do")
    public ModelAndView adminmemberList(ModelAndView mav) {
        mav.setViewName("member/adminmList");
        return mav;
    }
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
	    					model.addAttribute("script",script);
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
	
}

	