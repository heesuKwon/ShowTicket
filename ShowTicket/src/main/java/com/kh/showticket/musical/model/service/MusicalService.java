package com.kh.showticket.musical.model.service;

import java.util.List;
import java.util.Map;

import com.kh.showticket.common.MusicalAndShow;

public interface MusicalService {

	MusicalAndShow selectOne(String musicalId);

	Map<String, String> selectPlace(String url);

}
