<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/member.css">

<%
	String memberId = request.getParameter("memberId");
	System.out.println("memberId="+memberId);

%>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle" />
</jsp:include>

<script>
$(()=>{
	$("#btn1").click(function() {
		$(this).siblings().removeClass("r_btnSelect").addClass("r_btnDefault");
		$(this).removeClass("r_btnDefault").addClass("r_btnSelect");
		getReservation(100);
	});
	$("#btn2").click(function() {
		$(this).siblings().removeClass("r_btnSelect").addClass("r_btnDefault");
		$(this).removeClass("r_btnDefault").addClass("r_btnSelect");
		getReservation(15);
	});
	$("#btn3").click(function() {
		$(this).siblings().removeClass("r_btnSelect").addClass("r_btnDefault");
		$(this).removeClass("r_btnDefault").addClass("r_btnSelect");
		getReservation(1);
	});
	$("#btn4").click(function() {
		$(this).siblings().removeClass("r_btnSelect").addClass("r_btnDefault");
		$(this).removeClass("r_btnDefault").addClass("r_btnSelect");
		getReservation(2);
	});
	$("#btn5").click(function() {
		$(this).siblings().removeClass("r_btnSelect").addClass("r_btnDefault");
		$(this).removeClass("r_btnDefault").addClass("r_btnSelect");
		getReservation(3);
	});
	
	function getReservation(num) {
		$.ajax({
			type: "POST",
			url: "${pageContext.request.contextPath}/member/reservationTermAjax.do",
			dataType: "json",
			cache: false,
			data: {
				memberId: "${memberId}",
				num: num
			},
			success: function(data) {
				var html = "";
				var status = "";
				console.log(data);
				
				html += "<tr>"
				html += "<th id='num'>예매번호</th>";
				html += "<th>공연명</th>";
				html += "<th id='date'>관람일시</th>";
				html += "<th id='count'>매수</th>";
				html += "<th id='Cancledate'>취소가능일</th>";
				html += "<th id='state'>상태</th>";
				html += "</tr>"
				for(var i=0; i<data.length; i++){
					console.log(data[i].ticketNo);
					html += "<tr>";
					html += "<td>"+data[i].ticketNo+"</td>";
					html += "<td>"+data[i].ticketShowId+"</td>";
					html += "<td>"+data[i].ticketDate+"</td>";
					html += "<td>"+data[i].ticketCount+"</td>";
					html += "<td>"+data[i].ticketCancel+"</td>";
					status = data[i].ticketStatus.trim();
					console.log(status);
					if($.trim(status) == "Y"){
						html += "<td>예매완료</td>";						
					}
					else if($.trim(status) != "Y"){
						html += "<td>예매취소</td>";
					}
					html += "</tr>";
				}
				
				console.log(data.length);
				console.log("성공!!!!!"+data);
				/* alert("ajax 성공!");	 */
				$("#ListTable").html(html);
			},
			error: function(data) {
				console.log("실패ㅜㅠ"+data);
				alert("ajax 실패ㅠㅠ");
				console.log(data[0].ticketNo);
			}
		});		
	};
		
});
</script>

<div id="container">
	<jsp:include page="/WEB-INF/views/common/memberViewnav.jsp">
		<jsp:param value="마이 페이지" name="pageTitle" />
	</jsp:include>

	<br>
	<div class="div-memberFrm">
		<h2 class="small-title">예매 확인/취소</h2>
		<div id="reservation">
			<hr />
			<br />
			<div id="search">
				<label id="dateSearch">기간별</label>&nbsp;
				<div class="btn-group">
					<button id="btn1" class="r_btnSelect">전체</button>
					<button id="btn2" class="r_btnDefault">15일</button>
					<button id="btn3" class="r_btnDefault">1개월</button>
					<button id="btn4" class="r_btnDefault">2개월</button>
					<button id="btn5" class="r_btnDefault">3개월</button>
				</div>
			</div>
			<button type="button" id="find">조회</button>
			<br /> <br /> <br />
			<table id="ListTable" style="margin: auto;">
				<tr>
					<th id="num">예매번호</th>
					<th>공연명</th>
					<th id="date">관람일시</th>
					<th id="count">매수</th>
					<th id="Cancledate">취소가능일</th>
					<th id="state">상태</th>
				</tr>
				<c:forEach items="${list }" var="list">
					<tr>
						<td>${list.ticketNo }</td>
						<td>${list.ticketShowId }</td>
						<td>${list.ticketDate }</td>
						<td>${list.ticketCount }</td>
						<td>${list.ticketCancel }</td>
						<c:set var="status" value="${list.ticketStatus }"/>
						<c:choose>
							<c:when test="${status eq 'Y'}">
								<td>예매완료</td>								
							</c:when>
							<c:when test="${status eq 'N'}">
								<td>예매취소</td>								
							</c:when>
						</c:choose>
					</tr>
				</c:forEach>
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
			<div id="info">
				<h6>
					<img alt=""
						src="${pageContext.request.contextPath}/resources/images/info.png">
					티켓취소 안내
				</h6>
				<br />
				<ul>
					<li>예매한 티켓 전체 취소 혹은 신용카드 결제 시 부분 취소가 가능합니다.</li>
					<li>예매 당일 자정까지 취소하실 경우는 예매수수료도 환불되며, 취소수수료가 부과되지 않습니다. 그 이후에
						취소하실 경우에는 예매수수료가 환불되지 않으면, 취소수수료는 정책에 따라 부과됩니다.</li>
					<li>티켓의 날짜/시간/좌석 등급/좌석 위치 변경은 불가합니다. 자세한 안내가 필요한 경우 고객센터를
						이용해주세요.</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
