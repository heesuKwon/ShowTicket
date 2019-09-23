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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/event.css">

<div id="container" class="event_cont">
	<div class="inner">
		<h2 class="blind">이벤트</h2>

		<ul class="nav nav-pills nav-justified">
			<li class="nav-item"><a class="nav-link nav-font default"
				href="${pageContext.request.contextPath}/event/eventList.do">진행중인
					이벤트</a></li>
			<li class="nav-item"><a class="nav-link nav-font default"
				href="${pageContext.request.contextPath}/event/endEventList.do">종료된
					이벤트</a></li>
			<li class="nav-item"><a class="nav-link nav-font select"
				href="${pageContext.request.contextPath}/event/prizewinner.do">당첨자
					발표</a></li>
			<li class="nav-item"><a class="nav-link nav-font default"
				href="${pageContext.request.contextPath}/coupon/coupon.do">쿠폰</a></li>
		</ul>
		<div class="eventFrm">
			<br />
			<h1 class="main-title" style="color:#8f01a3;">SHOW</h1><h1 class="main-title">티켓 이벤트 당첨자 발표 글쓰기</h1>
			<br /><br />
			<div id="memberList">
			<h2 class="small-title" style="margin-left:5%;">응모 회원 목록</h2>
				<br />
				<table id="memberTable">
					<tr>
						<th>회원 아이디</th>
						<th>회원명</th>
						<th>회원 전화번호</th>
						<th>응모 날짜</th>
					</tr>
					<tr>
						<td>kko111</td>
						<td>김강오</td>
						<td>01012341234</td>
						<td>2019.09.19</td>
					</tr>
				</table>
			</div>
			<br /><br />
			<div id="write">
				<label id="title">제목:</label>&nbsp;<input
					type="text" class="enrollText"> <br /> <br /> <br /> <label
					id="content">내용:</label>&nbsp;<textarea class="autosize" id="cText"></textarea>
			</div>
			<button type="button" class="btn btn-secondary" id="finish">작성완료</button>
		</div>
		<div id="forbutton">
		<button type="button" class="btn btn-secondary" id="List"
			onclick="location.href = '${pageContext.request.contextPath}/event/prizewinner.do' ">목록으로</button>
		</div>

	</div>
</div>
<!-- textarea css부분 -->
<!-- <script src="//code.jquery.com/jquery.min.js"></script>
<script>
$("textarea.autosize").on('keydown keyup', function () {
  $(this).height(40).height( $(this).prop('scrollHeight')+12 );	
});
</script> -->
<a href="javascript:window.scrollTo(0,0);" id="back_to_top">위로</a>

<script type="text/javascript">
	/* <![CDATA[ */
	var google_conversion_id = 950223509;
	var google_custom_params = window.google_tag_params;
	var google_remarketing_only = true;
	/* ]]> */
</script>
<script type="text/javascript"
	src="//www.googleadservices.com/pagead/conversion.js"></script>
<noscript>
	<div style="display: inline;">
		<img height="1" width="1" style="border-style: none;" alt=""
			src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/950223509/?value=0&amp;guid=ON&amp;script=0" />
	</div>
</noscript>
<script type="text/javascript">
	$("iframe[name='google_conversion_frame']").css("display", "none");
</script>

<script type="text/javascript" src="/resources/js/pagingJs.js"></script>
<script type="text/javascript"
	src="/resources/js/jquery.formatDateTime.min.js"></script>
<script type="text/javascript">
	//<![CDATA[

	var firstPage = 1;
	$(document).ready(function() {
		getWinnerList(firstPage);
	});
	function getWinnerList(page) {
		$.ajax({
			dataType : "json",
			url : "/event/getWinnerList.nhn",
			data : {
				page : page,
			},
			success : function(result) {
				displayWinnerList(result.result.result);
				displayPage(result.result.paging, $('#pagination'));
			},
			error : function(status) {
				alert("오류가 발생하였습니다. 관리자에게 문의하세요.");
			}
		});
	}

	function displayWinnerList(winnerList) {
		var endEventListTable = $("#winnerList");
		endEventListTable.html('');
		for (var i = 0; i < winnerList.length; i++) {
			var startDate = new Date(winnerList[i].startDatetime);
			var endDate = new Date(winnerList[i].endDatetime);
			var contents = "<tr><td class='ff_tahoma fs11'>"
					+ winnerList[i].eventPublishId + "</td>";
			contents += "<td>" + winnerList[i].eventTypeName
					+ "</td><td class='tl'>";
			contents += "<a href='/event/" + winnerList[i].eventPublishId + "/winner.nhn' class='elp'>"
					+ winnerList[i].eventName + "</a></td>";
			contents += "<td class='ff_tahoma fs11'>"
					+ $.formatDateTime('yy.mm.dd', startDate) + "~"
					+ $.formatDateTime('yy.mm.dd', endDate) + "</td></tr>"
			endEventListTable.append(contents);
		}
		if (winnerList.length == 0) {
			var contents = '<tr class="no_data"><td colspan="4">등록된 게시글이 없습니다.</td></tr>';
			endEventListTable.append(contents);
		}
	}

	function goPage(page) {
		getWinnerList(page);
	}

	//]]>
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>