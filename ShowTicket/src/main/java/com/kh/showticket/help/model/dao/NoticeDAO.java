package com.kh.showticket.help.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.showticket.help.model.vo.NoticeTicketOpen;

public interface NoticeDAO {

	List<NoticeTicketOpen> selectNoticeTicketOpenList(int cPage);

	NoticeTicketOpen selectOne(int noticeNo);

	int noticeWriteEnd(NoticeTicketOpen notice);

	//int insertNoticeTicketOpen(NoticeTicketOpen nt);
}
