<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/css/find.css"></link>
<meta charset="utf-8">
<title>아이디 찾기</title>
</head>


<script language="JavaScript" type="text/JavaScript">

	//마우스 우클릭 방지
	document.oncontextmenu = function() {
		return false;
	}

	//텍스트 블럭지정 복사 방지
	document.onselectstart = function() {
		return false;
	}

	//드래그 방지
	document.ondragstart = function() {
		return false;
	}


	(()=>{
		$(".btn8f").on("click", function(e){
			console.log($(e.target));
		});
	});
/* 
	function chkMemInfo() {
		var form = document.reqCertUserInfoForm;
		//form.action = "/member/matchIdProc.do";
		form.action = "https://incorp.interpark.com/member/matchIdProc.do";

		
			// 기존 휴대폰번호로 찾기 및 등록된 이메일로 찾기 로직
			if ($('.typeList').eq(0).attr('class').indexOf('current') >= 0) {
				if ($("#memNm1").val() == null
						|| $("#memNm1").val() == ""
						|| $("#memNm1").val() == $("#memNm1").attr(
								'placeholder')) {
					showErrorMessage('이름을 입력해주세요.');
					$("#memNm1").focus()
					return;
				} else {
					form.memNm.value = $("#memNm1").val();
				}

				var regExp = /^\d{3}\d{3,4}\d{4}$/;
				if ($("#inputHp").val() == ''
						|| $("#inputHp").val() == $("#inputHp").attr(
								'placeholder')) {
					showErrorMessage('휴대폰번호를 입력해주세요. (-없이 입력)');
					$("#inputHp").focus();
					return;
				} else if (!regExp.test($("#inputHp").val())) {
					showErrorMessage('잘못된 휴대폰번호 형식입니다. (-없이 입력)');
					$("#inputHp").val('').focus()
					return false;
				} else {
					// *** hp
					var hp = $("#inputHp").val();
					form.hp.value = hp;
				}
				form.certType.value = "sms";
			} else if ($('.typeList').eq(1).attr('class').indexOf('current') >= 0) {
				if ($("#memNm2").val() == null
						|| $("#memNm2").val() == ""
						|| $("#memNm2").val() == $("#memNm2").attr(
								'placeholder')) {
					showErrorMessage('이름을 입력해주세요.');
					return;
				} else {
					form.memNm.value = $("#memNm2").val();
				}
				if (document.getElementById("memEmail1").value.length == 0
						|| document.getElementById("memEmail2").value.length == 0
						|| $("#memEmail1").val() == $("#memEmail1").attr(
								'placeholder')) {
					showErrorMessage('이메일을 입력해주세요.');
					return;
				} else if (!regExEmail.test(document
						.getElementById("memEmail1").value)) {
					showErrorMessage('잘못된 이메일 형식입니다. ');
					$(document.getElementById("memEmail1")).focus();
					return;
				} else {
					// *** memEmail
					var memEmail = document.getElementById("memEmail1").value;
					form.email.value = memEmail;
				}
				form.certType.value = "email";
			}

			$
					.ajax(
							{
								type : "POST"
								//,async:false
								,
								url : "/member/matchIdProc.do",
								data : $(form).serialize(),
								contentType : "application/x-www-form-urlencoded; charset=utf-8",
								beforeSend : function() {
									$("#loading").show();
								},
								success : function() {
									$("#loading").hide();
								}
							})
					.done(
							function(r) {
								if (r.code == '00') {
									showErrorMessage('', false);
									$(form).find("input[name='callTp']")
											.val('');
									if ('pc' == 'mobile')
										location.replace(form.action + "?"
												+ $(form).serialize());
									else
										form.submit();
								} else {
									showErrorMessage('입력된 회원정보가 존재하지 않습니다. 비회원일 경우 회원가입 후 이용해주세요.');
									if ($('.typeList').eq(0).attr('class')
											.indexOf('current') >= 0) {
										$('.typeList').eq(0).find('input').val(
												'');
									} else {
										$('.typeList').eq(1).find('input').val(
												'');
										$select = $('.typeList').eq(1).find(
												'select');
										var selectValue = 'etc';
										var changeText = $select.find(
												'option[value="' + selectValue
														+ '"]').text();
										$select.next().text(changeText);
									}
								}
							}).error(function() {
						$("#loading").hide();
					});
			}
	}
 */

</script>


<body>
	<img
		src="${pageContext.request.contextPath }/resources/images/showticket_logo.png"
		style="width: 100px; height: 40px; padding-top: 20px; margin-left: 171px;"
		id="center-image" alt="스프링로고" />
	<br />
	<hr />
	<div class="accordionMenu">
		<ul class="nav nav-pills nav-justified">
			<li class="nav-item"><a class="nav-link select nav-font"
				href="${pageContext.request.contextPath}/member/memberIdFind.do">아이디
					찾기</a></li>
			<li class="nav-item"><a class="nav-link nav-font default"
				href="${pageContext.request.contextPath}/member/memberPwdFind.do">비밀번호
					찾기</a></li>
		</ul>
		<hr />
		<div id="html5" class="menuSection">
			<h2>
				<a href="#html5">생일로 찾기</a>
			</h2>
			<div id="move">
				<!-- <form name="findIdbyBirth" id="findIdbyBirth" action="findIdbyBirth.do" method="post"> -->
				<div class="inputEnter" style="display: block;">
					<div class="inputBox">
						<input id="memNm1" name="memNm" type="text" class="iInput"
							placeholder="이름">
					</div>
					<div class="styleInput">
						<input id="inputBir" name="inputBir" type="text" class="iInput"
							placeholder="생년월일을 입력하세요(6자리만입력)"> 
					</div>
				</div>
				<div class="btnArea">
					<button type="submit"
						class="btn8f">확인</button>
				</div>
				<!-- </form> -->
			</div>
		</div>
		<div id="css3" class="menuSection">
			<h2>
				<a href="#css3">등록된 이메일로 찾기</a>
			</h2>
			<div id="move">
				<div class="inputEnter" style="display: block;">
					<div class="inputBox">
						<div class="styleInput">
							<input name="memNm2" id="memNm2" type="text" class="iInput"
								placeholder="이름"> 
						</div>
						<div class="emailInput">
							<div class="styleInput">
								<input name="memEmail1" id="memEmail1" type="text"
									class="iInput" placeholder="이메일"> 
							</div>
						</div>
					</div>
					<div class="btnArea">
						<button type="submit"
							onclick="javascript:egsIncorp.sendEventEgs('id_search', 'find_id_email'); javascript:chkMemInfo(); return false;"
							class="btn8f">확인</button>
					</div>
				</div>
			</div>
		</div>
		<div id="api" class="menuSection">
			<h2>
				<a href="#api">등록된 휴대폰으로 찾기</a>
			</h2>
			<div id="move">
				<div class="inputEnter" style="display: block;">
					<div class="inputBox">
						<div class="styleInput">
							<input id="memNm3" name="memNm" type="text" class="iInput"
								placeholder="이름"> 
						</div>
						<div class="styleInput">
							<input id="inputHp" name="inputHp" type="text" class="iInput"
								placeholder="휴대폰번호 (-없이 입력)">
						</div>
					</div>
					<div class="btnArea">
						<button type="submit"
							onclick="javascript:egsIncorp.sendEventEgs('id_search', 'find_id_hp'); javascript:chkMemInfo(); return false;"
							class="btn8f">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>