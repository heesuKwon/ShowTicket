package com.kh.showticket.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.showticket.admin.model.service.AdminService;
import com.kh.showticket.admin.model.vo.Report;
import com.kh.showticket.admin.model.vo.Review;
import com.kh.showticket.member.model.vo.Member;


@RequestMapping("/admin")
@Controller
@SessionAttributes("memberLoggedIn")
public class AdminController {
	
	@Autowired
	AdminService adminService;

	private Logger logger = LoggerFactory.getLogger(getClass());
	
	// 페이징바 변수
	private int startContent = 0;
	private int endContent = 0;
	private int cPage = 0;
	private final int showContent = 10;
	private int pageBarSize = 4;
	private int totalContent = 0;
	private int totalPage = 0;
	private int barStart = 0;
	private int barEnd = 0;
	private int barNo = 0;
	
	Map<String,Object> paging = new HashMap<>();
	
	@RequestMapping("/adminReport.do")
    public String adminReport(Model model, HttpServletRequest request) {
    	
		try {
			cPage = Integer.parseInt(request.getParameter("cPage"));
		}catch(NumberFormatException e) {
			cPage = 1;
		}
		
		startContent = (cPage-1)*showContent + 1;
		endContent = cPage*showContent;
		
		paging.put("startContent",startContent);
		paging.put("endContent",endContent);
		
		List<Report> reportList = adminService.selectAdminReportList(paging);
		
		List<Report> countList = adminService.selectTotalCount();
		totalContent = countList.size();
		totalPage = (int)Math.ceil((double)totalContent/showContent);
				
		barStart = ((cPage -1)/pageBarSize) * pageBarSize +1;
		barEnd = barStart + pageBarSize -1;
		barNo = barStart;
				
		paging.put("barNo",barNo);
		paging.put("barEnd",barEnd);
		paging.put("totalPage",totalPage);
		paging.put("cPage",cPage);
		paging.put("barStart",barStart);
		
		model.addAttribute("reportList", reportList);
    	model.addAttribute("paging", paging);
		
    	return "/admin/adminReport";
    }
    
    @RequestMapping("/adminMemberList.do")
    public String adminMemberList(Model model, HttpServletRequest request) {

    	try {
			cPage = Integer.parseInt(request.getParameter("cPage"));
		}catch(NumberFormatException e) {
			cPage = 1;
		}
		
		startContent = (cPage-1)*showContent + 1;
		endContent = cPage*showContent;
		
		paging.put("startContent",startContent);
		paging.put("endContent",endContent);
		
		List<Member> memberList = adminService.adminMemberList(paging);
		
		List<Report> countList = adminService.selectMemberTotalCount();
		totalContent = countList.size();
		totalPage = (int)Math.ceil((double)totalContent/showContent);
				
		barStart = ((cPage -1)/pageBarSize) * pageBarSize +1;
		barEnd = barStart + pageBarSize -1;
		barNo = barStart;
				
		paging.put("barNo",barNo);
		paging.put("barEnd",barEnd);
		paging.put("totalPage",totalPage);
		paging.put("cPage",cPage);
		
		model.addAttribute("memberList", memberList);
    	model.addAttribute("paging", paging);
    	    	
    	return "/admin/adminMList";
    }
    
    @RequestMapping("/adminReportDetail.do")
    public String adminReportDetail(Model model, @RequestParam int reviewNo) {
    	
    	List<Report> reportList = adminService.selectOneAdminReportList(reviewNo);
    	List<Review> reviewList = adminService.selectOneAdminReviewList(reviewNo);
    	
    	model.addAttribute("reportList", reportList);
    	model.addAttribute("reviewList", reviewList);
    	
    	return "/admin/adminReportDetail";
    }
    
    @RequestMapping(value="/reportPlus.do", method=RequestMethod.POST)
    public String reportPlus(Model model, @RequestParam int cnt, @RequestParam String memberId, @RequestParam int reviewNo) {
    	
    	logger.debug("신고수: ",cnt);
    	logger.debug("신고대상: ",memberId);
    	
    	Map<String, Object> info = new HashMap<>();
    	info.put("cnt",cnt);
    	info.put("memberId",memberId);
    	
    	int result = adminService.updateReport(info);
    	
    	model.addAttribute("msg", result>0?"신고 누적 완료":"신고 누적 실패");
    	model.addAttribute("loc", "/admin/adminReportDetail.do?reviewNo="+reviewNo);
    	
    	return "common/msg";
    }
    
    @RequestMapping("/adminReportDelete.do")
    public String adminReportDelete(Model model, @RequestParam int reviewNo) {
    	
    	logger.debug("글 번호: ",reviewNo);
    	
    	int result = adminService.deleteReport(reviewNo);
    	
    	model.addAttribute("msg", result>0?"삭제 완료":"삭제 실패");
    	model.addAttribute("loc", "/admin/adminReport.do");
    	
    	return "common/msg";
    }
    
    @RequestMapping("/adminMemberDelete.do")
    public String adminMemberDelete(Model model, @RequestParam String memberId) {

    	logger.debug("탈퇴자 아이디: ",memberId);
    	
    	int result = adminService.deleteMember(memberId);
    	
    	model.addAttribute("msg", result>0?"탈퇴 완료":"탈퇴 실패");
    	model.addAttribute("loc", "/admin/adminMemberList.do");
    	
    	return "common/msg";
    }
    
    @RequestMapping("/adminMemberSearch.do")
    public String adminMemberSearch(Model model, HttpServletRequest request) {
    	
    	String searchType = request.getParameter("searchType");
    	String searchKeyword = request.getParameter("searchKeyword");
    	try {
			cPage = Integer.parseInt(request.getParameter("cPage"));
		}catch(NumberFormatException e) {
			cPage = 1;
		}
    	startContent = (cPage-1)*showContent + 1;
		endContent = cPage*showContent;
    	
    	List<Member> list = null;
    	List<Member> countList = null;
    	
    	paging.put("searchKeyword",searchKeyword);
    	paging.put("startContent",startContent);
		paging.put("endContent",endContent);
    	
    	switch(searchType) {
    	case "memberId":
			list = adminService.selectMemberByMemberId(paging);
			countList = adminService.FinderSelectTotalContentId(searchKeyword);
			totalContent = countList.size();
			break;
		case "memberName":
			list = adminService.selectMemberByMemberName(paging);
			countList = adminService.FinderSelectTotalContentName(searchKeyword);
			totalContent = countList.size();
			break;
    	}
    	
		totalPage = (int)Math.ceil((double)totalContent/showContent);
				
		barStart = ((cPage -1)/pageBarSize) * pageBarSize +1;
		barEnd = barStart + pageBarSize -1;
		barNo = barStart;
				
		paging.put("barNo",barNo);
		paging.put("barEnd",barEnd);
		paging.put("totalPage",totalPage);
		paging.put("cPage",cPage);
		paging.put("barStart",barStart);
		
		model.addAttribute("list", list);
    	model.addAttribute("paging", paging);
		
    	return "/admin/adminMFinder";
    }
}
