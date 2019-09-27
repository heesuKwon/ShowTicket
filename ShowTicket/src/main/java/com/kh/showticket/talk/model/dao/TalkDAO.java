package com.kh.showticket.talk.model.dao;

import java.util.List;

import com.kh.showticket.talk.model.vo.ChatRoom;
import com.kh.showticket.talk.model.vo.Msg;

public interface TalkDAO {

	String findChatIdByMemberId(String memberId);

	int inserChatRoom(ChatRoom chr);

	void insertChatLog(Msg fromMessage);

	void updateLastCheck(Msg fromMessage);

	List<Msg> findChatListByChatId(String chatId);
	

}
