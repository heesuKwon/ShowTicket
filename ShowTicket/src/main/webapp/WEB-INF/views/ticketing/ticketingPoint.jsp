<%@page import="com.kh.showticket.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	Member memberLoggedIn = (Member)session.getAttribute("memberLoggedIn");
%>
<fmt:requestEncoding value="utf-8"/>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/contents.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/ticketing.css" />
<link href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap" rel="stylesheet">

	<div class="t_background">	
		<img src="${pageContext.request.contextPath }/resources/images/showticket_logo.png" alt="show티켓 로고" class="t_logo"/>
		<div class="nav nav-pills nav-justified tnav_margin">
		 	<li class="nav-item"><a class="nav-link default nav-font" href="#">날짜/회차선택</a></li>
			<li class="nav-item"><a class="nav-link default nav-font" href="#">좌석선택</a></li>
			<li class="nav-item"><a class="nav-link select nav-font" href="#">할인/매수선택</a></li>
			<li class="nav-item"><a class="nav-link default nav-font" href="#">예매확인</a></li>
			<li class="nav-item"><a class="nav-link default nav-font" href="#">결제</a></li>
		</div>
		
		<div class="t_ddiv1">
			<p class="t_title">쿠폰할인</p>
			
			<table class="t_dtable">
				<tr>
					<td colspan="4">
						<p class="t_dsize"><span class="t_purple">R석 1매</span>를 선택하셨습니다.</p>
					</td>
				</tr>
				<tr>
					<td>일반(정가)</td>
					<td class="t_dtable_name">일반</td>
					<td class="t_dtable_price">
						<span class="t_purple">15,000</span><span>원</span>
					</td>
					<td>
						<select class="selectcss" name="general">
							<option value="">1매</option>
						</select>
					</td>
				</tr>
				<tr>
					<td rowspan="2">쿠폰</td>
					<td>정글푸트60% 할인권(매니아카드/1인1매)</td>
					<td class="t_dtable_price">
						<span class="t_purple">10,000</span><span>원</span>
					</td>
					<td>
						<select class="selectcss" name="coupon">
							<option value="">1매</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="text_left">생일쿠폰</td>
					<td class="t_dtable_price">
						<span class="t_purple">10,000</span><span>원</span>
					</td>
					<td>
						<select class="selectcss" name="coupon">
							<option value="">1매</option>
						</select>
					</td>
				</tr>
			</table>
			<table class="t_ptable">
				<tr>
					<td>포인트</td>
					<td>사용포인트</td>
					<td>
						<input type="text" class="t_dinput" value=""/>
						<span>point</span>					
					</td>
					<td>
						<input type="button" value="전액사용" class="inputcss"/>
					</td>
				</tr>
			</table>
						
			<table class="t_dtable">
				<tr>
					<td colspan="4">
						<p class="t_dsize"><span class="t_purple">일반석 1매</span>를 선택하셨습니다.</p>
					</td>
				</tr>
				<tr>
					<td>일반(정가)</td>
					<td class="t_dtable_name">일반</td>
					<td class="t_dtable_price">
						<span class="t_purple">15,000</span><span>원</span>
					</td>
					<td>
						<select class="selectcss" name="general">
							<option value="">1매</option>
						</select>
					</td>
				</tr>
				<tr>
					<td rowspan="2">쿠폰</td>
					<td>정글푸트60% 할인권(매니아카드/1인1매)</td>
					<td class="t_dtable_price">
						<span class="t_purple">10,000</span><span>원</span>
					</td>
					<td>
						<select class="selectcss" name="coupon">
							<option value="">1매</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="text_left">생일쿠폰</td>
					<td class="t_dtable_price">
						<span class="t_purple">10,000</span><span>원</span>
					</td>
					<td>
						<select class="selectcss" name="coupon">
							<option value="">1매</option>
						</select>
					</td>
				</tr>
			</table>
			<table class="t_ptable">
				<tr>
					<td>포인트</td>
					<td>사용포인트</td>
					<td>
						<input type="text" class="t_dinput" value=""/>
						<span>point</span>					
					</td>
					<td>
						<input type="button" value="전액사용" class="inputcss"/>
					</td>
				</tr>
			</table>
		</div>
		
		<div class="t_ddiv2">
			<img src="${pageContext.request.contextPath }/resources/images/jungle.jpg" alt="공연 이미지" class="t_dimg"/>
			<p class="t_dname">
				<span>뮤지컬</span> <span>&lt;정글라이프&gt;</span>
			</p>
			<table class="t_dtable2">
				<tr>
					<td>관람일시</td>
					<td>2019.09.18 20:00시</td>
				</tr>
				<tr>
					<td>좌석정보</td>
					<td class="">R석 1층 23열 43번</td>
				</tr>
			</table>
		</div>
		
		<div class="t_dbtndiv">
			<input type="button" value="이전단계" class="t_button1"/>
			<input type="button" value="다음단계" class="t_button2" onclick="location.href='${pageContext.request.contextPath}/ticketing/ticketConfirm.do'"/>
		</div>
	</div>
