package com.kh.showticket.alarm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

@Configuration
@EnableWebSocket
public class EchoHandlerConfiguration implements WebSocketConfigurer {
	
	@Autowired
    private EchoHandler echoHandler;
	
	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
		registry.addHandler(echoHandler, "/wAlarm");
		registry.addHandler(echoHandler, "/wAlarm").withSockJS();//서버사이드 SockJS사용
	}

}
