package com.kh.showticket.talk.model.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.showticket.talk.model.dao.TalkDAO;
import com.kh.showticket.talk.model.vo.ChatRoom;
import com.kh.showticket.talk.model.vo.Msg;

@Service
@Transactional(rollbackFor=Exception.class)
public class TalkServiceImpl implements TalkService {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	TalkDAO talkDAO;
	

	@Override
	public String findChatIdByMemberId(String memberId) {
		return talkDAO.findChatIdByMemberId(memberId);
	}
	
	@Override
	public int insertChatRoom(List<ChatRoom> list) {
		int result = 0;
		for(ChatRoom chr : list) {
			result += talkDAO.inserChatRoom(chr);
		}
		return result;
	}

	@Override
	public void insertChatLog(Msg fromMessage) {
		talkDAO.insertChatLog(fromMessage);
		
	}

	@Override
	public void updateLastCheck(Msg fromMessage) {
		talkDAO.updateLastCheck(fromMessage);
		
	}

	@Override
	public List<Msg> findChatListByChatId(String chatId) {
		return talkDAO.findChatListByChatId(chatId);
	}
}
