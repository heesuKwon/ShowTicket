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
	<form id="interest">
		<h5>관심공연</h5>
		<hr />
		<br /> <input type=button id="button1" value="뮤지컬"><input
			type=button id="button2" value="연극"> <br />
		<br>

		<table id="InterestList">
			<tr>
				<th>공연명</th>
				<th>오픈일시</th>
				<th>삭제</th>
			</tr>
			<tr>
				<td>뮤지컬<시티오브엔젤></td>
				<td>2019.09.12</td>
				<td><button type="button" class="btn btn-secondary"
						onclick="location.href='${pageContext.request.contextPath}'">삭제</button></td>
			</tr>
		</table>

		<br />

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
	</form>
</div>
<script type="text/javascript">
$(function() {
	$("input[type=button] #button2").click( function() {
		$(this).css("background-color","gray")
			   .css("color","white");
	});

});
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
