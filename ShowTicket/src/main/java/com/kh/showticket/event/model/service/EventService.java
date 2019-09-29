package com.kh.showticket.event.model.service;

import java.util.List;
import java.util.Map;

public interface EventService {

	List<Map<String, String>> searchEventList(String queryKeyword);

}
