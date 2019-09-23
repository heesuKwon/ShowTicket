package com.kh.showticket.member.model.dao;

import com.kh.showticket.member.model.vo.Member;

public interface MemberDAO {

	int insertMember(Member member);

	Member selectOneMember(String memberId);

	int deleteMember(String memberId);

	int updateMember(Member member);

	int updatePwd(Member member);

}
