package com.kh.showticket.alarm;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.kh.showticket.member.model.service.MemberService;
import static com.kh.showticket.common.getApi.getApi.*;

@Component
public class EchoHandler extends TextWebSocketHandler {
	Logger logger = LoggerFactory.getLogger(getClass());
	List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
	
	@Autowired
	MemberService memberService;
	
	//클라이언트와 연결 이후 실행되는 메소드
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		sessionList.add(session);
		logger.info("{} 연결됨", session.getId());
	}
	
	//클라이언트가 서버로 메세지를 전송했을 때 실행되는 메서드
	@Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        //client단 기본 websocket은 
        logger.info("{}로 부터 {} 받음", session.getId(), message.getPayload());
        
        //임시
        String memberLoggedIn = "honggd";
        List<String> myStandByList = memberService.selectMyStandByList(memberLoggedIn);
        
        String ticketId= "";
        String ticketDate = "";
        String ticketTime = "";
        
        
        String ticketNo_ = message.getPayload();
        int ticketNo = Integer.parseInt(ticketNo_);
        
        Map<String, String> canceledInfo =  memberService.selectOneTicketByNo(ticketNo);
        logger.debug("canceledInfo={}", canceledInfo);
        
        //for(String wId : myStandByList) {
        	//타이틀추가되면 그때 수정
        	//if(wId.equals(canceledInfo.get("ticketShowId"))) {
        		ticketId = canceledInfo.get("ticketShowId");
        		ticketTime = canceledInfo.get("ticketTime");
        	//}
        //}
  
        for (WebSocketSession sess : sessionList) {
            //sess.sendMessage(new TextMessage(session.getId() + " : " + message.getPayload()));
        	 sess.sendMessage(new TextMessage("대기공연에 등록하신 "+ticketId+"의 "+ticketDate+" "+ticketTime+" 취소표가 나왔습니다."));
        }
    }

	 // 클라이언트와 연결을 끊었을 때 실행되는 메소드
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        sessionList.remove(session);
        logger.info("{} 연결 끊김", session.getId());
    }

}