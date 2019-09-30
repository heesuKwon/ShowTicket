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
	<span class="color_purple bold">검색어</span>에 대한 검색결과는 총 ${mCnt+sCnt+eCnt }건입니다.
    </h2>
    </div>
     <span class="resultTitle">티켓 검색 결과(${mCnt+sCnt })</span>
    <ul id="searchNav" class="nav nav-pills nav-justified">
		<li class="nav-item"><a class="nav-link select nav-font" href="#">뮤지컬(${mCnt })</a></li>
		<li class="nav-item"><a class="nav-link nav-font default" href="#">연극(${sCnt })</a></li>
	</ul>
   
   <div class="cont-result">
	 <table class="tbl-result">
	 <c:forEach items="${mTicketResult }" var="m">
   		<tr>
   			<td class="td-result">
   			
   				<div class="resultInfo">
   					<div class="cont-poster">
   						<img src="${m.poster }" alt="" />
   					</div>
   					<div class="ticketInfo">
   						<span class="ticketTitle">${m.prfnm}</span>
   						<span class="ticketLoc">${m.fcltynm }</span>
   						<span class="ticketDate">기간: ${m.prfpdfrom } ~ ${m.prfpdto}</span>
   						<span class="ticketPrice">관람가: ${m.pcseguidance }</span>
   						
   					</div>
   					<div>
   					<button type="button" class="btn btn-primary reserve">예매하기</button>
   					</div>
   				</div>
   			</td>
   		</tr>
   		</c:forEach>
	</table>
   </div>
   
     <div class="cont-result">
   <span class="resultTitle">이벤트 검색 결과(${eCnt})</span>
	 <table class="tbl-result">
	 <c:forEach items="${eventResult }" var="e">
   		<tr>
   			<td class="td-result">
   				<div class="resultInfo">
   					<div class="cont-poster">
   						<!-- 차후 수정 바람 -->
   						<img src="${e.renamedFileName }" alt="" />
   					</div>
   					<div class="eventInfo">
   						<span class="eventTitle">${e.eventTitle}</span>
   						<span class="eventContent">${e.eventContent }</span>
   						<span class="eventDate">기간: ${e.eventStartDate } ~ ${e.eventEndDate}</span>
   					</div>
   					<div>
   					<button type="button" class="btn btn-primary reserve">예매하기</button>
   					</div>
   				</div>
   			</td>
   		</tr>
   		</c:forEach>
	</table>
   </div>


</div></div></div>
   
<%@ include file="/WEB-INF/views/common/footer.jsp"%>