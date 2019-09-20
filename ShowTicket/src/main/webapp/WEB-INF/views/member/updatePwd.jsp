<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>   
</head>
<body>
	<style>
		div#updatePassword-container img{width: 150px;margin-top: 10px;margin-left: 5px; }
		#updatePFrm{ margin-top: 40px; margin-left: 50px;}
		input.btn.btn-outline-success{width: 126px;}
	</style>
	<div id="updatePassword-container">
		<img src="${pageContext.request.contextPath }/resources/images/showticket_logo.png" alt="" />
		<form name="updatePwdFrm" id="updatePFrm" action="${pageContext.request.contextPath }/member/updatePasswordEnd" method="post" >
		
				
				<label for="password">현재 비밀번호</label>
				<input type="password" id="password" name="password" class="form-control" required>
				
		
				<label for="password">변경할 비밀번호</label>
				<input type="password" name="password_new" id="password_new" class="form-control" required>
					
				<label for="password">비밀번호 확인</label>
				<input type="password" id="password_chk" class="form-control" required><br>
				
			
				<input type="submit" class="btn btn-outline-success my-2 my-lm-0"  value="변경" onclick="return passwordValidate();"/>&nbsp;
				<br />
				<input type="button" class="btn btn-outline-success my-2 my-lm-0" onclick="self.close();" value="닫기" />						
					
				<input type="hidden" name="memberId"  />
		</form>
		
	</div>
	
</body>
</html>