package com.kh.showticket.member.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.showticket.member.model.vo.Member;
import com.kh.showticket.member.model.vo.Ticket;
import com.kh.showticket.member.model.vo.MyPoint;

public interface MemberDAO {

	int insertMember(Member member);

	Member selectOneMember(String memberId);

	int deleteMember(String memberId);

	int updateMember(Member member);

	int updatePwd(Member member);

	List<Ticket> selectReservationList(String memberId);

	int chkEmailUsable(String email);

	List<MyPoint> selectMyPointList(String memberLoggedIn);

	List<String> selectMyStandByList(String memberLoggedIn);

	void deleteMyStandBy(String memberLoggedIn, String showId);

}
