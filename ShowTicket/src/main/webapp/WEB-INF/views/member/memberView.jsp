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
		<h2 class="small-title">회원정보 수정</h2>
		<form id="memberFrm" action="memberUpdate.do" method="post"
			onsubmit="return validate();">
			<br />
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" class="form-control" required disabled></td>
				</tr>

				<tr>
					<th>비밀번호</th>
					<td>
						<button type="button" class="btn btn-secondary"
							onclick="location.href='${pageContext.request.contextPath}/member/passwordUpdate.do'">
							비밀번호변경</button>
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" class="form-control" name="memberName"
						id="memberName" required></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="tel" class="form-control"
						placeholder="(-없이)01012345678" name="phone" id="phone"
						maxlength="11" required></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" class="form-control"
						placeholder="abc@naver.com" name="email" id="email"> <input
						type="checkbox" /><label id="check">정보수신동의</label></td>
				</tr>


				<!-- 		<tr>
					<th>회원등급 </th>
					<td>
						<div class="form-check form-check-inline">
							<input type="checkbox" class="form-check-input" name="grade" id="admin" value="관리자"><label class="form-check-label" for="admin">운동</label>&nbsp;
							<input type="checkbox" class="form-check-input" name="grade" id="general" value="일반"><label class="form-check-label" for="general">등산</label>&nbsp;
							<input type="checkbox" class="form-check-input" name="grade" id="supporter" value="서포터"><label class="form-check-label" for="supporter">등산</label>&nbsp;
						 </div>
					</td>
				</tr> -->
			</table>
			<br /> <br />
			<button class="btn btn-outline-success my-2 my-sm-0" type="button"
				onclick="location.href='${pageContext.request.contextPath}/member/memberUpdateEnd.do'">회원정보
				수정</button>
		</form>
	</div>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
