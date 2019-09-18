<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/member.css">

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle" />
</jsp:include>


<div id="container">
	<jsp:include page="/WEB-INF/views/common/memberViewnav.jsp">
		<jsp:param value="마이 페이지" name="pageTitle" />
	</jsp:include>

	<br>
	<form id="reservation">
		<h5>예매 확인/취소</h5>
		<hr />
		<br />
		<div id="search">
			<label id="dateSearch">기간별</label>&nbsp;
			<div class="btn-group">
				<button>15일</button>
				<button>1개월</button>
				<button>2개월</button>
				<button>3개월</button>
			</div>
			<label id="dateSearch">월별</label> <select
				class="custom-select" id="inputGroupSelect01">
				<option value="reservationDate" selected>예매일</option>
				<option value="viewDate">관람일</option>
			</select> <select class="custom-select" id="inputGroupSelect02">
				<option selected disabled>연도</option>
				<option value="2019">2019년</option>
				<option value="2018">2018년</option>
				<option value="2017">2017년</option>
			</select> <select class="custom-select" id="inputGroupSelect03">
				<option selected disabled>월</option>
				<option value="1">1월</option>
				<option value="2">2월</option>
				<option value="3">3월</option>
				<option value="4">4월</option>
				<option value="5">5월</option>
				<option value="6">6월</option>
				<option value="7">7월</option>
				<option value="8">8월</option>
				<option value="9">9월</option>
				<option value="10">10월</option>
				<option value="11">11월</option>
				<option value="12">12월</option>
			</select>
		</div>
		<br />
		<br />
			<button type="button" id="find">조회</button>
		<br />
		<br />
		<br />
		
		<table id="ListTable" style="margin: auto;">
			<tr>
				<th id="num">예매번호</th>
				<th>공연명</th>
				<th id="date">관람일시</th>
				<th id="count">매수</th>
				<th id="Cancledate">취소가능일</th>
				<th id="state">상태</th>
			</tr>
			<tr>
				<td>123</td>
				<td>뮤지컬<블루레인></td>
				<td>2019.09.11</td>
				<td>1</td>
				<td>2019.09.10</td>
				<td>예매완료</td>
			</tr>
		</table>
		<br />
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<li class="page-item disabled"><a class="page-link" href="#"
					tabindex="-1" aria-disabled="true"
					style="background-color: #F2F2F2; border: 0px;"><</a></li>
				<li class="page-item"><a class="page-link" href="#"
					style="color: gray; border: 0px;">1</a></li>
				<li class="page-item"><a class="page-link" href="#"
					style="color: gray; border: 0px;">2</a></li>
				<li class="page-item"><a class="page-link" href="#"
					style="color: gray; border: 0px;">3</a></li>
				<li class="page-item"><a class="page-link" href="#"
					style="color: gray; border: 0px;">4</a></li>
				<li class="page-item disabled"><a class="page-link" href="#"
					tabindex="1" aria-disabled="true"
					style="background-color: #F2F2F2; border: 0px;">></a></li>
			</ul>
		</nav>
		<br />
		<div id="info" style="margin-bottom:10px;">
		<h6><img alt="" src="${pageContext.request.contextPath}/resources/images/info.png">
			티켓취소 안내</h6>
			<br />
			<ul>
				<li>예매한 티켓 전체 취소 혹은 신용카드 결제 시 부분 취소가 가능합니다.</li>
				<li>예매 당일 자정까지 취소하실 경우는 예매수수료도 환불되며, 취소수수료가 부과되지 않습니다. 그 이후에
					취소하실 경우에는 예매수수료가 환불되지 않으면, 취소수수료는 정책에 따라 부과됩니다.</li>
				<li>티켓의 날짜/시간/좌석 등급/좌석 위치 변경은 불가합니다. 자세한 안내가 필요한 경우 고객센터를
					이용해주세요.</li>
			</ul>
		</div>
	</form>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
