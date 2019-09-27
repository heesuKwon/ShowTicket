package com.kh.showticket.event.model.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.showticket.event.model.dao.EventDAO;

@Service
public class EventServiceImpl implements EventService {
	
	@Autowired
	EventDAO eventDAO;

	Logger logger = LoggerFactory.getLogger(getClass());

	@Override
	public List<Map<String, String>> searchEventList(String queryKeyword) {
		return eventDAO.searchEventList(queryKeyword);
	}
}
