package com.kh.showticket.event.model.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.showticket.event.model.dao.EventDAO;
import com.kh.showticket.event.model.exception.EventException;
import com.kh.showticket.event.model.vo.Event;
import com.kh.showticket.event.model.vo.EventAttachment;

@Service
public class EventServiceImpl implements EventService {
	
	@Autowired
	EventDAO eventDAO;

	Logger logger = LoggerFactory.getLogger(getClass());

	@Override
	public List<Map<String, String>> searchEventList(String queryKeyword) {
		return eventDAO.searchEventList(queryKeyword);
	}

	@Override
	public int insertEvent(Event event) {
		logger.info("eventService={}",event);
		return eventDAO.insertEvent(event);
	}

	@Override
	public int insertEvent(Event event, List<EventAttachment> eattachList) {
		// TODO Auto-generated method stub
		return 0;
	}

}
