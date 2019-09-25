package com.kh.showticket.member.model.service;

import java.util.List;

import com.kh.showticket.member.model.vo.Member;
import com.kh.showticket.member.model.vo.Ticket;

public interface MemberService {

	
	int insertMember(Member member);

	Member selectOneMember(String memberId);

	int deleteMember(String memberId);

	int updateMember(Member member);

	int updatePwd(Member member);

	List<Ticket> selectReservationList(String memberId);


	


}
