package com.kh.showticket.help.model.service;

import java.util.List;

import com.kh.showticket.help.model.vo.Faq;

public interface FaqService {

	int faqWriteEnd(Faq faq);

	List<Faq> faqTicketList();

	List<Faq> faqBuyList();

	List<Faq> faqMemberList();

	List<Faq> faqCouponList();

	List<Faq> faqElseList();

	List<Faq> faqAllList();

}
