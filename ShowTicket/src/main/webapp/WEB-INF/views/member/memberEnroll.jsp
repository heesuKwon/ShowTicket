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

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/member.css">

<div id="enroll-container">
	<form name="memberEnrollFrm" action="memberEnrollEnd.do" method="post" onsubmit="return validate();" >
		<table>
			<tr>
				<th>아이디<span class="star">*</span></th>
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
				<th>비밀번호<span class="star">*</span></th>
				<td>
					<input type="password" class="form-control" name="password" id="password_" required>
				</td>
			</tr>
			
			<tr>
				<th>비밀번호확인</th>
				<td>
					<div id="password-container">
						<input type="password" class="form-control" id="password2" required>
						<span class="pw ok">비밀번호 일치</span>
						<span class="pw error">비밀번호 불일치</span>
					</div>
				</td>
			</tr>  
			
			<tr>
				<th>이름<span class="star">*</span></th>
				<td>	
				<input type="text" class="form-control" name="memberName" id="memberName" required>
				</td>
			</tr>
	
			<tr>
				<th>이메일</th>
				<td>
				
						<input type="email" class="form-control" placeholder="abc@naver.com" name="email" id="email">
						<button class="btn btn-gray btn-sm" id="emailAuthSubmit">이메일 인증</button>
					<p id="emailAuthstatus" style="display:none;">이메일 인증이 완료되었습니다.</p>
				</td>
			</tr>
			
			<tr>
				<th>휴대폰<span class="star">*</span></th>
				<td>	
					<input type="tel" class="form-control" placeholder="(-없이)01012345678" name="phone" id="phone" maxlength="11" required>
					<button class="btn btn-gray btn-sm">휴대폰 인증</button>
				</td>
			</tr>
			
		</table>
		<input class="btn btn-color" type="submit" value="회원가입" >
		<input class="btn btn-gray" type="reset" value="취소">
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
	
	$("#emailAuthSubmit").on("click",function(){
		var email = $("#email").val().trim();
		
		$.ajax({
			url: "${pageContext.request.contextPath}/member/joinPost",
			data: {email: email},
			success: data =>{
				console.log(data);
				if(data.emailAuthCheck==1){
					$("#emailAuthstatus").show();
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
/* 
function emailAuthSubmit(){
	$(form["memberEnrollFrm"]).submit();
} */
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>