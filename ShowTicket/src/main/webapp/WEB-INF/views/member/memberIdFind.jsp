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
<script type="text/javascript" src="/resources/js/jquery-ui.js"></script>
<meta charset="utf-8">
<title>아이디 찾기</title>
</head>


<script language="JavaScript" type="text/JavaScript">
document.domain="interpark.com";

// 모바일 본인 인증 시 호출
$(document).ready(function(){
	egsIncorp.sendPageEgs( "id_search" );
	
	if('' == 'H'){
		secuResult(new Array(""
				 , ""
				 , ""
				 , ""
				 , ""
				 , ""
				 , ""
				 , ""
				 , ""
				 , ""
				 , ""
				 , ""
				 , ""
				 , ""
				 , ""
				 , ""));
	}else if('' == 'I'){
		ipinResult(""
				 , ""
				 , "" 
				 , ""
				 , ""
				 , ""
				 , ""
				 , ""
				 , ""
				 , ""
				);
	}


	$('.typeList .title').click(function(){
		$('.typeList').find('.error').text('').hide();
	});

	$("#memEmail1").focusout(function(){
		if(regExEmail.test($(this).val())){
			var $select = $('#memEmail2');
			var eDomain = $("#memEmail1").val().substring($("#memEmail1").val().indexOf('@')+1);
			$select.val(eDomain);
			if($select.find('option').filter(function(){return $(this).val() == eDomain;}).length > 0){
				$select.change();
			}else{
				var selectValue = $select.val();
				var changeText = $select.find('option[value="'+ selectValue +'"]').text();
				$select.next().text(changeText);
			}
		}
	});
	//$('#memNm1').focus();
});

if (document.location.protocol == 'http:') {
	document.location.href = document.location.href.replace('http:', 'https:');
}

//마우스 우클릭 방지
document.oncontextmenu=function()
{ 
	return false;
}

//텍스트 블럭지정 복사 방지
document.onselectstart=function() {
	return false;
}

//드래그 방지
document.ondragstart=function() {
	return false;
}


function idChange(form) {
	var form		= document.MemberMatchPwdForm;
 
	form.chkMemId.value = "";
}
 
function authChange(form) {
	var form		= document.MemberMatchPwdForm;
 
	form.auth.value = "";
}
		

function chkCert(type) {
	egsIncorp.sendEventEgs('id_search', 'find_id_certify');
	
	// 2013.03.18
	var form = document.MemberMatchPwdForm;
	var reqSite = "10";
	var div = "MATCH_ID";

	if(type == 'hp'){
		form.certGb.value = "H";
		form.action = "https://incorp.interpark.com/member/checkCert.do";
		form._method.value  = "secuHp";
		if('pc' == 'mobile' && '' == 'Y'){
			$('input[name=authRtnUrl]').val(encodeURIComponent(location.href));
			form.addVar.value = "&reqSite=" + ("15" + div);
			form.target = "_self";
			form.submit();
		}else{
			form.addVar.value = "&reqSite=" + (reqSite + div);
			form.target = "varWinName";
			var fullUrl = "https://incorp.interpark.com/member/checkCert.do?"+$(form).serialize();
			window.open(fullUrl,"varWinName","width=410, height=460, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0, left=435, top=250" );
		}
	}else if ( type == 'ipin'){
		document.reqCBAForm.action = 'http://ipin.siren24.com/i-PIN/jsp/ipin_j10.jsp';
		if('pc' == 'mobile' && '' == 'Y'){
			var newRetUrl = '23https://incorp.interpark.com/member/matchid.do?_method=authResult&formName=MemberMatchPwdForm'+"&reqSite=15MATCH_ID&mbrId=&mbrInfo=&authRtnUrl="+encodeURIComponent(location.href);
			$("form[name=reqCBAForm]").find('input[name=retUrl]').val(newRetUrl);
			document.reqCBAForm.target = '_self';
			$(document.reqCBAForm).submit();
		}else{
			var fullUrl = "http://ipin.siren24.com/i-PIN/jsp/ipin_j10.jsp?"+$(document.reqCBAForm).serialize();
			varWinNameObj = window.open(fullUrl, 'IPINWindow', 'width=450, height=500, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0');
			document.reqCBAForm.target = 'IPINWindow';
		}
	}
}

function chkMemInfo() {
	var form = document.reqCertUserInfoForm;
	//form.action = "/member/matchIdProc.do";
	form.action = "https://incorp.interpark.com/member/matchIdProc.do";
	
	if($('.typeList').eq(3).attr('class').indexOf('current') >= 0) {
		// 카카오페이 인증으로 찾기
		var data = {};
		
		if($("#memNm3").val() == null || $("#memNm3").val() == "" || $("#memNm3").val() == $("#memNm3").attr('placeholder')){
			showErrorMessage('이름을 입력해주세요.');
			$("#memNm3").focus()
			return;
		}else{
			form.memNm.value = $("#memNm3").val();
		}

		var regExp = /^\d{3}\d{3,4}\d{4}$/;
		if($("#inputHp3").val() == '' || $("#inputHp3").val() == $("#inputHp3").attr('placeholder')){
			showErrorMessage('휴대폰번호를 입력해주세요. (-없이 입력)');
			$("#inputHp3").focus();
			return;
		}else if(!regExp.test($("#inputHp3").val())){
			showErrorMessage('잘못된 휴대폰번호 형식입니다. (-없이 입력)');
			$("#inputHp3").val('').focus()
			return;
		}else{
			// *** hp
			var hp	= $("#inputHp3").val();
			form.hp.value = hp;
		}
		
		var regExpNum = /^[0-9]*$/;
		if($("#birthday").val() == null || $("#birthday").val() == "" || $("#birthday").val() == $("#birthday").attr('placeholder')) {
			showErrorMessage('생년월일을 입력해주세요. (ex. 19960601)');
			$("#birthday").focus();
			return;
		} else if(!regExpNum.test($("#birthday").val())) {
			showErrorMessage('숫자만 입력해주세요. (-없이 입력)');
			$("#birthday").val('').focus()
			return;
		} else if($("#birthday").val().length != 8) {
			showErrorMessage('생년월일을 8자리로 입력해주세요. (ex. 19960601)');
			$("#birthday").val('').focus()
			return;
		} else {
			// *** birthDay
			var birthDay	= $("#birthday").val();
			form.birthDay.value = birthDay;
		}
		
		data = {
				"_method" : "requestCertificationWithKakaoPay",
				"name" : $("#memNm3").val(),
				"phoneNo" : $("#inputHp3").val(),
				"birthday" : $("#birthday").val(),
				"title" : "아이디 찾기"
			};
		
		$.ajax({
			type:"POST"
			//,async:false
			,url:"/member/checkCert.do"
			,data:data
			,contentType:"application/x-www-form-urlencoded; charset=utf-8"
			,beforeSend: function(){$("#loading").show();}
			,success: function(){$("#loading").hide();}
		}).done(function(jsonData){
			if(jsonData.code == '00'){
				showErrorMessage('', false);
				var btn = $('.btnKakao');
				var $inputBox = btn.closest('.inputEnter').find('.inputBox');
				var $idInfo = btn.closest('.inputEnter').find('.idInfo');
				var $pwInfo = btn.closest('.inputEnter').find('.pwInfo');
				var $btnArea = btn.closest('.inputEnter').find('.btnArea');
				var inputBtn = $btnArea.find('.btnKakao');
				var infoBtn = $btnArea.find('.btnKakaoBlack');
					
				var chk = [$inputBox, $idInfo, $pwInfo, inputBtn, infoBtn];
				
				$.each(chk, function(i, el) {
					if (el.hasClass('hidden')) {
						el.removeClass('hidden');
					} else if (!(el.hasClass('hidden'))) {
						el.addClass('hidden');
					}
				});
				form.token.value = jsonData.token;
			} else {
				kakaoPayCertResultAlert(jsonData.code);
			}
		}).error(function(){
			$("#loading").hide();
		});
	} else {
		// 기존 휴대폰번호로 찾기 및 등록된 이메일로 찾기 로직
		if($('.typeList').eq(0).attr('class').indexOf('current') >= 0){
			if($("#memNm1").val() == null || $("#memNm1").val() == "" || $("#memNm1").val() == $("#memNm1").attr('placeholder')){
				showErrorMessage('이름을 입력해주세요.');
				$("#memNm1").focus()
				return;
			}else{
				form.memNm.value = $("#memNm1").val();
			}
	
			var regExp = /^\d{3}\d{3,4}\d{4}$/;
			if($("#inputHp").val() == '' || $("#inputHp").val() == $("#inputHp").attr('placeholder')){
				showErrorMessage('휴대폰번호를 입력해주세요. (-없이 입력)');
				$("#inputHp").focus();
				return;
			}else if(!regExp.test($("#inputHp").val())){
				showErrorMessage('잘못된 휴대폰번호 형식입니다. (-없이 입력)');
				$("#inputHp").val('').focus()
				return false;
			}else{
				// *** hp
				var hp	= $("#inputHp").val();
				form.hp.value = hp;
			}
			form.certType.value = "sms";
		} else if($('.typeList').eq(1).attr('class').indexOf('current') >= 0){
				if($("#memNm2").val() == null || $("#memNm2").val() == "" || $("#memNm2").val() == $("#memNm2").attr('placeholder')){
				showErrorMessage('이름을 입력해주세요.');
					return ;
				}else{
					form.memNm.value = $("#memNm2").val();
				}
				if(document.getElementById("memEmail1").value.length ==0 || document.getElementById("memEmail2").value.length ==0
						 || $("#memEmail1").val() == $("#memEmail1").attr('placeholder')){
					showErrorMessage('이메일을 입력해주세요.');
					return ;
				}else if(!regExEmail.test(document.getElementById("memEmail1").value)){
					showErrorMessage('잘못된 이메일 형식입니다. ');
					$(document.getElementById("memEmail1")).focus();
					return ;
				}else{
					// *** memEmail
					var memEmail	= document.getElementById("memEmail1").value;
					form.email.value = memEmail;
				}
				form.certType.value = "email";
		}

		$.ajax({
			type:"POST"
			//,async:false
			,url:"/member/matchIdProc.do"
			,data:$(form).serialize()
			,contentType:"application/x-www-form-urlencoded; charset=utf-8"
			,beforeSend: function(){$("#loading").show();}
			,success: function(){$("#loading").hide();}
		}).done(function(r){
			if(r.code == '00'){
				showErrorMessage('', false);
				$(form).find("input[name='callTp']").val('');
				if('pc' == 'mobile')
					location.replace(form.action + "?" + $(form).serialize());
				else
					form.submit();
			}else{
				showErrorMessage('입력된 회원정보가 존재하지 않습니다. 비회원일 경우 회원가입 후 이용해주세요.');
				if($('.typeList').eq(0).attr('class').indexOf('current') >= 0){
					$('.typeList').eq(0).find('input').val('');
				}else{
					$('.typeList').eq(1).find('input').val('');
					$select = $('.typeList').eq(1).find('select');
					var selectValue = 'etc';
					var changeText = $select.find('option[value="'+ selectValue +'"]').text();
					$select.next().text(changeText);
				}
			}
		}).error(function(){
			$("#loading").hide();
		});
	}
}


function memJoin() {
	var form = document.MemberMatchPwdForm; 
	location.href="https://incorp.interpark.com/member/memberjoinclause.do?_method=initial";
}

function ipinResult(val1, val2, val3, val4, val5, val6, val7, val8, val9, val10) {
	var form	= document.reqCBAForm;
	form.elements["result"].value = val1;
	
	var form1	= document.MemberMatchPwdForm;
	form1.elements["discrHash"].value = val2;
	form1.elements["ciscrHash"].value = val8;
		
	if (val1 == '1') {
		form1._method.value  = "idMatchProc";
		form1.elements["certGb"].value = "I";
		form1.elements["retInfo"].value = val9;
		form1.elements["cReqNum"].value = val10;
		$(form1).find("input[name='callTp']").val('json');
		
		form1.action="https://incorp.interpark.com/member/matchIdProc.do";

		$.ajax({
			type:"POST"
			//,async:false
			,url:"/member/matchIdProc.do"
			,data:$(form1).serialize()
			,contentType:"application/x-www-form-urlencoded; charset=utf-8"
			,beforeSend: function(){$("#loading").show();}
			,success: function(){$("#loading").hide();}
		}).done(function(r){
			if(r.code == '00'){
				$(form1).find("input[name='callTp']").val('');
				$(form1).attr('target', '');
				
				if('pc' == 'mobile'){
					location.replace(form1.action + "?" + $(form1).serialize());
				}
				else{
					$('form[name=MemberMatchPwdForm]')[0].submit();
				}
			}else if(r.code == '01'){
				alert('해당 본인인증 정보로 가입 된 아이디가 존재하지 않습니다.');
			}else{
				alert('등록된 아이디를 찾을 수 없습니다.');
			}
		}).error(function(){
			$("#loading").hide();
		});	
		//form1.submit();
		return;
	} else {
		alert("인증에 실패했습니다. 다른 방법으로 아이디를 찾아보십시오.");
			form1._method.value  = "initialPopUp";
			form1.action="https://incorp.interpark.com/member/matchid.do";
			form1.submit();
		return;
	}
}

function inFocus2(i) {
	(i).style.border='1px solid #DE4D52';
	//(i).style.padding='4px 0 0 4px;';
	(i).style.backgroundImage = 'none';
	(i).style.backgroundColor = '#FAFAFA';
}

function outFocus2(i) {
	(i).style.border='1px solid #EAEAEA';
	//(i).style.padding='8px 0 0 6px;';
}

function chg_rdoMenu(num) {
	for (i=1; i<3; i++) {
		var obj_type  = document.getElementById("login_type" + i);
		if (i == num) {
			obj_type.style.display = "block";
		} else {
			obj_type.style.display = "none";
		}
	}
}

function moveFocus(num,fromform,toform){
	var str = fromform.value.length;
	if(str == num)	
		toform.focus(); 
}

function secuResult(arr) {
	var val1 = arr[0];
	var val2 = arr[1];
	var val3 = arr[2];
	var val4 = arr[3];
	var val5 = arr[4];
	var val6 = arr[5];
	var val7 = arr[6];
	var val8 = arr[7];
	var val9 = arr[8];
	var val10 = arr[9];
	var val11 = arr[10];
	var val12 = arr[11];
	var cReqNum = arr[15];
	
	var form	= document.MemberMatchPwdForm;
	form.elements["result"].value = val1;
	//alert("val1 = " + val1 + "\nval2 = " + val2 + "\nval3 = " + val3 + "\nval4 = " + val4 + "\nval5 = " + val5);	
	if (val1 == 'Y') {
		form.elements["certGb"].value = "H";
		form.elements["discrHash"].value = val3;
		form.elements["ciscrHash"].value = val6;
		form.elements["retInfo"].value = val4;
		form.elements["reqNum1"].value = val5;
		form.elements["cReqNum"].value = cReqNum;

		form._method.value  = "idMatchProc";
		form.action="https://incorp.interpark.com/member/matchIdProc.do";	

		$.ajax({
			type:"POST"
			//,async:false
			,url:"/member/matchIdProc.do"
			,data:$(form).serialize()
			,contentType:"application/x-www-form-urlencoded; charset=utf-8"
			,beforeSend: function(){$("#loading").show();}
			,success: function(){$("#loading").hide();}
		}).done(function(r){
			if(r.code == '00'){
				$(form).find("input[name='callTp']").val('');
				$(form).attr('target', '');
				if('pc' == 'mobile')
					location.replace(form.action + "?" + $(form).serialize());
				else
					form.submit();
			}else  if(r.code == '01'){
				alert('해당 본인인증 정보로 가입 된 아이디가 존재하지 않습니다.');
			}else{
				alert('등록된 아이디를 찾을 수 없습니다.');
			}
		}).error(function(){
			$("#loading").hide();
		});
		
		//form.submit();// 테스트 시 임시로 막자..
	} else {
		alert("인증에 실패했습니다. 아이핀인증 또는 고객센터로 연락 바랍니다.");
//		form.action="https://incorp.interpark.com/member/matchid.do";
	}
	return;
}

function leafbuds(){

	var form = document.MemberMatchPwdForm;
	$.ajax({
		type:"POST"
		//,async:false
		,url:"/member/matchIdProc.do"
		,data:$(form).serialize()
		,contentType:"application/x-www-form-urlencoded; charset=utf-8"
		,beforeSend: function(){$("#loading").show();}
		,success: function(){$("#loading").hide();}
	}).done(function(r){
		if(r.code == '00'){
			$(form).find("input[name='callTp']").val('');
			//form.submit();
		} if(r.code == '01'){
			alert('해당 본인인증 정보로 가입 된 아이디가 존재하지 않습니다.');
		}else{
			alert('등록된 아이디를 찾을 수 없습니다.');
		}
	}).error(function(){
		$("#loading").hide();
	});

}

function div_OnOff(v,id){
	 // 라디오 버튼 value 값 조건 비교 principal, phone, email
	 if(v == "1"){
			document.getElementById("phone").style.display = ""; // 보여줌
			document.getElementById("email").style.display = "none"; // 숨김
			document.getElementById("principal").style.display = "none"; // 숨김
	 }else if(v == "2"){
			document.getElementById("email").style.display = ""; // 보여줌
			document.getElementById("phone").style.display = "none"; // 숨김
			document.getElementById("principal").style.display = "none"; // 숨김
	 }else if(v == "3"){
				document.getElementById("principal").style.display = ""; // 보여줌
				document.getElementById("phone").style.display = "none"; // 숨김
				document.getElementById("email").style.display = "none"; // 숨김
	}
}



function chkMemEmail()
{

	if($("#memEmail2").val() != 'etc'){	// 직접입력 아니면 체크...
		if($("#memEmail1").val() == ''){
			showErrorMessage('이메일을 입력해주세요.');
			$("#memEmail1").focus();
		}else{
			if($("#memEmail1").val().indexOf('@') >= 0){
				$("#memEmail1").val($("#memEmail1").val().substring(0, $("#memEmail1").val().indexOf('@')));
			}
			$("#memEmail1").val($("#memEmail1").val()+'@'+$("#memEmail2").val());
		}
	}else if($("#memEmail2").val() == 'etc' && $("#memEmail1").val().indexOf('@') >= 0){
		$("#memEmail1").val($("#memEmail1").val().substring(0, $("#memEmail1").val().indexOf('@')));
	}
	showErrorMessage('', false);
}

function showErrorMessage(msg, isShow){
	if(isShow === false){
		$('.typeList').filter(function(){return $(this).attr('class').indexOf('current') >= 0;}).find('.error').text(msg).hide();
	}else{
		$('.typeList').filter(function(){return $(this).attr('class').indexOf('current') >= 0;}).find('.error').text(msg).show();
	}
}

function changeTab(uri){
	var url = "https://" + location.host + uri;
	if(location.href.toString().indexOf('&') >=0 ){
		url = url + location.href.toString().substring(location.href.toString().indexOf('&'));
	}
	location.replace(url);
}

function chkCertKakaoPay() {
	var form = document.reqCertUserInfoForm;
	var data = {};
	var token = form.token.value;
	form.action = "https://incorp.interpark.com/member/matchIdProc.do";
	if(token == null || token == "" || token.length ==0){
		alert('인증이 완료되지 않았습니다. 잠시 후 다시 시도해주세요.')
		return;
	}

	var method = "receiveCertResultsCheckFromKakaoPayAndMatchId";
	var style = form._style.value;
	var isPopup = form.isPopup.value;
	var hp = form.hp.value;
	var email = form.email.value;
	var memNm = form.memNm.value;
	var callTp = form.callTp.value;
	var result = form.result.value;
	var closeType = form.closeType.value;
	var token = form.token.value;
	var birthDay = form.birthDay.value;
	
	data = {
			"_method" : method
			, "style" : style
			, "isPopup" : isPopup
			, "hp" : hp
			, "memNm" : memNm
			, "callTp" : callTp
			, "result" : result
			, "token" : token
			, "birthDay" : birthDay
		};
	
	$.ajax({
		type:"POST"
		//,async:false
		,url:"/member/matchIdProc.do"
		,data:data
		,contentType:"application/x-www-form-urlencoded; charset=utf-8"
		,beforeSend: function(){$("#loading").show();}
		,success: function(){$("#loading").hide();}
	}).done(function(r){
		if(r.code == '00') {
			showErrorMessage('', false);
			$(form).find("input[name='callTp']").val('');
			$(form).find("input[name='_method']").val(method);
			if('pc' == 'mobile') {
				location.replace(form.action + "?" + $(form).serialize());
			} else{
				form.submit();
			}
		} else {
			kakaoPayCertResultAlert(r.code);
		}
	}).error(function(){
		$("#loading").hide();
	});
}

function kakaoPayCertResultAlert(code) {
	if(code == '10'){
		alert('입력된 회원정보가 존재하지 않습니다. 비회원일 경우 회원가입 후 이용해주세요.');
		changeTab('/member/matchid.do?_method=initialPopUp');
		return;
	} else if(code == '20' || code == "E413"){
		alert("인증 시간이 초과되었습니다.");
		changeTab('/member/matchid.do?_method=initialPopUp');
		return;
	} else if(code == '30'){
		alert('인증이 완료되지 않았습니다. 잠시 후 다시 시도해주세요.');
	} else if(code == '40'){
		alert('카카오페이 인증에 실패하였습니다.');
		changeTab('/member/matchid.do?_method=initialPopUp');
		return;
	} else if(code == "E300" || code == "E408") {
		alert("오류가 발생하였습니다. 계속 발생하는 경우 고객센터에 문의해주세요.");
	} else if(code == "E400") {
		alert("카카오톡 사용자가 아닙니다. 카카오톡 가입 이후 사용해주세요.");
	} else if(code == "E401") {
		alert("잘못된 휴대폰번호 형식입니다. (-없이 입력)");
	} else if(code == "E402") {
		alert("고객성명 형식에 맞지 않음 (공백, 특수문자 사용)");
	} else if(code == "E403") {
		alert("생년월일 형식에 맞지 않음");
	} else if(code == "E404") {
		alert("오류가 발생하였습니다. 잠시 후에 다시 시도해주세요.");
	} else if(code == "E421" || code == "E422") {
		alert("입력정보가 일치하지 않습니다. 입력하신 정보를 다시 확인해주세요.");
	} else if(code == "E450" || code == "E498" || code == "E499" || code == "E500") {
		alert("오류가 발생하였습니다. 잠시 후에 다시 시도해주세요.");
	} else {
		alert('카카오페이 인증에 실패하였습니다.');
	}
	
	$('.typeList').eq(3).find('input').val('');
	return;
}
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
				href="${pageContext.request.contextPath}/member/memberIdFind.do">아이디 찾기</a></li>
			<li class="nav-item"><a class="nav-link nav-font default"
				href="${pageContext.request.contextPath}/member/memberPwdFind.do">비밀번호 찾기</a></li>
		</ul>
		<hr />
		<div id="html5" class="menuSection">
			<h2><a href="#html5">생일로 찾기</a></h2>
			<div id="move">
				<div class="inputEnter" style="display: block;">
											<div class="inputBox">
												<div class="styleInput">
													<input id="memNm1" name="memNm" type="text" class="iInput" placeholder="이름">
													<span id="conClear" class="delBtn" style="display: none;"></span>
												</div>
												<div class="styleInput">
													<input id="inputHp" name="inputHp" type="text" class="iInput" inputmode="numeric" placeholder="생년월일을 입력하세요(6자리만입력)">
													<span id="conClear" class="delBtn" style="display: none;"></span>
													<p class="error" style="display:none"></p>
												</div>
											</div>
											<div class="btnArea">
												<button type="submit" onclick="javascript:egsIncorp.sendEventEgs('id_search', 'find_id_hp'); javascript:chkMemInfo(); return false;" class="btn8f">확인</button>
											</div>
				</div>
				
			</div>
		</div>
		<div id="css3" class="menuSection">
			<h2><a href="#css3">등록된 이메일로 찾기</a></h2>
			<div id="move">
				<div class="inputEnter" style="display: block;">
									<div class="inputBox">
										<div class="styleInput">
											<input name="memNm" id="memNm2" type="text" class="iInput" placeholder="이름">
											<span id="conClear" class="delBtn" style="display: none;"></span>
										</div>
										<div class="emailInput">
											<div class="styleInput">
												<input name="memEmail1" id="memEmail1" type="text" class="iInput" placeholder="이메일">
												<span id="conClear" class="delBtn" style="display: none;"></span>
											</div>
								<!-- 			<div class="customSelect">
												<select name="memEmail2" id="memEmail2" onchange="chkMemEmail();">
													<option value="etc">직접입력</option>
													<option value="gmail.com">gmail.com</option>
													<option value="chol.com">chol.com</option>
													<option value="dreamwiz.com">dreamwiz.com</option>
													<option value="empal.com">empal.com</option>
													<option value="freechal.com">freechal.com</option>
													<option value="hanafos.com">hanafos.com</option>
													<option value="hanmail.net">hanmail.net</option>
													<option value="hanmir.com">hanmir.com</option>
													<option value="hotmail.com">hotmail.com</option>
													<option value="korea.com">korea.com</option>
													<option value="nate.com">nate.com</option>
													<option value="naver.com">naver.com</option>
													<option value="netian.com">netian.com</option>
													<option value="paran.com">paran.com</option>
													<option value="sayclub.com">sayclub.com</option>
													<option value="yahoo.co.kr">yahoo.co.kr</option>
													<option value="yahoo.com">yahoo.com</option>
												</select>
											<div class="newSelect">직접입력</div><ul class="options"><li class="option" data-option="etc">직접입력</li><li class="option" data-option="gmail.com">gmail.com</li><li class="option" data-option="chol.com">chol.com</li><li class="option" data-option="dreamwiz.com">dreamwiz.com</li><li class="option" data-option="empal.com">empal.com</li><li class="option" data-option="freechal.com">freechal.com</li><li class="option" data-option="hanafos.com">hanafos.com</li><li class="option" data-option="hanmail.net">hanmail.net</li><li class="option" data-option="hanmir.com">hanmir.com</li><li class="option" data-option="hotmail.com">hotmail.com</li><li class="option" data-option="korea.com">korea.com</li><li class="option" data-option="nate.com">nate.com</li><li class="option" data-option="naver.com">naver.com</li><li class="option" data-option="netian.com">netian.com</li><li class="option" data-option="paran.com">paran.com</li><li class="option" data-option="sayclub.com">sayclub.com</li><li class="option" data-option="yahoo.co.kr">yahoo.co.kr</li><li class="option" data-option="yahoo.com">yahoo.com</li></ul></div>
											<p class="error" style="display:none"></p> -->
										</div>
									</div>
									<div class="btnArea">
										<button type="submit" onclick="javascript:egsIncorp.sendEventEgs('id_search', 'find_id_email'); javascript:chkMemInfo(); return false;" class="btn8f">확인</button>
									</div>
							</div>
				</div>
		</div>
		<div id="api" class="menuSection">
			<h2><a href="#api">등록된 휴대폰으로 찾기</a></h2>
			<div id="move">
				<div class="inputEnter" style="display: block;">
										<div class="inputBox">
											<div class="styleInput">
												<input id="memNm1" name="memNm" type="text" class="iInput" placeholder="이름">
												<span id="conClear" class="delBtn" style="display: none;"></span>
											</div>
											<div class="styleInput">
												<input id="inputHp" name="inputHp" type="text" class="iInput" inputmode="numeric" placeholder="휴대폰번호 (-없이 입력)">
												<span id="conClear" class="delBtn" style="display: none;"></span>
												<p class="error" style="display:none"></p>
											</div>
										</div>
										<div class="btnArea">
											<button type="submit" onclick="javascript:egsIncorp.sendEventEgs('id_search', 'find_id_hp'); javascript:chkMemInfo(); return false;" class="btn8f">확인</button>
										</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>