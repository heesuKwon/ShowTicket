package com.kh.showticket.common.getApi;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.kh.showticket.common.DescendingByPrfpdfrom;
import com.kh.showticket.common.MusicalAndShow;

public class getApi {
	static Logger logger = LoggerFactory.getLogger("com.kh.showticket.common.getApi.getApi");
	static DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	static DocumentBuilder documentBuilder;
	static Document doc;

	public static String getTagValue(String tag, Element element) {
		NodeList nodeList = element.getElementsByTagName(tag).item(0).getChildNodes();
		Node value = (Node)nodeList.item(0);

		if(value==null) {
			return null;
		}

		return value.getNodeValue();
	}

	//최신순 정렬
	public static List<Map<String, String>> getOrderedListByDate(List<Map<String,String>> list){
		Collections.sort(list, new DescendingByPrfpdfrom());
		//logger.debug("정렬결과 : {}", list);
		return list;
	}

	//뮤지컬/연극단일목록조회
	public static List<Map<String, String>> getList(String url){
		List<Map<String,String>> list = new ArrayList<>();	

		try {
			documentBuilder = factory.newDocumentBuilder();
			doc = documentBuilder.parse(url);

			doc.getDocumentElement().normalize();
			//logger.debug("Root element: {} ", doc.getDocumentElement().getNodeName()); // Root element: dbs

			NodeList nodeList = doc.getElementsByTagName("db");
			//logger.debug("파싱할 리스트 수 : {}", nodeList.getLength());  // 파싱할 리스트 수 :  8


			for(int i=0; i<nodeList.getLength(); i++){
				Node node = nodeList.item(i);
				if(node.getNodeType() == Node.ELEMENT_NODE){

					Element element = (Element)node;

					//logger.debug("=================================");
					//logger.debug("공연ID: {}", getTagValue("mt20id", element));
					//logger.debug("공연명: {}", getTagValue("prfnm", element));
					//logger.debug("공연시작일: {}", getTagValue("prfpdfrom", element));
					//logger.debug("공연종료일: {}", getTagValue("prfpdto", element));
					//logger.debug("포스터이미지경로: {}", getTagValue("poster", element));
					//logger.debug("공연장명 : {}", getTagValue("fcltynm", element));

					Map<String, String> map = new HashMap<>();

					//공연ID
					map.put("mt20id", getTagValue("mt20id", element));
					//공연명
					map.put("prfnm", getTagValue("prfnm", element));
					//공연시작일
					map.put("prfpdfrom", getTagValue("prfpdfrom", element));
					//공연종료일
					map.put("prfpdto", getTagValue("prfpdto", element));
					//포스터이미지경로
					map.put("poster", getTagValue("poster", element));
					//공연장명
					map.put("fcltynm", getTagValue("fcltynm", element));

					list.add(map);

				}

			}
		} catch (Exception e) {

		}

		return list;

	}

	//뮤지컬/연극통합목록조회
	public static List<Map<String, String>> getConcatList(String url1, String url2){
		List<Map<String,String>> showList = getList(url1);
		List<Map<String,String>> musicalList = getList(url2);

		List<Map<String,String>> concatList = new ArrayList<>(showList);
		concatList.addAll(musicalList);

		return concatList;

	}

	//박스오피스
	public static List<Map<String, String>> getBoxList(String url){
		List<Map<String,String>> Blist = new ArrayList<>();	

		try {
			documentBuilder = factory.newDocumentBuilder();
			doc = documentBuilder.parse(url);

			doc.getDocumentElement().normalize();
			//logger.debug("Root element: {} ", doc.getDocumentElement().getNodeName()); // Root element: boxofs

			NodeList nodeList = doc.getElementsByTagName("boxof");
			//logger.debug("파싱할 리스트 수 : {}", nodeList.getLength());  // 파싱할 리스트 수 :  14

			for(int i=0; i<nodeList.getLength(); i++){
				Node node = nodeList.item(i);
				if(node.getNodeType() == Node.ELEMENT_NODE){

					Element element = (Element)node;

					//logger.debug("=================================");
					//logger.debug("공연명: {}", getTagValue("prfnm", element));
					//logger.debug("공연기간: {}", getTagValue("prfpd", element));
					//logger.debug("공연지역: {}", getTagValue("area", element));
					//logger.debug("포스터이미지경로: {}", getTagValue("poster", element));
					//logger.debug("공연장르: {}", getTagValue("cate", element));
					//logger.debug("=================================");
					
					
					Map<String, String> Mmap = new HashMap<>();
					//logger.debug("MAP이후=================================");
					//공연 Id
					Mmap.put("mt20id", getTagValue("mt20id", element));
					//공연명
					Mmap.put("prfnm", getTagValue("prfnm", element));
					//공연기간
					Mmap.put("prfpd", getTagValue("prfpd", element));
					//공연지역
					Mmap.put("area", getTagValue("area", element));
					//포스터이미지경로
					Mmap.put("poster", getTagValue("poster", element));
					//공연장르
					Mmap.put("cate", getTagValue("cate", element));

					Blist.add(Mmap);
				}
			}
		} catch (Exception e) {

		}
		return Blist;
	}
	
	//공연상세조회 : 필요한 항목이 있다면 추가 바람
	public static Map<String, String> getDetailList(String url){
		
		Map<String, String> map = new HashMap<>();
		
		try {
			documentBuilder = factory.newDocumentBuilder();
			doc = documentBuilder.parse(url);

			
		doc.getDocumentElement().normalize();
		//logger.debug("Root element: {} ", doc.getDocumentElement().getNodeName()); // Root element: dbs
		
		NodeList nodeList = doc.getElementsByTagName("db");
		//logger.debug("파싱할 리스트 수 : {}", nodeList.getLength());  // 파싱할 리스트 수 :  8
			
	
		for(int i=0; i<nodeList.getLength(); i++){
			Node node = nodeList.item(i);
			if(node.getNodeType() == Node.ELEMENT_NODE){
									
			Element element = (Element)node;
					
			//logger.debug("=================================");
			//logger.debug("공연ID: {}", getTagValue("mt20id", element));
			//logger.debug("공연명: {}", getTagValue("prfnm", element));
			//logger.debug("공연시작일: {}", getTagValue("prfpdfrom", element));
			//logger.debug("공연종료일: {}", getTagValue("prfpdto", element));
			//logger.debug("포스터이미지경로: {}", getTagValue("poster", element));
			//logger.debug("공연장명 : {}", getTagValue("fcltynm", element));
					
			//공연ID
			map.put("mt20id", getTagValue("mt20id", element));
			//공연명
			map.put("prfnm", getTagValue("prfnm", element));
			//공연시작일
			map.put("prfpdfrom", getTagValue("prfpdfrom", element));
			//공연종료일
			map.put("prfpdto", getTagValue("prfpdto", element));
			//포스터이미지경로
			map.put("poster", getTagValue("poster", element));
			//공연장명
			map.put("fcltynm", getTagValue("fcltynm", element));
			//공연출연진
			map.put("prfcast", getTagValue("prfcast", element));
			//공연제작진 : prfcrew
			//공연런타임 : prfruntime
			//공연 관람 연령 : prfage	
			//제작사 :entrpsnm
			//티켓가격 : pcseguidance
			//줄거리(null일수있음) : sty
			//장르 : genrenm
			//소개이미지목록 : styurls - styurl
			//공연시간 : dtguidance
			
			
				
			}
		}
			} catch (Exception e) {
		
		}
		
		return map;
	}
	
	
	//뮤지컬/연극 박스오피스 통합목록조회
	public static List<Map<String, String>> getTotalBoxList(String url1, String url2){
		List<Map<String,String>> showList = getBoxList(url1);
		List<Map<String,String>> musicalList = getBoxList(url2);

		List<Map<String,String>> totalBoxList = new ArrayList<>();
		totalBoxList.addAll(musicalList);
		totalBoxList.addAll(showList);
		//logger.debug("totalBoxListFromGetAPI"+totalBoxList);

		return totalBoxList;

	}
	
	//공연 상세조회
	public MusicalAndShow getMusicalAndShow(String id) {
		MusicalAndShow mas = new MusicalAndShow();
		
		try {
			
			String url = "http://www.kopis.or.kr/openApi/restful/pblprfr/"+id+"?service=3127d89913494563a0e9684779988063";			
			documentBuilder = factory.newDocumentBuilder();
			doc = documentBuilder.parse(url);

			System.out.println(url);
			
			doc.getDocumentElement().normalize();
			NodeList nodeList = doc.getElementsByTagName("db");
			//logger.debug("파싱할 리스트 수 : {}", nodeList.getLength());  // 파싱할 리스트 수 :  8
		
//			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy.MM.dd");
//			transFormat.parse(getTagValue("prfpdfrom", element))
		
//			for(int i=0; i<nodeList.getLength(); i++){
			Node node = nodeList.item(0);
			if(node.getNodeType() == Node.ELEMENT_NODE){
				
				Element element = (Element)node;
				
				mas.setId(getTagValue("mt20id", element));
				mas.setName(getTagValue("prfnm", element));
				mas.setStartDate(getTagValue("prfpdfrom", element));			
				mas.setEndDate(getTagValue("prfpdto", element));			
				mas.setHallId(getTagValue("mt10id", element));
				mas.setHallName(getTagValue("fcltynm", element));
				mas.setCast(getTagValue("prfcast", element));
				mas.setRuntime(getTagValue("prfruntime", element));
				mas.setAge(getTagValue("prfage", element));
				mas.setPrice(getTagValue("pcseguidance", element));
				mas.setPoster(getTagValue("poster", element));
				mas.setState(getTagValue("prfstate", element));
				//mas.setUrls(getTagValue("styurls", element));
				mas.setTime(getTagValue("dtguidance", element));
				
			}
//			}
		} catch (Exception e) {
		
		}
		
		
		return mas;
	}
	
	
}
