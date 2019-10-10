package com.kh.showticket.member.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.kh.showticket.common.email.MailUtils;
import com.kh.showticket.common.email.TempKey;
import com.kh.showticket.member.model.dao.MemberDAO;
import com.kh.showticket.member.model.vo.Member;
import com.kh.showticket.member.model.vo.Ticket;
import com.kh.showticket.member.model.vo.MyPoint;


@Service
@Transactional(propagation=Propagation.REQUIRED,
isolation=Isolation.READ_COMMITTED,
rollbackFor=Exception.class)
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;
	
	@Autowired
	private JavaMailSender mailSender;

	@Override
	public int insertMember(Member member) {
		return memberDAO.insertMember(member);
	}

	@Override
	public Member selectOneMember(String memberId) {
		return memberDAO.selectOneMember(memberId);
	}

	@Override
	public int deleteMember(String memberId) {
		return memberDAO.deleteMember(memberId);
	}

	@Override
	public int updateMember(Member member) {
		return memberDAO.updateMember(member);
	}

	@Override
	public int updatePwd(Member member) {
		return memberDAO.updatePwd(member);
	}
	
	@Override
	@Transactional
	public String createMail(String email) throws Exception {
	
		// 임의의 authkey 생성
		String authkey = new TempKey().getKey(6, false);

		// mail 작성 관련 
		MailUtils sendMail = new MailUtils(mailSender);

		sendMail.setSubject("[ShowTicket] 이메일 인증코드입니다.");
		sendMail.setText(new StringBuffer().append("<h1>[이메일 인증]</h1>")
				.append("<p>아래 인증번호를 입력하면 이메일 인증이 완료됩니다.</p>")
				.append("<h2>")
				.append(authkey)
				.append("</h2>")
				.toString());
		sendMail.setFrom("showticket77@gmail.com", "(주)쇼티켓");
		sendMail.setTo(email);
		sendMail.send();
		
		return authkey;
	}

	@Override
	public List<Ticket> selectReservationList(String memberId) {
		return memberDAO.selectReservationList(memberId);
	}
	
	@Override
	public int chkEmailUsable(String email) {
		return memberDAO.chkEmailUsable(email);
	}

	@Override
	public List<MyPoint> selectMyPointList(String memberLoggedIn) {
		return memberDAO.selectMyPointList(memberLoggedIn);
	}

	@Override

	public List<String> selectMyStandByList(String memberLoggedIn) {
		return memberDAO.selectMyStandByList(memberLoggedIn);
	}

	@Override
	public void deleteMyStandBy(String memberLoggedIn, String showId) {
		memberDAO.deleteMyStandBy(memberLoggedIn, showId);
	}

	public List<Ticket> selectReservationTerm(Map<String, Object> content) {
		return memberDAO.selectReservationTerm(content);
	}

	@Override
	public List<Ticket> selectReservationTerm15(Map<String, Object> content) {
		return memberDAO.selectReservationTerm15(content);
	}

	@Override
	public List<Ticket> selectReservationPage(Map<String, Object> content) {
		return memberDAO.selectReservationPage(content);
	}

	@Override
	public int updateReservation(Map<String, Object> cancel) {
		return memberDAO.updateReservation(cancel);
	}

	@Override
	public Map<String, String> selectOneTicketByNo(int ticketNo) {
		return memberDAO.selectOneTicketByNo(ticketNo);
	}

	@Override
	public List<String> selectFollow(String memberId) {
		return memberDAO.selectFollow(memberId);
	}

	@Override
	public int deleteFollow(Map<String, String> follow) {
		return memberDAO.deleteFollow(follow);
	}

	@Override
	public int updatePoint(String memberId) {
		return memberDAO.updatePoint(memberId);
	}

}
