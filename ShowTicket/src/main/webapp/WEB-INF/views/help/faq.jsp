<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle" />
</jsp:include>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
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
				<li id="help_lmeu"><a
					href="${pageContext.request.contextPath}/help/main.do"
					class="help_lmeu1">고객센터홈</a></li>
				<li id="help_lmeu"><a
					href="${pageContext.request.contextPath}/help/notice.do"
					class="help_lmeu2">공지사항</a></li>
				<li id="help_lmeu3"><a
					href="${pageContext.request.contextPath}/help/faq.do"
					class="help_lmeu3">FAQ</a></li>
			</ul>

			<div class="help_rcont">
				<div>
					<h2>FAQ</h2>
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

				<ul id="genreNav" class="nav nav-pills nav-justified">
					<li class="nav-item"><a class="nav-link select nav-font"
						href="#">예매/취소</a></li>
					<li class="nav-item"><a class="nav-link nav-font default"
						href="#">결제</a></li>
					<li class="nav-item"><a class="nav-link nav-font default"
						href="#">회원</a></li>
					<li class="nav-item"><a class="nav-link nav-font default"
						href="#">쿠폰/이벤트</a></li>
					<li class="nav-item"><a class="nav-link nav-font default"
						href="#">기타</a></li>
				</ul>

				<div class="basic_tbl">
					<table>
						<caption>공지사항 리스트</caption>
						<colgroup>
							<col style="width: 100px">
							<col>
							<col style="width: 270px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">카테고리</th>
								<th colspan="2" scope="col">질문</th>
							</tr>
						</thead>
						<tbody id="nTableBody">
							<tr>
								<td>티켓오픈</td>
								<td class="tl p_reative"><a href="/help/notice/50876">2019
										장윤정 라이브 콘서트 – 용인 티켓오픈</a></td>
								<td class="open_info"><em>오픈</em>: 2019.09.19(목) 11:00</td>
							</tr>
							<tr>
								<td>티켓오픈</td>
								<td class="tl p_reative"><a href="/help/notice/50875">NEW
										신비아파트 뮤지컬 시즌3 - 고양 ​티켓오픈 안내</a></td>
								<td class="open_info"><em>오픈</em>: 2019.09.19(목) 11:00</td>
							</tr>
							<tr>
								<td>시스템</td>
								<td class="tl p_reative"><a href="/help/notice/50874"><b>[공지]</b>
										Microsoft Edge 브라우저 오류관련 안내</a></td>
								<td>2019.09.18</td>
							</tr>
							<tr>
								<td>티켓오픈</td>
								<td class="tl p_reative"><a href="/help/notice/50873">뮤지컬
										&lt;사랑했어요&gt; (사랑의 가객 故김현식 뮤지컬) 마지막 티켓 오픈​ 안내</a></td>
								<td class="open_info"><em>오픈</em>: 2019.09.24(화) 14:00</td>
							</tr>
							<tr>
								<td>티켓오픈</td>
								<td class="tl p_reative"><a href="/help/notice/50871">2019
										유방암 캠페인 ＂핑크리본 FESTA＂ 티켓오픈안내</a></td>
								<td class="open_info"><em>오픈</em>: 2019.09.18(수) 14:00</td>
							</tr>
							<tr>
								<td>티켓오픈</td>
								<td class="tl p_reative"><a href="/help/notice/50870">2019
										최현우〈THE BRAIN〉 - 부산 티켓오픈 안내</a></td>
								<td class="open_info"><em>오픈</em>: 2019.09.18(수) 14:00</td>
							</tr>
							<tr>
								<td>티켓오픈</td>
								<td class="tl p_reative"><a href="/help/notice/50869"><b>[단독판매]</b>
										퓨젼뮤지컬 “시집 가는 날” - 대구 티켓오픈안내</a></td>
								<td class="open_info"><em>오픈</em>: 2019.09.23(월) 09:00</td>
							</tr>
							<tr>
								<td>티켓오픈</td>
								<td class="tl p_reative"><a href="/help/notice/50868">연극
										&lt;수업&gt;​ 티켓오픈 안내</a></td>
								<td class="open_info"><em>오픈</em>: 2019.09.17(화) 17:00</td>
							</tr>
							<tr>
								<td>티켓오픈</td>
								<td class="tl p_reative"><a href="/help/notice/50867">2019
										만9,900원의 행복 유리상자 콘서트 시즌3 - 구미 티켓오픈안내</a></td>
								<td class="open_info"><em>오픈</em>: 2019.09.17(화) 14:00</td>
							</tr>
							<tr>
								<td>티켓오픈</td>
								<td class="tl p_reative"><a href="/help/notice/50866">뮤지컬〈친정엄마〉10주년
										기념 - 창원 티켓오픈안내</a></td>
								<td class="open_info"><em>오픈</em>: 2019.09.17(화) 16:00</td>
							</tr>
							<tr>
								<td>티켓오픈</td>
								<td class="tl p_reative"><a href="/help/notice/50865">2019
										만9,900원의 행복 유리상자 콘서트 시즌3 - 여수 티켓오픈안내</a></td>
								<td class="open_info"><em>오픈</em>: 2019.09.17(화) 14:00</td>
							</tr>
							<tr>
								<td>티켓오픈</td>
								<td class="tl p_reative"><a href="/help/notice/50864">[원주]
										정태춘 박은옥 40주년 전국투어 콘서트〈날자, 오리배〉 티켓오픈안내</a></td>
								<td class="open_info"><em>오픈</em>: 2019.09.17(화) 15:00</td>
							</tr>
							<tr>
								<td>티켓오픈</td>
								<td class="tl p_reative"><a href="/help/notice/50863"><b>[단독판매]</b>
										성진우&amp;홍실 “미스 미스터 트로트콘서트” 티켓오픈안내</a></td>
								<td class="open_info"><em>오픈</em>: 2019.09.17(화) 14:00</td>
							</tr>
							<tr>
								<td>티켓오픈</td>
								<td class="tl p_reative"><a href="/help/notice/50862"><b>[단독판매]</b>
										연극 염쟁이 유씨 - 안동 티켓오픈안내</a></td>
								<td class="open_info"><em>오픈</em>: 2019.09.17(화) 14:00</td>
							</tr>
							<tr>
								<td>티켓오픈</td>
								<td class="tl p_reative"><a href="/help/notice/50861">박현빈뭉클디너쇼
										티켓오픈안내</a></td>
								<td class="open_info"><em>오픈</em>: 2019.09.17(화) 14:00</td>
							</tr>
						</tbody>
					</table>
				</div>


				<div id="pagination" class="paging">
					<a href="javascript:goPage('1')" class="first">맨앞</a><a
						href="javascript:goPage('1')" class="prev">이전</a><strong>1</strong><a
						href="javascript:goPage('2')"> 2</a><a
						href="javascript:goPage('3')"> 3</a><a
						href="javascript:goPage('4')"> 4</a><a
						href="javascript:goPage('5')"> 5</a><a
						href="javascript:goPage('6')"> 6</a><a
						href="javascript:goPage('7')"> 7</a><a
						href="javascript:goPage('8')"> 8</a><a
						href="javascript:goPage('9')"> 9</a><a
						href="javascript:goPage('10')"> 10</a><a
						href="javascript:goPage('11')" class="next">다음</a><a
						href="javascript:goPage('452')" class="end">맨뒤</a>
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