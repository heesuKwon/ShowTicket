package com.kh.showticket.member.model.service;

import com.kh.showticket.member.model.vo.Member;

public interface MemberService {

	int insertMember(Member member);

	Member selectOneMember(String memberId);

}
