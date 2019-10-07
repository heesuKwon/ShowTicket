package com.kh.showticket.help.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.kh.showticket.help.model.dao.NoticeDAO;
import com.kh.showticket.help.model.vo.NoticeTicketOpen;

@Transactional(propagation=Propagation.REQUIRED,
isolation=Isolation.READ_COMMITTED,
rollbackFor=Exception.class)
@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	NoticeDAO noticeDAO;
	
	@Override
	public List<NoticeTicketOpen> selectNoticeTicketOpenList(int cPage) {
		return noticeDAO.selectNoticeTicketOpenList(cPage);
	}
	

}
