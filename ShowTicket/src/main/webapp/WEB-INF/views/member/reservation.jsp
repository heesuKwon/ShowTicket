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
	
	var a = 0;
	
	function getReservation(num) {
		$.ajax({
			type: "POST",
			async: false,
			url: "${pageContext.request.contextPath}/member/reservationTermAjax.do",
			dataType: "json",
			cache: false,
			data: {
				memberId: "${memberId}",
				num: num,
				s: "${page.startContent }",
				e: "${page.endContent }",
				page: a
			},
			success: function(data) {
				//var test = '${pageContext.request.contextPath}/member/reservationTermAjax.do';
				//console.log("test값은?",test);
				
				var html = "";
				var list = data.reservationList;
				var status = "";
				
				var page = "";
				var totalPage = data.totalPage;//컨트롤러에서 보내주는게 확실함
				
				var barNo = data.barNo;
				var barEnd = data.barEnd;
				var cPage = data.cPage;
				console.log("원래 totalPage는?",totalPage);
				console.log("원래 페이지바 시작 숫자 barNo은?",barNo);
				console.log("원래 페이지바 마지막 숫자는?",barEnd);
				console.log("cPage는?",cPage);
				
				console.log(data);
				
				html += "<tr>";
				html += "<th id='num'>예매번호</th>";
				html += "<th colspan='2'>공연명</th>";
				html += "<th id='date'>예매일</th>";
				html += "<th id='date'>관람일시</th>";
				html += "<th id='count'>매수</th>";
				html += "<th id='Cancledate'>취소가능일</th>";
				html += "<th id='state'>상태</th>";
				html += "</tr>";
				
				for(var i=0; i<list.length; i++){
					//console.log(list[i].ticketNo);
					status = list[i].ticketStatus.trim();

					html += "<tr>";
					html += "<td>"+list[i].ticketNo+"</td>";
					html += "<td>"+list[i].ticketShowId+"</td>";
					if($.trim(status) == 'Y'){
						html += "<td>";
						html += "<button type='button' class='cancelBtn_' onclick='goCancel("+list[i].ticketNo+");'>예매취소</button>";
						html += "</td>";
					}
					else if($.trim(status) != "Y"){
						html += "<td></td>";
					}
					html += "<td>"+list[i].ticketEnrollDate+"</td>";
					html += "<td>"+list[i].ticketDate+"</td>";
					html += "<td>"+list[i].ticketCount+"</td>";
					html += "<td>"+list[i].ticketCancel+"</td>";
					if($.trim(status) == "Y"){
						html += "<td>예매완료</td>";						
					}
					else if($.trim(status) != "Y"){
						html += "<td>예매취소</td>";
					}
					html += "</tr>";
				}			
					
				/* page바 부분 */
				page += "<ul class='pagination justify-content-center'>";
				page += "<li class='page-item disabled'>";
				if(barNo == 1){
					/* 통과 */
					page += "<a class='page-link' aria-disabled='true' style='background-color: yellow; border: 0px;'>&lt;</a>";
					//console.log("barNo==1일떄"+barNo);
				}
				else{
					console.log("barNo이 1이 아니면 이전페이지 작동해야함");
					page += "<a class='page-link' aria-disabled='true' style='background-color: red; border: 0px;' href='${pageContext.request.contextPath }/member/reservation.do?memberId=${memberId}&cPage="+(barNo-1)+"'>&lt;</a>";
				}
				page += "</li>";
				while(!(barNo > barEnd && barNo > totalPage)){
					if(cPage == barNo){
						console.log("잘나오면 클래스 속성주기 글씨 진하게");
						page += "<li class='page-item'>";
						page += "<a class='page-link' href='' style='color: black; border: 0px;'>"+barNo+"</a>"
						page += "</li>";
						console.log("cPage==barNo"+barNo);
					}
					else{
						console.log("barNo잘 찍혀라ㅠㅠ"+barNo);
						page += "<li class='page-item'>";
						/*잘나오는거 page += "<a class='page-link test' href='${pageContext.request.contextPath }/member/reservation.do?memberId=${memberId}&cPage="+barNo+"' style='color: gray; border: 0px;'>"+barNo+"</a>"; */
 						page += "<a class='page-link test' onclick='aClick("+barNo+");' style='color: gray; border: 0px;'>"+barNo+"</a>";
						page += "</li>";
					}
						//a = barNo;
						//console.log("dddddddddddddsdfsfdd"+a);
						barNo = barNo + 1;
					console.log("barNo 몇??"+barNo);
				}
				page += "<li class='page-item disabled'>";
				page += "<a class='page-link' href='#' tabindex='1' aria-disabled='true' style='background-color: #F2F2F2; border: 0px;'>&gt;</a>";
				page += "</li>";
				page += "</ul>";
				//console.log(list.length);
				console.log("성공!!!!!"+list);
				
				$("#ListTable").html(html);
				$("#page").html(page);
			},
			error: function(data) {
				console.log("실패ㅜㅠ"+data);
				alert("ajax 실패ㅠㅠ");
				//console.log(data[0].ticketNo);
			}
		});		
	};

		
});
	function aClick(barNo) {
		a = barNo;
		alert(a);
	//url: "${pageContext.request.contextPath}/member/reservationTermAjax.do",
	location.href = "${pageContext.request.contextPath }/member/reservation.do?memberId=${memberId}&cPage="+a;
	}
</script>

<form class="cancel" action="${pageContext.request.contextPath }/member/reservationCancle.do" method="post">
	<input type="hidden" name="memberId" value="${memberId }"/>
</form>
<script>
function goCancel(ticketNo) {

	var cancelTNo = ticketNo;
	console.log("취소할 예매번호",cancelTNo);
	
	if(confirm("예매를 취소하시겠습니까?")){
		$(".cancel").append("<input type='hidden' name='cancelTNo' value='"+cancelTNo+"'/>").submit();
	}
	else{
		return;
	}
}

/* function aClick(barNo) {
	var b = barNo;
	//var s = ${memberId};
	alert(b);
	//location.href = "${pageContext.request.contextPath}/demo/updateDev.do?devNo="+devNo;
	//url: "${pageContext.request.contextPath}/member/reservationTermAjax.do",
	location.href = "${pageContext.request.contextPath }/member/reservation.do?memberId=${memberId}&cPage="+barNo;

} */
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

			<br /> <br /> <br />
			<table id="ListTable" style="margin: auto;">
				<tr>
					<th id="num">예매번호</th>
					<th colspan="2">공연명</th>
					<th id="date">예매일</th>
					<th id="date">관람일시</th>
					<th id="count">매수</th>
					<th id="Cancledate">취소가능일</th>
					<th id="state">상태</th>
				</tr>
				<c:forEach items="${pageList }" var="list">
					<tr>
						<c:set var="status" value="${list.ticketStatus }"/>
						<td>${list.ticketNo }</td>
						<td>${list.ticketShowId }</td>
						<c:choose>
							<c:when test="${status eq 'Y'}">
								<td>
									<button type="button" class="cancelBtn_" onclick="goCancel(${list.ticketNo});">예매취소</button>
								</td>
							</c:when>
							<c:when test="${status eq 'N'}">
								<td></td>								
							</c:when>
						</c:choose>
						<td>${list.ticketEnrollDate }</td>
						<td>${list.ticketDate }</td>
						<td>${list.ticketCount }</td>
						<td>${list.ticketCancel }</td>
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
			
			<nav id="page" aria-label="Page navigation example" >
				<!-- 위에부터 정리하고 다시 -->
				<!-- <ul class="pagination justify-content-center"> -->
		<%-- 		<c:set var="barNo" value="${page.barNo }"/>
				<c:set var="barEnd" value="${page.barEnd }"/>
					<li class="page-item disabled">
						<a class="page-link" href="#" tabindex="-1" aria-disabled="true" style="background-color: #F2F2F2; border: 0px;">&lt;</a>
					</li>
					<c:forEach var="barNo" begin="${barNo }" end="${barEnd }">
						<li class="page-item">
							<a class="page-link" href="${pageContext.request.contextPath }/member/reservation.do?memberId=${memberLoggedIn.memberId }&cPage=${barNo}" style="color: gray; border: 0px;">${barNo}</a>
							<a id="test" class="page-link" style="color: gray; border: 0px;">${barNo}</a>
						</li>
					</c:forEach>
					<li class="page-item disabled">
						<a class="page-link" href="#" tabindex="1" aria-disabled="true" style="background-color: #F2F2F2; border: 0px;">&gt;</a>
					</li>  --%>
				<!-- </ul> -->
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
