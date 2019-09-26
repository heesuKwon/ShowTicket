package com.kh.showticket.help.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.kh.showticket.help.model.dao.FaqDAO;
import com.kh.showticket.help.model.vo.Faq;


@Transactional(propagation=Propagation.REQUIRED,
isolation=Isolation.READ_COMMITTED,
rollbackFor=Exception.class)
@Service
public class FaqServiceImpl implements FaqService {
	@Autowired
	FaqDAO faqDAO;

	@Override
	public int faqWriteEnd(Faq faq) {
		return faqDAO.faqWriteEnd(faq);
	}

	@Override
	public List<Faq> faqTicketList(Faq faq) {
		return faqDAO.faqTicketList(faq);
	}

	@Override
	public List<Faq> faqBuyList() {
		return faqDAO.faqBuyList();	}

	@Override
	public List<Faq> faqMemberList() {
		return faqDAO.faqMemberList();	}

	@Override
	public List<Faq> faqCouponList() {
		return faqDAO.faqCouponList();	}

	@Override
	public List<Faq> faqElseList() {
		return faqDAO.faqElseList();	}

	@Override
	public List<Faq> faqAllList() {
		return faqDAO.faqAllList();	}

	
	
}
