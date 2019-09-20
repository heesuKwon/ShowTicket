<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle" />
</jsp:include>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/help.css" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/contents.css">


<div id="container">
	<div class="inner">
		<div class="quick_menu">
			<div class="title">고객센터</div>
			<ul>
				<li class="qmenu1"><i class="material-icons">lock_open</i> <a
					href="/help/guide/memberInfo">아이디/비밀번호<br>찾기
				</a></li>
				<li class="qmenu2"><i class="material-icons">shopping_cart</i>
					<a href="/help/consult">예매취소<br>환불
				</a></li>
				<li class="qmenu3"><i class="material-icons">location_on</i> <a
					href="/help/guide/cancel">티켓수령<br>문의
				</a></li>
				<li class="qmenu4"><i class="material-icons">turned_in_not</i>
					<a href="/help/guide/discountMethod">할인수단<br>안내
				</a></li>
				<li class="qmenu5"><i class="material-icons">hourglass_empty</i>
					<a href="/help/guide/reservation/baseball">관심공연알림<br>안내
				</a></li>
				<li class="qmenu6"><i class="material-icons">star_border</i> <a
					href="/help/guide/discountCard/baseball">이벤트<br>안내
				</a></li>
			</ul>
		</div>

		<div class="help_cont">

			<ul class="help_lmenu">
				<!-- [D] 활성상태일 때 .on 추가입니다. -->
				<li id="help_lmeu1"><a
					href="${pageContext.request.contextPath}/help/main.do"
					class="help_lmeu1">고객센터홈</a></li>
				<li id="help_lmeu"><a
					href="${pageContext.request.contextPath}/help/notice.do"
					class="help_meu2">공지사항</a></li>
				<li id="help_lmeu"><a
					href="${pageContext.request.contextPath}/help/faq.do"
					class="help_meu3">FAQ</a></li>
			</ul>

			<div class="help_rcont">
				<div>
					<h2>고객센터홈</h2>
				</div>
				<div class="search_area">


					<div class="question">질문 검색하기</div>
					<div class="search">
						<form name="searchForm"
							action="http://www.ticketlink.co.kr/search" method="GET">
							<fieldset id="fieldsetS">
								<legend>검색</legend>
								<input type="text" name="query" title="검색어 입력" value="">
								<p class="btn_search">
									<a href="javascript:document.searchForm.submit()"
										class="material-icons w3-xlarge">search</a>
								<p>
							</fieldset>
						</form>
					</div>

					<!-- // 검색창 덮는 배너 추가 -->
				</div>

				<ul class="help_link">
					<li class="first"><a href="/help/guide/reservation/baseball"
						class="hlink1"> <img
							src="${pageContext.request.contextPath }/resources/images/help/appoint.png" /></a>
					</li>
					<li><a href="javascript:;" class="hlink2" id="hlink2"> <img
							src="${pageContext.request.contextPath }/resources/images/help/talk.PNG" /></a>
					</li>
					<li><a href="/help/faq" class="hlink3"> <img
							src="${pageContext.request.contextPath }/resources/images/help/faq.PNG" /></a>
					</li>
					<li class="first"><a href="/help/notice" class="hlink4"> <img
							src="${pageContext.request.contextPath }/resources/images/help/new.PNG" /></a>
					</li>
					<li><span class="hlink5"> <img
							src="${pageContext.request.contextPath }/resources/images/help/ars.PNG" />
					</span></li>
					<li><span class="hlink6"> <img
							src="${pageContext.request.contextPath }/resources/images/help/arsreq.PNG" />
					</span></li>
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