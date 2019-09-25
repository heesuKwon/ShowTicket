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
		
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy.MM.dd");
		
			for(int i=0; i<nodeList.getLength(); i++){
			Node node = nodeList.item(i);
			if(node.getNodeType() == Node.ELEMENT_NODE){
				
				Element element = (Element)node;
				
				mas.setId(getTagValue("mt20id", element));
				mas.setName(getTagValue("prfnm", element));
				mas.setStartDate(transFormat.parse(getTagValue("mt20id", element)));			
				mas.setEndDate(transFormat.parse(getTagValue("mt20id", element)));			
				mas.setHallId(getTagValue("prfnm", element));
				mas.setHallName(getTagValue("prfnm", element));
				mas.setCast(getTagValue("prfnm", element));
				mas.setRuntime(getTagValue("prfnm", element));
				mas.setAge(getTagValue("prfnm", element));
				mas.setPrice(getTagValue("prfnm", element));
				mas.setPoster(getTagValue("prfnm", element));
				mas.setState(getTagValue("prfnm", element));
				//mas.setUrls(getTagValue("styurls", element));
				mas.setTime(getTagValue("prfnm", element));
				
			}
			}
		} catch (Exception e) {
		
		}
		
		
		return mas;
	}
	
	
	
		
}
