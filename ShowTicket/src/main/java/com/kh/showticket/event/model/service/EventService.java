package com.kh.showticket.event.model.service;

import java.util.List;
import java.util.Map;

import com.kh.showticket.event.model.vo.Event;
import com.kh.showticket.event.model.vo.EventAttachment;

public interface EventService {

	List<Map<String, String>> searchEventList(String queryKeyword);

	int insertEvent(Event event, List<EventAttachment> eattachList);


}
