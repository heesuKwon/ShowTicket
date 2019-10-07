package com.kh.showticket.musical.model.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.showticket.common.MusicalAndShow;
import com.kh.showticket.common.getApi.getApi;
import com.kh.showticket.musical.model.dao.MusicalDAO;

@Service
public class MusicalServiceImpl implements MusicalService {
	
	@Autowired
	MusicalDAO musicalDAO;
	
	getApi getApi = new getApi();
	
	private Logger logger = LoggerFactory.getLogger(getClass());

	@Override
	public MusicalAndShow selectOne(String musicalId) {
		MusicalAndShow musical = getApi.getMusicalAndShow(musicalId);
		
//		musical.setReviewStar(musicalDAO.selectReviewStar(musicalId));
		
		logger.debug(musical.toString());
		
		return musical;
	}

	@Override
	public Map<String, String> selectPlace(String url) {
		Map<String, String> map = getApi.getPlaceList(url);
		
		return map;
	}

}
