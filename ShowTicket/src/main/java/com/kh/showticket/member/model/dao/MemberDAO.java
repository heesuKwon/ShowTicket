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

	List<Ticket> selectReservationList(Map<String, Object> paging);

	int chkEmailUsable(String email);

	List<MyPoint> selectMyPointList(String memberLoggedIn);


	List<String> selectMyStandByList(String memberLoggedIn);

	void deleteMyStandBy(String memberLoggedIn, String showId);

	List<Ticket> selectReservationTerm(Map<String, Object> paging);

	List<Ticket> selectReservationTerm15(Map<String, Object> paging);

	List<Ticket> selectReservationAll(Map<String, Object> paging);

	int updateReservation(Map<String, Object> cancel);

	Map<String, String> selectOneTicketByNo(int ticketNo);

	List<String> selectFollow(String memberId);

	int deleteFollow(Map<String, String> follow);

	List<Ticket> selectRTotalCount();

	List<Ticket> selectTotalCountA(Map<String,Object> paging);

	List<Ticket> selectTotalCountT(Map<String,Object> paging);

	List<Ticket> selectTotalCount15(Map<String,Object> paging);

	String findIdByEmail(Map<String, String> memInfo);

	String findIdByPhone(Map<String, String> memInfo);

	List<String> selectWaitingIdListByShowId(String ticketShowId);

}
