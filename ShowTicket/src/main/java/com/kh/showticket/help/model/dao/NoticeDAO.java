package com.kh.showticket.help.model.dao;

import java.util.List;

import com.kh.showticket.help.model.vo.NoticeTicketOpen;

public interface NoticeDAO {

	List<NoticeTicketOpen> selectNoticeTicketOpenList(int cPage);
}
