package com.kh.showticket.area.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/area")
public class AreaController {
	
	@RequestMapping("/area.do")
	public String areaList() {
		
		
		return "area/area";
	}

}
