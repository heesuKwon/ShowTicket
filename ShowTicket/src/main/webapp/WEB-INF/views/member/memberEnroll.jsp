<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	//System.out.println("memberEnroll.jsp");
%>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="회원 등록" name="pageTitle"/>
</jsp:include>

<style>
div#enroll-container{width:500px; margin:0 auto; text-align:center;}
div#enroll-container input, div#enroll-container select {margin-bottom:10px;}
div#enroll-container table{margin: 0 auto;}
div#enroll-container table th{text-align: right; padding-right:10px;}
div#enroll-container table td{text-align: left;}
/*중복 아이디 체크 관련*/
div#memberId-container{position:relative; padding:0px;}
div#memberId-container span.guide {display:none;font-size: 12px;position:absolute; top:12px; left: 50%; }
div#memberId-container span.ok{color:green;}
div#memberId-container span.error{color:red;}

/*패스워드 일치 관련*/
div#password-container{position:relative; padding:0px;}
div#password-container span.pw {display:none;font-size: 12px;position:absolute; top:12px; left: 50%; }
div#password-container span.ok{color:green;}
div#password-container span.error{color:red;}

</style>

<!-- 
	bootstrap form 태그 작성요령
	* input[type=text, password, tel, number], select
		-> .form-control
	* input[type=checkbox, radio] 
		-> .form-check-input
	* label
		-> .form-check-label
	* radio, checkbox는 
	  div.form-check.form-check-inline으로 감싸줄것.


 -->
<div id="enroll-container">
	<form name="memberEnrollFrm" action="memberEnrollEnd.do" method="post" onsubmit="return validate();" >
		<table>
			<tr>
				<th>아이디</th>
				<td>
					 <div id="memberId-container">
						<input type="text" class="form-control" placeholder="4글자이상" name="memberId" id="memberId_" required>
						<span class="guide ok">아이디 사용 가능</span>
			            <span class="guide error">아이디 사용 불가능</span>
			            <input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value="0"/>
					</div>
				</td>
			</tr>
			
			<tr>
				<th>패스워드</th>
				<td>
					<input type="password" class="form-control" name="password" id="password_" required>
				</td>
			</tr>
			
			<tr>
				<th>패스워드확인</th>
				<td>
					<div id="password-container">
						<input type="password" class="form-control" id="password2" required>
						<span class="pw ok">비밀번호 일치</span>
						<span class="pw error">비밀번호 불일치</span>
					</div>
				</td>
			</tr>  
			
			<tr>
				<th>이름</th>
				<td>	
				<input type="text" class="form-control" name="memberName" id="memberName" required>
				</td>
			</tr>
	
			<tr>
				<th>이메일</th>
				<td>	
					<input type="email" class="form-control" placeholder="abc@naver.com" name="email" id="email">
				</td>
			</tr>
			
			<tr>
				<th>휴대폰</th>
				<td>	
					<input type="tel" class="form-control" placeholder="(-없이)01012345678" name="phone" id="phone" maxlength="11" required>
				</td>
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
		<input type="submit" value="가입" >
		<input type="reset" value="취소">
	</form>
</div>

<script>
$(function(){
	
	
 	// 비밀번호 검사
 	$("#password2").keyup(function(){
 		
 		var password1 = $("#password_").val().trim();
 		var password2 = $("#password2").val().trim();
 		
 		if(password1 != password2){
 			$(".pw.error").show();
			$(".pw.ok").hide();
 		}
 		else{
 			$(".pw.error").hide();
			$(".pw.ok").show();
 		}
 	});
 	
	//아이디 중복체크 ajax
 	$("#memberId_").on("keyup",(e)=>{
		var memberId = $(e.target).val().trim();
		
		if(memberId.length < 4){
			$(".guide").hide();
			$("#idDuplicateCheck").val(0);
			return;
		}
		
		$.ajax({
			url: "${pageContext.request.contextPath}/member/checkIdDuplicate.do",
			data: {memberId: memberId},//memberId=honggd
			//dataType: "json",
			success: data => {
				console.log(data);//json타입이 js object로 변환되어 전달됨.
				if(data.isUsable==true){
					$(".guide.error").hide();
					$(".guide.ok").show();
					$("#idDuplicateCheck").val(1);//중복체크 했음
				}
				else{
					$(".guide.error").show();
					$(".guide.ok").hide();
					$("#idDuplicateCheck").val(0);//중복체크 안했음					
				}
				
			},
			error: (jqxhr, textStatus, errorThrown)=>{
				console.log("ajax처리실패!", jqxhr, textStatus, errorThrown);
			}
			
		});
		
		
	});
		
});

function validate(){
	var memberId = $("#memberId_");
	if(memberId.val().trim().length<4){
		alert("아이디는 최소 4자리이상이어야 합니다.");
		memberId.focus();
		return false;
	}
	
	return true;
}
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>