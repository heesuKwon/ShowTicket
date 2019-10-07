package com.kh.showticket.admin.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.showticket.admin.model.vo.Report;
import com.kh.showticket.admin.model.vo.Review;
import com.kh.showticket.member.model.vo.Member;

public interface AdminDAO {

	List<Report> selectAdminReportList(Map<String,Object> paging);

	List<Report> selectOneAdminReportList(int reviewNo);

	List<Review> selectOneAdminReviewList(int reviewNo);

	int updateReport(Map<String, Object> info);

	List<Member> adminMemberList(Map<String, Object> paging);

	int deleteReport(int reviewNo);

	int deleteMember(String memberId);

	List<Report> selectTotalCount();

	List<Report> selectMemberTotalCount();

	List<Member> selectMemberByMemberId(Map<String,Object> paging);

	List<Member> selectMemberByMemberName(Map<String, Object> paging);

	List<Member> FinderSelectTotalContentId(String searchKeyword);

	List<Member> FinderSelectTotalContentName(String searchKeyword);


}
