package com.kh.showticket.event.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.showticket.event.model.vo.Event;

public interface EventDAO {

	List<Map<String, String>> searchEventList(String queryKeyword);

	int insertEvent(Event event);

}
