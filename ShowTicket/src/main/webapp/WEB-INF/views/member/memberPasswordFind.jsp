<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

	<div class="content">
	<div class="title_set">
        <!--↓↓ 현재위치출력 -->
                            	<h2>CSS</h2>
        <!--↓↓ 현재위치출력 -->
        <ul>
            <li>home</li>            <li>Web</li>            <li>CSS</li>                    </ul>
    </div>
    <div><section class="xm">
	<section>
	<h1>이메일 주소로 계정 찾기</h1>
	<p>아이디/비밀번호는 가입시 등록한 메일 주소로 알려드립니다. 가입할 때 등록한 메일 주소를 입력하고 "ID/PW 찾기" 버튼을 클릭해주세요.<br></p>
		<form action="./" method="get" onsubmit="return procFilter(this, find_member_account)"><input type="hidden" name="error_return_url" value="/?mid=CSS&amp;act=dispMemberFindAccount"><input type="hidden" name="act" value="dispMemberFindAccount"><input type="hidden" name="vid" value="">
		<input type="hidden" name="mid" value="CSS">
		<input type="hidden" name="document_srl" value="">
		<input type="hidden" name="page" value="">
		<input type="hidden" name="xe_validator_id" value="modules/member/skin/default/find_member_account/1">
		<span class="input-append">
			<input type="email" name="email_address" required="" placeholder="이메일 주소" title="이메일 주소"> 
			<input type="submit" class="btn btn-inverse" value="ID/PW 찾기">
		</span>
	</form>
</section>
<hr>
<section>
	<h1>질문/답변으로 계정 찾기</h1>
	<p>회원 정보에 입력한 아이디와 이메일, 질문/답변으로 임시 비밀번호를 발급 받을 수 있습니다.</p>
		<form action="./" method="get"><input type="hidden" name="error_return_url" value="/?mid=CSS&amp;act=dispMemberFindAccount"><input type="hidden" name="vid" value=""><input type="hidden" name="ruleset" value="@find_member_account_by_question">
		<input type="hidden" name="module" value="member">
		<input type="hidden" name="mid" value="CSS">
		<input type="hidden" name="document_srl" value="">	
		<input type="hidden" name="act" value="procMemberFindAccountByQuestion">
		<input type="hidden" name="success_return_url" value="/index.php?act=dispMemberGetTempPassword">
		<input type="hidden" name="page" value="">
		<input type="hidden" name="xe_validator_id" value="modules/member/skin/default/find_member_account/2">
		<div>
					</div>
		<div>
			<input type="email" name="email_address" required="" placeholder="이메일 주소" title="이메일 주소">
		</div>
		<div>
			<select name="find_account_question">
							<option value="1">다른 이메일 주소는?</option>
							<option value="2">나의 보물 1호는?</option>
							<option value="3">나의 출신 초등학교는?</option>
							<option value="4">나의 출신 고향은?</option>
							<option value="5">나의 이상형은?</option>
							<option value="6">어머니 성함은?</option>
							<option value="7">아버지 성함은?</option>
							<option value="8">가장 좋아하는 색깔은?</option>
						</select>
		</div>
		<div>
			<input type="text" name="find_account_answer" value="" required="" placeholder="비밀번호 찾기 질문/답변" title="비밀번호 찾기 질문/답변">
		</div>
		<input type="submit" class="btn btn-inverse" value="임시 비밀번호 발급" style="min-width:220px">
	</form>
</section><hr>
<section>
	<h1>인증메일 재발송</h1>
	<p>인증 메일을 받지 못한 경우 다시 받을 수 있습니다.</p>
		<form action="./" method="post"><input type="hidden" name="error_return_url" value="/?mid=CSS&amp;act=dispMemberFindAccount"><input type="hidden" name="mid" value="CSS"><input type="hidden" name="vid" value=""><input type="hidden" name="ruleset" value="resendAuthMail">
		<input type="hidden" name="module" value="member">
		<input type="hidden" name="act" value="procMemberResendAuthMail">
		<input type="hidden" name="success_return_url" value="/index.php?mid=CSS&amp;act=dispMemberFindAccount">
		<input type="hidden" name="xe_validator_id" value="modules/member/skin/default/find_member_account/3">
		<span class="input-append">
			<input type="email" id="email_address" name="email_address" value="" required="" placeholder="이메일 주소" title="이메일 주소">
			<input type="submit" value="인증메일 재발송" class="btn btn-inverse">
		</span>
	</form>
</section>
</section>
</div>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>