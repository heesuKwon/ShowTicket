package com.kh.showticket.help.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.showticket.help.model.service.NoticeService;
import com.kh.showticket.help.model.vo.NoticeTicketOpen;
@Repository
public class NoticeDAOImpl implements NoticeDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<NoticeTicketOpen> selectNoticeTicketOpenList(int cPage) {
	
		int offset = (cPage-1)*NoticeService.NUM_PER_PAGE;
		int limit = NoticeService.NUM_PER_PAGE;
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		
		return sqlSession.selectList("notice.selectNoticeTicketOpenList",null,rowBounds);
	}

	/*
	 * @Override public int insertNoticeTicketOpen(NoticeTicketOpen nt) { return
	 * sqlSession.insert("notice.insertNoticeTicketOpen",nt); }
	 */



}
