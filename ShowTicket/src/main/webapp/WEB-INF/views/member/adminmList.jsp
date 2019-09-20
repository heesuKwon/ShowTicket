<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>


<style>

#container{margin:30px auto; height:800px;}
div#report{border:1px solid #8f01a3; text-align:center; width:70%; height: 80%; margin-left: 330px;}
#report .inner{margin-left: 25px;margin-top: 20px; width: 95%;}
#report .inner h2{text-align: left;}
table#reporttbl{width: 80%;margin-left: 10%; margin-top: 25px; }
table#reporttbl thead>tr>th{background: #f0f0f0; font-family: 'Gothic A1', sans-serif; font-size:15px;}
div.rhr{ border: 1px solid #a6a6a6; margin-top: 14px; width: 100%;}
.table td{padding-top: 5px; padding-bottom: 5px;}
</style>


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