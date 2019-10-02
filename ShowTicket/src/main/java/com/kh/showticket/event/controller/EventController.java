package com.kh.showticket.event.controller;

import static com.kh.showticket.common.getApi.getApi.getConcatList;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.showticket.common.util.HelloSpringUtils;
import com.kh.showticket.event.model.exception.EventException;
import com.kh.showticket.event.model.service.DiscountService;
import com.kh.showticket.event.model.service.EventService;
import com.kh.showticket.event.model.vo.Discount;
import com.kh.showticket.event.model.vo.Event;
import com.kh.showticket.event.model.vo.EventAttachment;





@Controller
@RequestMapping("/event")
public class EventController {

	@Autowired 
	DiscountService discountService;

	@Autowired 
	EventService eventService;

	Logger logger = LoggerFactory.getLogger(getClass());

	@RequestMapping("/eventList.do")
	public ModelAndView event(ModelAndView mav) {
		logger.debug("event페이지 요청");

		String url1="http://www.kopis.or.kr/openApi/restful/pblprfr?service=61b91b2730084f47a2c5304ed87d2294&stdate=20190623&eddate=20190923&cpage=1&rows=2&shcate=AAAA";
		String url2="http://www.kopis.or.kr/openApi/restful/pblprfr?service=61b91b2730084f47a2c5304ed87d2294&stdate=20190623&eddate=20190923&cpage=1&rows=2&shcate=AAAB";

		List<Discount> dcList = discountService.selectdcList();
	
		mav.setViewName("event/eventList");
		mav.addObject("dcList", dcList);
		mav.addObject("eventList",getConcatList(url1,url2));

		return mav;
	}

	@RequestMapping("/endEventList.do")
	public ModelAndView endEvent(ModelAndView mav) {
		logger.debug("endEvent페이지 요청");

		mav.setViewName("event/endEventList");
		return mav;
	}

	@RequestMapping("/prizewinner.do")
	public ModelAndView prizewinner(ModelAndView mav) {
		logger.debug("prizewinner페이지 요청");

		mav.setViewName("event/prizewinner");
		return mav;
	}

	@RequestMapping("/addSaleEvent.do")
	public ModelAndView addSaleEvent(ModelAndView mav) {



		String url1="http://www.kopis.or.kr/openApi/restful/pblprfr?service=61b91b2730084f47a2c5304ed87d2294&stdate=20190123&eddate=20191011&cpage=1&rows=20&shcate=AAAA";
		String url2="http://www.kopis.or.kr/openApi/restful/pblprfr?service=61b91b2730084f47a2c5304ed87d2294&stdate=20190123&eddate=20191011&cpage=1&rows=20&shcate=AAAB";

		mav.setViewName("/event/addSaleEvent");

		mav.addObject("eventList",getConcatList(url1,url2));




		return mav;
	}

	@RequestMapping("/prizewinnerWrite.do")
	public String writeprizewinner() {

		return "/event/writeprizewinner";
	}

	@RequestMapping("/eventWrite.do")
	public ModelAndView eventWrite(ModelAndView mav) {
		logger.debug("eventWrite페이지 요청");
		
		
		String url1="http://www.kopis.or.kr/openApi/restful/pblprfr/?service=61b91b2730084f47a2c5304ed87d2294&stdate=20190623&eddate=20191030&cpage=1&rows=5&shcate=AAAA";
		String url2="http://www.kopis.or.kr/openApi/restful/pblprfr?service=61b91b2730084f47a2c5304ed87d2294&stdate=20190623&eddate=20191030&cpage=1&rows=5&shcate=AAAB";

		
		mav.addObject("loc", "/event/eventWrite.do");

		return mav;
	}

	@RequestMapping("/eventView.do")
	public ModelAndView eventView(ModelAndView mav) {
		logger.debug("prizewinner페이지 요청");

		mav.setViewName("event/eventView");
		return mav;
	}

	@RequestMapping("/insertAddSale.do")
	public String insertAddSale(Discount discount, Model model) {

		logger.info("특가 할인 입력 기능 요청");
		int result=0; 
		int rst=0;
		int cnt  =  discountService.checkCnt();
		
		
		
		System.out.println("cnt수 >>>>>"+cnt);
		if(cnt<4){
			result = discountService.insertAddSale(discount);
			
		}else{			
			rst= discountService.deleteAddSale(); 
			if(rst>0){
				
				result = discountService.insertAddSale(discount);
			}
		}

		// 2. view단 처리
		model.addAttribute("msg", result>0?"할인 등록성공":"할인 등록 실패");
		model.addAttribute("loc", "/event/addSaleEvent.do");



		return "common/msg";
	}

	@RequestMapping("/insertEvent.do")
	public String insertEvent(Event event, Model model, HttpServletRequest request,MultipartFile[] upFile) {

		try {
			//파일업로드:서버에 파일저장
			String saveDirectory
				= request.getSession()
						 .getServletContext()
						 .getRealPath("/resources/upload/board");
			
			//db에 파일 메타정보
			List<EventAttachment> eattachList = new ArrayList<>();
			
			//MultipartFile 다루기
			for(MultipartFile f : upFile) {
				//파일 유효성 검사
				if(!f.isEmpty()) {
					//renamedFileName
					String originalFileName = f.getOriginalFilename();
					String renamedFileName = HelloSpringUtils.getRenamedFileName(originalFileName);
					
					try {
						//파일 실제 저장
						f.transferTo(new File(saveDirectory+"/"+renamedFileName));
					} catch(Exception e) {
						e.printStackTrace();
					}
					
					//attachment vo객체 담기
					EventAttachment eattach = new EventAttachment();
					eattach.setOriginalFileName(originalFileName);
					eattach.setRenamedFileName(renamedFileName);
					eattachList.add(eattach);
					
				}
				
			}
			
			
			int result =  eventService.insertEvent(event,eattachList);
			String msg = result>0?"이벤트 등록성공":"이벤트 등록 실패";
			
			model.addAttribute("msg", msg);
			model.addAttribute("loc", "/event/eventWrite.do");
		}catch(Exception e) {
			logger.error("게시물 등록 오류", e);
			
			throw new EventException("게시물 등록 오류", e);
		}
		
		
		return "common/msg"; 
	}

}
