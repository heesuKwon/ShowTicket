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


<script>

$(()=>{
		var type = "";
		var searchType = "";
		
		/*nav 메뉴 */
		$("#genreNav > li > a").click((e)=>{		
			type = $(e.target).attr('id');
		 	$(".nav-pills .nav-link.select").attr('class','nav-link nav-font default');
			$(e.target).attr('class','nav-link select nav-font'); 
			
			faqList(type, searchType);
		});

});


</script>
<div id="container">
	<div class="inner">
		<div class="quick_menu">
			<div class="title">고객센터</div>
			<ul>
				<li class="qmenu1"><a
					href="${pageContext.request.contextPath}/help/faqView.do?faqNo=62"><i
						class="material-icons">lock_open</i><br />아이디/비밀번호<br>찾기 </a></li>
				<li class="qmenu2"><a
					href="${pageContext.request.contextPath}/help/faqView.do?faqNo=64"><i
						class="material-icons">shopping_cart</i><br />예매/취소<br>환불 </a></li>
				<li class="qmenu3"><a
					href="${pageContext.request.contextPath}/help/faqView.do?faqNo=69"><i
						class="material-icons">location_on</i><br>티켓수령<br>문의 </a></li>
				<li class="qmenu4"><a
					href="${pageContext.request.contextPath}/help/faqView.do?faqNo=66"><i
						class="material-icons">turned_in_not</i><br />할인수단<br>안내 </a></li>
				<li class="qmenu5"><a
					href="${pageContext.request.contextPath}/help/faqView.do?faqNo=68"><i
						class="material-icons">hourglass_empty</i><br />관심공연알림<br>안내
				</a></li>
				<li class="qmenu6"><a
					href="${pageContext.request.contextPath}/help/faqView.do?faqNo=67"><i
						class="material-icons">star_border</i><br />이벤트<br>안내 </a></li>
			</ul>
		</div>

		<div class="help_cont">

			<ul class="help_lmenu">
				<!-- [D] 활성상태일 때 .on 추가입니다. -->
				<li id="help_lmeu"><a
					href="${pageContext.request.contextPath}/help/main.do"
					class="help_lmeu1">고객센터홈</a></li>
				<li id="help_lmeu2"><a
					href="${pageContext.request.contextPath}/help/notice.do"
					class="help_lmeu2 focus">공지사항</a></li>
				<li id="help_lmeu"><a
					href="${pageContext.request.contextPath}/help/faq.do"
					class="help_lmeu3">FAQ</a></li>
			</ul>

			<div class="help_rcont">
				<h2 class="title">공지사항</h2>

				<table class="table list_view">
					<thead>
						<tr>
							<th scope="col" class="th"><c:choose>
									<c:when test="${n.noticeCategory eq 't'}">티켓오픈</c:when>
									<c:when test="${n.noticeCategory eq 's'}">시스템</c:when>
									<c:when test="${n.noticeCategory eq 'c'}">변경/취소</c:when>
									<c:when test="${n.noticeCategory eq 'o'}">기타</c:when>
								</c:choose></th>
							<th scope="col" class="list_title"><b>[공지]</b>
								${n.noticeTitle}</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2" class="list_date">
								등록일 : <span id="registerDatetime">${n.noticeEnrollDate}</span> 
								<span class="bar">|</span> 조회수 : ${n.noticeCount}
							</td>
						</tr>
						<tr>
							<td colspan="2" class="list_cont">${n.noticeContent }</td>
						</tr>
					</tbody>
				</table>
				<div class="list_btn">
					<button class="btn btn-color" type="button"
						onclick="location.href='${pageContext.request.contextPath}/help/noticeUpdate.do?noticeNo=${n.noticeNo}'">수정</button>
					<button class="btn btn-gray" type="button"
						onclick="location.href='${pageContext.request.contextPath}/help/noticeDelete.do?noticeNo=${n.noticeNo }'">삭제</button>
					<button class="btn btn-gray fr" type="button"
						onclick="location.href='${pageContext.request.contextPath}/help/notice.do'">목록으로</button>
				</div>
			</div>

		</div>
	</div>
</div>
<a href="javascript:window.scrollTo(0,0);" id="back_to_top">위로</a>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>