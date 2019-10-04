package com.kh.showticket.help.model.service;

import java.util.List;

import com.kh.showticket.help.model.vo.NoticeTicketOpen;

public interface NoticeService {

	int NUM_PER_PAGE = 15;
	
	List<NoticeTicketOpen> selectNoticeTicketOpenList(int cPage);

	NoticeTicketOpen selectOne(int noticeNo);

	int noticeWriteEnd(NoticeTicketOpen notice);

	//int insertOne(NoticeTicketOpen nt);

	


}
