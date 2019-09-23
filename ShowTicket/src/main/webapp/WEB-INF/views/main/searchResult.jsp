<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/searchResult.css">


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/contents.css">

<div id="wrap" class="subwrap">
        
    <div id="container" class="submain_front">

<div class="inner">
	<div class="amount">
	<h2 class="small-title">
	<span class="color_purple bold">검색어</span>에 대한 검색결과는 총 3건입니다.
    </h2>
    </div>
    <ul id="searchNav" class="nav nav-pills nav-justified">
		<li class="nav-item"><a class="nav-link select nav-font" href="#">뮤지컬(2)</a></li>
		<li class="nav-item"><a class="nav-link nav-font default" href="#">연극(0)</a></li>
	</ul>
   
   <div class="cont-result">
   <span class="resultTitle">티켓 검색 결과(2)</span>
	 <table class="tbl-result">
   		<tr>
   			<td class="td-result">
   				<div class="resultInfo">
   					<div class="cont-poster">
   						<img src="${pageContext.request.contextPath }/resources/images/jungle.jpg" alt="" />
   					</div>
   					<div class="ticketInfo">
   					
   						<span class="ticketTitle">뮤지컬 <정글라이프></span>
   						<span class="ticketLoc">장소: 고스트 씨어터 (구, 다소니씨어터)</span>
   						<span class="ticketDate">기간: 2019.08.10 ~ 2019.10.06</span>
   						<span class="ticketPrice">관람가: 일반석 50,000원</span>
   						
   					</div>
   			
   					<button type="button" class="btn btn-primary reserve">예매하기</button>
   					
   				</div>
   			
   			</td>
   		</tr>
   			<tr>
   			<td>
   				
   				<div class="resultInfo">
   					<div class="cont-poster">
   						<img src="${pageContext.request.contextPath }/resources/images/jungle.jpg" alt="" />
   					</div>
   					<div class="ticketInfo">
   					
   						<span class="ticketTitle">뮤지컬 <정글라이프></span>
   						<span class="ticketLoc">장소: 고스트 씨어터 (구, 다소니씨어터)</span>
   						<span class="ticketDate">기간: 2019.08.10 ~ 2019.10.06</span>
   						<span class="ticketPrice">관람가: 일반석 50,000원</span>
   						
   					</div>
   			
   					<button type="button" class="btn btn-primary reserve">예매하기</button>
   					
   				</div>
   			
   			</td>
   		</tr>
	</table>
   </div>
   
     <div class="cont-result">
   <span class="resultTitle">이벤트 검색 결과(1)</span>
	 <table class="tbl-result">
   		<tr>
   			<td class="td-result">
   				<div class="resultInfo">
   					<div class="cont-poster">
   						<img src="${pageContext.request.contextPath }/resources/images/jungle.jpg" alt="" />
   					</div>
   					<div class="ticketInfo">
   					
   						<span class="ticketTitle">뮤지컬 <정글라이프> 관람평 이벤트</span>
   						<span class="ticketDate">기간: 2019.08.10 ~ 2019.10.06</span>
   						
   					</div>
   			
   					<button type="button" class="btn btn-primary reserve">참여하기</button>
   					
   				</div>
   			
   			</td>
   		</tr>
   		
	</table>
   </div>


</div></div></div>
   
<%@ include file="/WEB-INF/views/common/footer.jsp"%>