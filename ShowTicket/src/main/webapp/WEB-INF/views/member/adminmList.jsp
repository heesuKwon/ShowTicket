<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>


<style>
#container{margin:30px auto; height:800px; left: 300px;}
div#report{border:1px solid #8f01a3; text-align:center; height: 80%; width: 802px; position: absolute;left: 50px;}
#report .inner{margin-left: 25px;margin-top: 20px; width: 95%;}
#report .inner h2{text-align: left;}
table#reporttbl{width: 80%;margin-left: 10%; margin-top: 25px; }
table#reporttbl thead>tr>th{background: #f0f0f0; font-family: 'Gothic A1', sans-serif; font-size:15px;}
div.rhr{ border: 1px solid #a6a6a6; margin-top: 14px; width: 100%;}
.table td{padding-top: 5px; padding-bottom: 5px;}

#myPageNavBar{

	width: 100px;
	text-align:center;
	left:0;
	margin-left : 10%;
	position: absolute;
}
#myPage{
	text-align:center;
	width:160px;
	height:80%;
	background-color : #8f01a3;
	padding:10px 10px 10px 10px;
	display:inline-block;
	margin-top: 28px;
}
#myPage label{
	color : white;
	font-size:18px;
	font-weight:bold;
	text-align:center;
}
#navBar{
	border : 0px;
	margin-left : 10px;
	font-size : 18px;
	margin-top : 20px;
}
#navBar td{
	border : 0px;
	width : 200px;
	height: 50px;
	color: gray;
	font-size:15px;
}
#navBar td:hover{
	color:#8f01a3;
	cursor:pointer;
}

$(".nav").click(function(){
    $(this).css("color","#8f01a3");

});
	

</style>
<nav id="myPageNavBar">
	<span id="myPage"><label>관리자 메뉴</label></span>
	<table id="navBar">
		<tr>
			<td class="nav"
				onclick="location.href='${pageContext.request.contextPath}/member/adminpage.do'">신고 게시판</td>
		</tr>
		<tr>
			<td class="nav" 
				onclick="location.href='${pageContext.request.contextPath}/member/adminmList.do'">내
				회원목록</td>
		</tr>
		<tr>
			<td class="nav"
				onclick="Popup();">내예매팝업</td>
		</tr>
		
		
	</table>
</nav>
<script>

function Popup() { 
	window.open("bookticket.do",
			"a", "width=900px, height=630px, left=100, top=0"); 
	}	
$(".nav").click(function(){
    $(this).css("color","#8f01a3");

});
	
</script>

<div id="container">
	<jsp:include page="/WEB-INF/views/common/adminReportnav.jsp"/>
   
	<div id="report">
		<div class="inner">
		<h2>회원 목록</h2>
		<div class="rhr"></div>
		</div>	
			
		<table class="table" id="reporttbl">
			  <thead>
			    <tr>
			      <th scope="col">번호</th>
			      <th scope="col">아이디</th>
			      <th scope="col">이름</th>
			      <th scope="col">이메일</th>
			      <th scope="col">연락처</th>
			      <th scope="col">탈퇴</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>아이디</td>
			      <td>이름</td>
			      <td>이메일</td>
			      <td>연락처</td>
			      <td>  <button type="button" id="dropM" class="btn btn-secondary btn-sm">탈퇴</button>  </td>
			    </tr>
			    <tr>
			      <th scope="row">1</th>
			      <td>아이디</td>
			      <td>이름</td>
			      <td>이메일</td>
			      <td>연락처</td>
			      <td>  <button type="button" id="dropM" class="btn btn-secondary btn-sm">탈퇴</button>  </td>
			    </tr>
			    <tr>
			      <th scope="row">1</th>
			      <td>아이디</td>
			      <td>이름</td>
			      <td>이메일</td>
			      <td>연락처</td>
			      <td>  <button type="button" id="dropM" class="btn btn-secondary btn-sm">탈퇴</button>  </td>
			    </tr>
			    <tr>
			      <th scope="row">1</th>
			      <td>아이디</td>
			      <td>이름</td>
			      <td>이메일</td>
			      <td>연락처</td>
			      <td>  <button type="button" id="dropM" class="btn btn-secondary btn-sm">탈퇴</button>  </td>
			    </tr>
			    <tr>
			      <th scope="row">1</th>
			      <td>아이디</td>
			      <td>이름</td>
			      <td>이메일</td>
			      <td>연락처</td>
			      <td>  <button type="button" id="dropM" class="btn btn-secondary btn-sm">탈퇴</button>  </td>
			    </tr>
			    <tr>
			      <th scope="row">1</th>
			      <td>아이디</td>
			      <td>이름</td>
			      <td>이메일</td>
			      <td>연락처</td>
			      <td>  <button type="button" id="dropM" class="btn btn-secondary btn-sm">탈퇴</button>  </td>
			    </tr>
			    <tr>
			      <th scope="row">1</th>
			      <td>아이디</td>
			      <td>이름</td>
			      <td>이메일</td>
			      <td>연락처</td>
			      <td>  <button type="button" id="dropM" class="btn btn-secondary btn-sm">탈퇴</button>  </td>
			    </tr>
			    <tr>
			      <th scope="row">1</th>
			      <td>아이디</td>
			      <td>이름</td>
			      <td>이메일</td>
			      <td>연락처</td>
			      <td>  <button type="button" id="dropM" class="btn btn-secondary btn-sm">탈퇴</button>  </td>
			    </tr>
			    <tr>
			      <th scope="row">1</th>
			      <td>아이디</td>
			      <td>이름</td>
			      <td>이메일</td>
			      <td>연락처</td>
			      <td>  <button type="button" id="dropM" class="btn btn-secondary btn-sm">탈퇴</button>  </td>
			    </tr>
			    <tr>
			      <th scope="row">1</th>
			      <td>아이디</td>
			      <td>이름</td>
			      <td>이메일</td>
			      <td>연락처</td>
			      <td>  <button type="button" id="dropM" class="btn btn-secondary btn-sm">탈퇴</button>  </td>
			    </tr>
			   
			    
			  </tbody>
			  
		</table>
			
			<!-- 페이지바  -->
			<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<li class="page-item disabled"><a class="page-link" href="#"
					tabindex="-1" aria-disabled="true"
					style="background-color: #F2F2F2; border: 0px;"><</a></li>
				<li class="page-item"><a class="page-link" href="#"
					style="color: gray; border: 0px;">1</a></li>
				<li class="page-item"><a class="page-link" href="#"
					style="color: gray; border: 0px;">2</a></li>
				<li class="page-item"><a class="page-link" href="#"
					style="color: gray; border: 0px;">3</a></li>
				<li class="page-item"><a class="page-link" href="#"
					style="color: gray; border: 0px;">4</a></li>
				<li class="page-item disabled"><a class="page-link" href="#"
					tabindex="1" aria-disabled="true"
					style="background-color: #F2F2F2; border: 0px;">></a></li>
			</ul>
		</nav>
		
	
	
	
	</div>


</div>
















<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>