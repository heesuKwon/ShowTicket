<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/contents.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/event.css">
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle" />
</jsp:include>


<div id="container" class="event_cont">
	<div class="inner">
		<ul class="nav nav-pills nav-justified">
			<li class="nav-item" style="width: 40%"><a
				class="nav-link nav-font default">특가할인 목록</a></li>
			<li class="nav-item" style="width: 40%"><a
				class="nav-link nav-font select">특가할인 추가</a></li>
		</ul>
		<h2 class="title">공연목록</h2>
		<table class="ListTable">
			<tr>
				<th>공연 ID</th>
				<th>종류</th>
				<th>공연명</th>
				<th>공연시작일</th>
				<th>공연종료일</th>
				<th>공연상태</th>
				<th>할인선택</th>
			</tr>
			<tr>
				<td>1000001</td>
				<td>뮤지컬</td>
				<td>BEA</td>
				<td>2019.09.03</td>
				<td>2019.10.03</td>
				<td>Y</td>
				<td><input type="checkbox"></td>
			</tr>
		</table>
		<button type="button" class="btn btn-secondary" id="okbutton">확인</button>
		<button type="button" class="btn btn-secondary" id="goList">목록으로</button>
		<h2 class="title">특가할인</h2>
		<div id="search">
			<img id="photo"
				src="//image.toast.com/aaaaab/ticketlink/TKL_1/bea_0722.jpg"
				width="100px" height="122px" alt="공연 포스터">
			<table class="ListTable" id="detail" style="position: relative">
				<tr>
					<th id="service">공연 서비스키</th>
					<th>종류</th>
					<th id="title">공연명</th>
					<th id="start">공연시작일</th>
					<th id="finish">공연종료일</th>
					<th>공연상태</th>
				</tr>
				<tr>
					<td>1000001</td>
					<td>뮤지컬</td>
					<td>BEA</td>
					<td>2019.09.03</td>
					<td>2019.10.03</td>
					<td>Y</td>
				</tr>

			</table>
			<br /> <br /> <br />
			<div id="enroll">
				<h2 class="small-title">할인율</h2>
				<input type="text" class="enrollText"><br />
				<h2 class="small-title">할인기간</h2>
				<input type="text" class="enrollText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="text" class="enrollText">
			</div>
		</div>
		<button type="button" class="btn btn-secondary" id="changebutton">작성완료</button>
	</div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>