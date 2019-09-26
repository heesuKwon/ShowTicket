package com.kh.showticket.talk.model.service;

import java.util.List;

import com.kh.showticket.talk.model.vo.ChatRoom;
import com.kh.showticket.talk.model.vo.Msg;

public interface TalkService {

	String findChatIdByMemberId(String memberId);
	
	int insertChatRoom(List<ChatRoom> list);
	
	void insertChatLog(Msg fromMessage);

	void updateLastCheck(Msg fromMessage);

	List<Msg> findChatListByChatId(String chatId);
}
