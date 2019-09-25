package com.kh.showticket.member.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.showticket.member.model.vo.Member;
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
	public void updateMailAuthstatus(Member member) {
		sqlSession.update("member.updateMailAuthstatus",member);
	}
	public int chkEmailUsable(String email) {
		return sqlSession.selectOne("member.chkEmailUsable", email);
	}

	@Override
	public List<MyPoint> selectMyPointList(String memberLoggedIn) {
		return sqlSession.selectList("member.selectMyPointList", memberLoggedIn);
	}
}
