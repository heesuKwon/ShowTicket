package com.kh.showticket.event.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.showticket.event.model.vo.Event;

@Repository
public class EventDAOImpl implements EventDAO {
	
	@Autowired
	SqlSessionTemplate session;
	
	Logger logger = LoggerFactory.getLogger(getClass());

	@Override
	public List<Map<String, String>> searchEventList(String queryKeyword) {
		return session.selectList("event.searchEventList", queryKeyword);
	}



}
