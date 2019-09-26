package com.kh.showticket.help.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.showticket.help.model.vo.Faq;

@Repository
public class FaqDAOImpl implements FaqDAO {
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int faqWriteEnd(Faq faq) {
		return sqlSession.insert("faq.faqWriteEnd", faq);
	}

	@Override
	public List<Faq> faqTicketList() {
		return sqlSession.selectList("faq.faqTicketList");
	}

	@Override
	public List<Faq> faqBuyList() {
		return sqlSession.selectList("faq.faqBuyList");
	}

	@Override
	public List<Faq> faqMemberList() {
		return sqlSession.selectList("faq.faqMemberList");
	}

	@Override
	public List<Faq> faqCouponList() {
		return sqlSession.selectList("faq.faqCouponList");

	}

	@Override
	public List<Faq> faqElseList() {
		return sqlSession.selectList("faq.faqElseList");

	}

	@Override
	public List<Faq> faqAllList() {
		return sqlSession.selectList("faq.faqAllList");
	}

	/*
	 * @Override public List<Faq> searchFaq() { // TODO Auto-generated method stub
	 * return sqlSession.selectList("faq.searchFaq"); }
	 */
}
