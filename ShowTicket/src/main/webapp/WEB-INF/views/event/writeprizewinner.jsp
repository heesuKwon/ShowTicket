<%@page import="com.kh.showticket.event.model.vo.EventVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle" />
</jsp:include>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/contents.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/event.css">



<div id="container" class="event_cont">
	<div class="inner">
		<h2 class="blind">이벤트</h2>

		<ul class="nav nav-pills nav-justified">
			<li class="nav-item"><a class="nav-link nav-font default"
				href="${pageContext.request.contextPath}/event/eventList.do">진행중인
					이벤트</a></li>
			<li class="nav-item"><a class="nav-link nav-font default"
				href="${pageContext.request.contextPath}/event/endEventList.do">종료된
					이벤트</a></li>
			<li class="nav-item"><a class="nav-link nav-font select"
				href="${pageContext.request.contextPath}/event/prizewinner.do">당첨자
					발표</a></li>
			<li class="nav-item"><a class="nav-link nav-font default"
				href="${pageContext.request.contextPath}/coupon/coupon.do">쿠폰</a></li>
		</ul>
		
		
		<c:if test="${empty wList}"> <div class="emt"><h2>참여한 고객이 없습니다.</h2> </div> </c:if>
		<c:if test = "${!empty wList}">
			<div class="eventFrm">
				<br />
				<h1 class="main-title" style="color:#8f01a3;">SHOW</h1><h1 class="main-title">티켓 이벤트 당첨자 발표 글쓰기</h1>
				<br /><br />
				<div id="memberList">
				<h2 class="small-title" style="margin-left:5%;">응모 회원 목록</h2>
					<br />
					<table id="memberTable">
						<tr>
							<th>회원 아이디</th>
							<th>회원명</th>
							<th>회원 전화번호</th>
							<th>응모 날짜</th>
						</tr>
					 	<c:forEach items="${wList }" var="w"> 
						<tr>
							<td>${w.memberList[0].memberId}</td>
							<td>${w.memberList[0].memberName}</td>
							<td>${w.memberList[0].phone}</td>
							<td>${w.commentDate }</td>
						</tr>
						</c:forEach> 
					 
					</table>
				</div>
				<br /><br />
				<div id="write">
					<label id="title">제목:</label>&nbsp;<input
						type="text" class="enrollText"> <br /> <br /> <br /> <label
						id="content">내용:</label>&nbsp;<textarea class="autosize" id="cText"></textarea>
				</div>
				<button type="button" class="btn btn-secondary" id="finish">작성완료</button>
			</div>
		</c:if>
		
		<div id="forbutton">
		<button type="button" class="btn btn-secondary" id="List"
			onclick="location.href = '${pageContext.request.contextPath}/event/prizewinner.do' ">목록으로</button>
		</div>

	</div>
</div>


<style>
div.emt{text-align: center;margin-top: 10%; margin-bottom: 10%;}
</style>




<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>