<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/member.css">

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle" />
</jsp:include>


<div id="container">
	<jsp:include page="/WEB-INF/views/common/memberViewnav.jsp">
		<jsp:param value="마이 페이지" name="pageTitle" />
	</jsp:include>

	<br>
	<div class="div-memberFrm">
		<form id="point">
			<h2 class="small-title">포인트</h2>
			<hr />
			<br>
			<div id="myPoint">
				<label class="memberPoint">내사용가능 포인트&nbsp;&nbsp;|&nbsp;</label> <label
					id="memberp">100</label><label id="p">P</label>
			</div>
			<br /> <br /> <br />
			<table id="pointTable" style="margin: auto;">
				<tr>
					<th id="playName">공연명</th>
					<th>금액</th>
					<th>적립/사용</th>
					<th>적용 날짜</th>
				</tr>
				<tr>
					<td>연극 <발칙한 로맨스></td>
					<td>530원</td>
					<td>적립</td>
					<td>2019.09.19</td>
				</tr>
			</table>
		</form>
	</div>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
