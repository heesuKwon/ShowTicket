<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/member.css">
<nav id="myPageNavBar">
	<span id="myPage"><label>마이페이지</label></span>
	<table id="navBar">
		<tr>
			<td class="nav"
				onclick="location.href='${pageContext.request.contextPath}'">예매확인/취소</td>
		</tr>
		<tr>
			<td class="nav"
				onclick="location.href='${pageContext.request.contextPath}/member/myPoint.do'">내
				포인트</td>
		</tr>
		<tr>
			<td class="nav"
				onclick="location.href='${pageContext.request.contextPath}/member/myCoupon.do'">내
				쿠폰</td>
		</tr>
		<tr>
			<td class="nav"
				onclick="location.href='${pageContext.request.contextPath}/member/memberView.do'">회원정보
				수정</td>
		</tr>
		<tr>
			<td class="nav"></td>
		</tr>
		<tr>
			<td class="nav"></td>
		</tr>
		<tr>
			<td class="nav"
				onclick="location.href='${pageContext.request.contextPath}/member/myStandBy.do'">대기
				공연</td>
		</tr>
		<tr>
			<td class="nav"
				onclick="location.href='${pageContext.request.contextPath}'">관심
				공연</td>
		</tr>
	</table>
</nav>
<script>
	$('.nav').hover(function() {
		$(this).css("color", "#9a3cf4");
	}, function() {
		$(this).css("color", "gray");
	});
</script>