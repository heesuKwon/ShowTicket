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

	List<Ticket> selectReservationTerm(Map<String, Object> content);

	List<Ticket> selectReservationTerm15(Map<String, Object> content);

	List<Ticket> selectReservationPage(Map<String, Object> content);

	int updateReservation(Map<String, Object> cancel);

	Map<String, String> selectOneTicketByNo(int ticketNo);

	List<String> selectFollow(String memberId);

	int deleteFollow(Map<String, String> follow);



}
