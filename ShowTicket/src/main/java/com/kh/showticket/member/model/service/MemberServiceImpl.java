package com.kh.showticket.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.showticket.member.model.dao.MemberDAO;
import com.kh.showticket.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;

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
	public int chkEmailUsable(String email) {
		return memberDAO.chkEmailUsable(email);
	}

}
