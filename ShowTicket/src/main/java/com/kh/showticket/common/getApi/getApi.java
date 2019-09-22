package com.kh.showticket.common.getApi;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class getApi {
	
	
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
		
		public static List<Map<String, String>> getList(String url){
			List<Map<String,String>> musicalList = new ArrayList<>();	
			
			try {
				documentBuilder = factory.newDocumentBuilder();
				doc = documentBuilder.parse(url);
			} catch (ParserConfigurationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SAXException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			//root tag
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
					
					Map<String, String> map = new HashMap<>();
					
					map.put("mt20id", getTagValue("mt20id", element));
					map.put("prfnm", getTagValue("prfnm", element));
					map.put("prfpdfrom", getTagValue("prfpdfrom", element));
					map.put("prfpdto", getTagValue("prfpdto", element));
					map.put("poster", getTagValue("poster", element));
					map.put("fcltynm", getTagValue("fcltynm", element));
					musicalList.add(map);
				
				}
			}
			
			return musicalList;
		}
		
}
