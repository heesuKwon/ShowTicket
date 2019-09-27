package com.kh.showticket.talk.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.showticket.talk.model.vo.ChatRoom;
import com.kh.showticket.talk.model.vo.Msg;

@Repository
public class TalkDAOImpl implements TalkDAO {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	SqlSessionTemplate session;

	@Override
	public String findChatIdByMemberId(String memberId) {
		return session.selectOne("talk.findChatIdByMemberId", memberId);
	}

	@Override
	public int inserChatRoom(ChatRoom chr) {
		return session.insert("talk.insertChatRoom", chr);
	}

	@Override
	public void insertChatLog(Msg fromMessage) {
		logger.debug("insertChatLog={}", fromMessage);
		session.insert("talk.insertChatLog", fromMessage);
	}

	@Override
	public void updateLastCheck(Msg fromMessage) {
		session.update("talk.updateLastCheck", fromMessage);
	}

	@Override
	public List<Msg> findChatListByChatId(String chatId) {
		return session.selectList("talk.findChatListByChatId", chatId);
	}
	
	
}
