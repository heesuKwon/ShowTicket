package com.kh.showticket.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.showticket.common.email.MailUtils;
import com.kh.showticket.common.email.TempKey;
import com.kh.showticket.member.model.dao.MemberDAO;
import com.kh.showticket.member.model.vo.Member;

@Service
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
	public void createMail(String email) throws Exception {
	
		// 임의의 authkey 생성
		String authkey = new TempKey().getKey(50, false);

//		member.setAuthkey(authkey);
//		memberDAO.updateAuthkey(member);

		// mail 작성 관련 
		MailUtils sendMail = new MailUtils(mailSender);

		sendMail.setSubject("[Hoon's Board v2.0] 회원가입 이메일 인증");
		sendMail.setText(new StringBuffer().append("<h1>[이메일 인증]</h1>")
				.append("<p>아래 링크를 클릭하시면 이메일 인증이 완료됩니다.</p>")
				.append("<a href='http://localhost:8080/user/joinConfirm?email=")
				.append(email)
				.append("&authkey=")
				.append(authkey)
				.append("' target='_blenk'>이메일 인증 확인</a>")
				.toString());
		sendMail.setFrom("관리자 ", "관리자명");
		sendMail.setTo(email);
		sendMail.send();
	}

//	@Override
//	public void updateMailAuthstatus(Member member) {
//		memberDAO.updateMailAuthstatus(member);
//	}
	
	

}
