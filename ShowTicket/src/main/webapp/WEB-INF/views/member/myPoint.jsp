<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle"/>
</jsp:include>


<jsp:include page="/WEB-INF/views/common/memberViewnav.jsp">
	<jsp:param value="마이 페이지" name="pageTitle"/>
</jsp:include>
<style>
#point{
	border : 1px solid #9a3cf4;
	width : 70%;
	margin-left : 25%;
	height:80%;
}
#pointTable{
	border-top:2px solid #D8D8D8;
	border-bottom:2px solid #D8D8D8;
	width : 90%;
	text-align:center;
	
}
#pointTable th{
	background-color:#F2F2F2;
	font-weigth:bold;
	border-bottom:1px solid ligthgray;
}
</style>

<form id="point" style="padding :20px;padding-bottom:150px;">
<h5 style="font-weight:bold;">포인트</h5>
<hr style="border:2px solid lightgray;margin-bottom:3px;"/>
<br>
<div id="myPoint" style="width:90%;height:100px;background-color:#F2F2F2;margin-left:auto;margin-right:auto;">
	<label for="" style="font-size:18px;font-weight:bold;position:absolute;margin-top:27px;margin-left:10%;">내 사용가능 포인트</label><label for="" style="font-size:18px;color:gray;font-weight:bold;margin-top:23px;margin-left:45%">|</label>
	<label for="" style="font-size:30px;color:#bb18ff;font-weight:bold;position:absolute;margin-top:15px;margin-left:3%;">100</label><label for="" style="font-size:30px;color:gray;font-weight:bold;margin-top:15px;margin-left:20%">P</label>
</div>
<br /><br /><br />
<table id="pointTable"style="margin:auto;">
	<tr>
		<th>공연명</th>
		<th>금액</th>
		<th>적립/사용</th>
	</tr>
	<tr>
		<td> 연극 <발칙한 로맨스></td>
		<td> 530원</td>
		<td> 적립</td>
	</tr>
</table>
</form>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>