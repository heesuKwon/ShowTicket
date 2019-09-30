package com.kh.showticket.member.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.showticket.member.model.vo.Member;
import com.kh.showticket.member.model.vo.Ticket;
import com.kh.showticket.member.model.vo.MyPoint;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int insertMember(Member member) {
		return sqlSession.insert("member.insertMember", member);
	}

	@Override
	public Member selectOneMember(String memberId) {
		return sqlSession.selectOne("member.selectOneMember", memberId);
	}

	@Override
	public int deleteMember(String memberId) {
		return sqlSession.delete("member.deleteMember", memberId);
	}

	@Override
	public int updateMember(Member member) {
		return sqlSession.update("member.updateMember", member);
	}

	@Override
	public int updatePwd(Member member) {
		return sqlSession.update("member.updatePwd",member); 
	}

	@Override
	public List<Ticket> selectReservationList(String memberId) {
		return sqlSession.selectList("member.selectReservationList", memberId);
	}
	
	@Override
	public int chkEmailUsable(String email) {
		return sqlSession.selectOne("member.chkEmailUsable", email);
	}

	@Override
	public List<MyPoint> selectMyPointList(String memberLoggedIn) {
		return sqlSession.selectList("member.selectMyPointList", memberLoggedIn);
	}

	@Override
	public List<Ticket> selectReservationTerm(Map<String, Object> map) {
		return sqlSession.selectList("member.selectReservationTerm", map);
	}

	@Override
	public List<Ticket> selectReservationTerm15(Map<String, Object> map) {
		return sqlSession.selectList("member.selectReservationTerm15", map);
	}

	
}
