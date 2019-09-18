<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle" />
</jsp:include>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/contents.css">

<div id="container">
	<div class="inner">

		<div class="quick_menu">
			<div class="title">
				<h2>고객센터</h2>
			</div>
			<ul>
				<li class="qmenu1"><a href="/help/guide/memberInfo">아이디/<br>패스워드
						찾기
				</a></li>
				<li class="qmenu2"><a href="/help/consult">상담내역<br>확인하기
				</a></li>
				<li class="qmenu3"><a href="/help/guide/cancel">예매취소<br>환불
						문의
				</a></li>
				<li class="qmenu4"><a href="/help/guide/ticket">티켓<br>배송문의
				</a></li>
				<li class="qmenu5"><a href="/help/guide/discountMethod">할인수단<br>안내
				</a></li>
				<li class="qmenu6"><a href="/help/guide/reservation/baseball">스포츠티켓<br>알아보기
				</a></li>
				<li class="qmenu7"><a href="/help/guide/discountCard/baseball">할인카드<br>안내보기
				</a></li>
			</ul>
		</div>

		<div class="help_cont">

			<ul class="help_lmenu">
				<!-- [D] 활성상태일 때 .on 추가입니다. -->
				<li id="help_lmeu1"><a href="/help/main" class="help_lmeu1">고객센터
						홈</a></li>
				<li id="help_lmeu2"><a href="/help/notice" class="help_lmeu2">공지사항</a></li>
				<li id="help_lmeu3"><a href="/help/faq" class="help_lmeu3">FAQ</a></li>
				<li id="help_lmeu4"><a href="javascript:;" class="help_lmeu4">1:1
						상담</a></li>
				<li class="has_sub"><span class="help_lmeu5">안내</span>
					<ul class="help_submenu">
						<li id="help_lmenu51"><a
							href="/help/guide/reservation/baseball" class="help_lmenu51">예매안내</a></li>
						<li id="help_lmenu52"><a href="/help/guide/memberInfo"
							class="help_lmenu52">회원정보안내</a></li>
						<li id="help_lmenu53"><a href="/help/guide/payment"
							class="help_lmenu53">결제수단안내</a></li>
						<li id="help_lmenu54"><a href="/help/guide/charge"
							class="help_lmenu54">수수료안내</a></li>
						<li id="help_lmenu55"><a href="/help/guide/cancel"
							class="help_lmenu55">취소/환불안내</a></li>
						<li id="help_lmenu56"><a href="/help/guide/ticket"
							class="help_lmenu56">티켓수령안내</a></li>
						<li id="help_lmenu57"><a href="/help/guide/channel"
							class="help_lmenu57">예매채널안내</a></li>
						<li id="help_lmenu58"><a href="/help/guide/discountMethod"
							class="help_lmenu58">할인수단안내</a></li>
						<li id="help_lmenu59"><a
							href="/help/guide/discountCard/baseball" class="help_lmenu59">할인카드안내</a></li>
						<li id="help_lmenu60"><a href="/help/guide/legalGuide"
							class="help_lmenu60">부정이용 규제안내</a></li>
					</ul></li>
				<li id="help_lmenu6"><a href="/help/partner" class="help_lmeu6">티켓판매안내</a></li>
			</ul>

			<div class="help_rcont">
				<div class="search_help">
					<fieldset>
						<legend>질문 검색</legend>
						<label for="search_help">질문검색하기</label> <input type="text"
							id="search_help"
							onkeypress="if(event.keyCode==13){$('#searchButton').click();}"
							title="검색어 입력" placeholder="궁금하신 점이 무엇인가요?"> <a
							href="javascript:;" id="searchButton" onclick="searchFaq();"
							class="btn_search">검색</a> <a href="/help/consult/insert"
							class="btn inquire">1:1문의하기</a>
					</fieldset>
				</div>
				<div class="bx_ad">
					<script type="text/javascript"
						src="http://ads.netinsight.co.kr/NetInsight/js/ticketlink/servicecenter/742@56"></script>
				</div>
				<ul class="help_link">
					<li class="first"><a href="/help/guide/reservation/baseball"
						class="hlink1">예매도움받기 - 예매 안내를 통해서 편리한 예매방법을 알아보세요.</a></li>
					<li><a href="javascript:;" class="hlink2" id="hlink2">1:1
							상담 받기 - 빠르고 간편한 온라인 1:1문의를 이용해 보세요.</a></li>
					<li><a href="/help/faq" class="hlink3">FAQ 보기 - 궁금한 질문들을
							쉽고 편하게 한번에 알아보세요.</a></li>
					<li class="first"><a href="/help/notice" class="hlink4">티켓
							소식 알아보기 - 티켓링크의 새로운 소식들을 빠르게 접해보세요.</a></li>
					<li><span class="hlink5">예매 상담 하기 전화번호 : 1588-7890,
							상담시간 : 10:00 ~ 19:00 (월~일) </span></li>
					<li><span class="hlink6">문의 하기 전화번호 : 1588-4567, 상담시간 :
							10:00 ~ 19:00 (월~일)</span></li>
				</ul>
				<div class="helpmain_list">
					<div class="helpmain_question">
						<strong>자주 묻는 질문</strong>
						<ul>
							<li><a href="/help/guide/memberInfo#tabs-2">비밀번호 변경을 하고
									싶어요.</a></li>
							<li><a href="/help/guide/memberInfo#tabs-2">내 정보를 변경하고
									싶어요.</a></li>
							<li><a href="/help/guide/reservation/baseball">프로야구 예매를
									빨리 하려면?</a></li>
							<li><a href="/help/guide/discountMethod">할인수단을 알고 싶어요.</a></li>
							<li><a href="/help/guide/discountCard/baseball">티켓링크에서
									할인이 되는 신용카드는?</a></li>
						</ul>
					</div>
					<div class="helpmain_notice">
						<strong>최근 공지 사항</strong>
						<ul>

							<li><a href="/help/notice/50875">[티켓오픈] NEW 신비아파트 뮤지컬
									시즌3 - 고양 ​티켓오픈 안내</a></li>

							<li><a href="/help/notice/50874">[시스템] <b>[공지]</b>
									Microsoft Edge 브라우저 오류관련 안내
							</a></li>

							<li><a href="/help/notice/50873">[티켓오픈] 뮤지컬 <사랑했어요>
									(사랑의 가객 故김현식 뮤지컬) 마지막 티켓 오픈​ 안내</a></li>

							<li><a href="/help/notice/50871">[티켓오픈] 2019 유방암 캠페인
									＂핑크리본 FESTA＂ 티켓오픈안내</a></li>

							<li><a href="/help/notice/50870">[티켓오픈] 2019 최현우〈THE
									BRAIN〉 - 부산 티켓오픈 안내</a></li>

						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>





<a href="javascript:window.scrollTo(0,0);" id="back_to_top">위로</a>

<script type="text/javascript"
	src="/resources/js/jquery.placeholder.min.js"></script>
<script type="text/javascript">
	//<![CDATA[
	$(document).ready(function () {
		$("#help_lmeu1").addClass("on");
		$('input, textarea').placeholder();
	});

	function searchFaq () {
		var searchKeyword = encodeURI($("#search_help").val());
		location.replace("/help/faq?searchKeyword=" + searchKeyword + "");
	}
	//]]>
</script>	
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>