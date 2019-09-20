<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
#myPageNavBar{

	width: 100px;
	text-align:center;
	left:0;
	margin-left : 10%;
	position: absolute;
}
#myPage{
	text-align:center;
	width:150px;
	height:80%;
	background-color : #8f01a3;
	padding:10px 10px 10px 10px;
	display:inline-block;
}
#myPage label{
	color : white;
	font-size:25px;
	font-weight:bold;
	text-align:center;
}
#navBar{
	border : 0px;
	margin-left : 10px;
	font-size : 20px;
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
$("nav").click(function() {
	  $(this).css("color","#8f01a3");
	});
	
function Popup() { 
	window.open("bookticket.do",
			"a", "width=900px, height=630px, left=100, top=0"); 
	}	
	
</script>