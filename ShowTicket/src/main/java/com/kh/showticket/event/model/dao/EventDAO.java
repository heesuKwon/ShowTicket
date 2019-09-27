package com.kh.showticket.event.model.dao;

import java.util.List;
import java.util.Map;

public interface EventDAO {

	List<Map<String, String>> searchEventList(String queryKeyword);

}
