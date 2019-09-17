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
#standby{
	border : 1px solid #9a3cf4;
	width : 70%;
	margin-left : 15%;
	height:80%;
	
}
#button {
	font-weight:bold;
	width:150%;
	height : 50px;
	background-color: #A4A4A4;
	color : white;	
	border : 1px solid #A4A4A4;
}
#button2 {
	font-weight:bold;
	width:150%;
	height : 50px;
	background-color: white;
	color : gray;	
	border : 1px solid #A4A4A4;
}
#playList{
	width:80%;
	border-top: 2px solid #BDBDBD;
	border-bottom: 2px solid #BDBDBD;
	text-align:center;
	margin-left:5%;
}
#playList th{
	font-weight : 700;
	border-bottom: 2px solid #E6E6E6;
	color : #424242;
	background-color : #E6E6E6;
	height: 30px;
	
}
#playList tr{
	border-bottom : 1.5px solid #E6E6E6;
}
.page-link{
	width:60px;
	text-align:center;
	font-weigth: bold;
	font-size:20px;
}
</style>


<form id="standby" style="padding :20px;padding-bottom : 10%;">
<h5 style="font-weight:bold;color:#585858">대기공연</h5>
<hr style="border:2px solid lightgray;margin-bottom:3px;"/>
<br />

<div id="mainList" style="margin-left:8%;">
  <input type=button id="button" style="width:45%; height: 30pt; margin:auto;" value="뮤지컬"><input type=button id="button2" style="width:45%;height:30pt;" value="연극">
<br /><br>

<table id="playList">
	<tr>
		<th style="height:37px;">공연명</th>
		<th>취소</th>
	</tr>
	<tr>
		<td>뮤지컬<시티오브엔젤></td>
		<td><button type="button" class="btn btn-secondary" style="width:70px;height:35px;margin:3px;background-color:#D8D8D8;color:#6E6E6E;font-weight:bold;border:0px;" onclick="location.href='${pageContext.request.contextPath}'">취소</button></td>
	</tr>
</table>
</div>
<br />

<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true"style="background-color:#F2F2F2;border:0px;"><</a>
    </li>
    <li class="page-item"><a class="page-link" href="#" style="color:gray;border:0px;">1</a></li>
    <li class="page-item"><a class="page-link" href="#" style="color:gray;border:0px;">2</a></li>
    <li class="page-item"><a class="page-link" href="#" style="color:gray;border:0px;">3</a></li>
    <li class="page-item"><a class="page-link" href="#" style="color:gray;border:0px;">4</a></li>
   <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="1" aria-disabled="true"style="background-color:#F2F2F2;border:0px;">></a>
    </li>
  </ul>
</nav>
</form>
	

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>