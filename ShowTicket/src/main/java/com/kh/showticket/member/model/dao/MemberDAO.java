package com.kh.showticket.member.model.dao;

import java.util.List;

import com.kh.showticket.member.model.vo.Member;
import com.kh.showticket.member.model.vo.MyPoint;

public interface MemberDAO {

	int insertMember(Member member);

	Member selectOneMember(String memberId);

	int deleteMember(String memberId);

	int updateMember(Member member);

	int updatePwd(Member member);

	int chkEmailUsable(String email);

	List<MyPoint> selectMyPointList(String memberLoggedIn);

}
