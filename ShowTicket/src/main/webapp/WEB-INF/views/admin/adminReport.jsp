<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/admin.css"/>

<script>
$(".nav").click(function(){
    $(this).css("color","#8f01a3");
});
	
function Popup() { 
	window.open("bookticket.do", "a", "width=900px, height=630px, left=100, top=0"); 
}	
</script>

<nav id="myPageNavBar">
	<span id="myPage"><label>관리자 메뉴</label></span>
	<table id="navBar">
		<tr>
			<td class="nav" onclick="location.href='${pageContext.request.contextPath}/admin/adminReport.do'">신고 게시판</td>
		</tr>
		<tr>
			<td class="nav" onclick="location.href='${pageContext.request.contextPath}/admin/adminMemberList.do'">내 회원목록</td>
		</tr>
		<tr>
			<td class="nav" onclick="Popup();">내예매팝업</td>
		</tr>		
	</table>
</nav>

<div id="container">
	<jsp:include page="/WEB-INF/views/common/adminReportnav.jsp"/>
   
	<div id="report">
		<div class="inner">
			<h2 class="font">신고 리뷰 목록</h2>
			<div class="rhr"></div>
		</div>
		
		<table class="table" id="reporttbl">
			<thead>
				<tr>
			      <th scope="col">No</th>
			      <th scope="col">신고사유</th>
			      <th scope="col">신고한 회원</th>
			      <th scope="col">신고 받은 회원</th>
			    </tr>
			 </thead>
			 <tbody>
			 	<c:forEach items="${reportList }" var="list">
			 	<c:set var="num" value="${list.reviewNo }"/>
				    <tr class="cursor" onclick="location.href='${pageContext.request.contextPath}/admin/adminReportDetail.do?reviewNo='+${num}">
				      <th scope="row">${list.reviewNo }</th>
				      <td>${list.reportReason }</td>
				      <td>${list.reportMemberId }</td>
				      <td>${list.receiveMemberId }</td>
				    </tr>
			    </c:forEach>
			 </tbody>
		</table>

		<!-- 페이지바  -->
		<nav aria-label="Page navigation example" class="nav_top font">
			<ul class="pagination justify-content-center font_size">
			<c:set var="barNo" value="${paging.barNo }"/>
			<c:set var="barEnd" value="${paging.barEnd }"/>
			<c:set var="totalPage" value="${paging.totalPage }"/>
			<c:set var="cPage" value="${paging.cPage }"/>
			<c:set var="s" value="${paging.barStart }"/>
				<c:if test="${barNo eq 1}">
					<li class="page-item disabled">
						<a class="page-link" style="background-color: #F2F2F2; border: 0px;">&lt;</a>
					</li>
				</c:if>
				<c:if test="${barNo ne 1}">
					<li class="page-item">
						<a class="page-link" href="${pageContext.request.contextPath }/admin/adminReport.do?cPage=${barNo-1}" style="background-color: #F2F2F2; border: 0px;">&lt;</a>
					</li>
				</c:if>
				<c:if test="${!(barNo>barEnd || barNo>totalPage)}">
					<c:forEach var="barNo" begin="${barNo }" end="${barEnd }">
						<c:choose>
							<c:when test="${barNo eq cPage}">
								<li class="page-item disabled">
									<a class="page-link" style="color: black; border: 0px;">${barNo }</a>
								</li>
							</c:when>
							<c:when test="${(barNo ne s && cPage eq totalPage) }">
								<li class="page-item disabled">
									<a class="page-link" href="${pageContext.request.contextPath }/admin/adminReport.do?cPage=${barNo}" style="color: gray; border: 0px;">${barNo }</a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="page-item">
									<a class="page-link" href="${pageContext.request.contextPath }/admin/adminReport.do?cPage=${barNo}" style="color: gray; border: 0px;">${barNo }</a>
								</li>
							</c:otherwise>
						</c:choose>
						<c:set var="next" value="${barNo+1 }"/>
					</c:forEach>
				</c:if>
				<c:choose>
					<c:when test="${(barNo>totalPage || cPage eq totalPage)}">
						<li class="page-item disabled">
							<a class="page-link" style="background-color: #F2F2F2; border: 0px;">&gt;</a>
						</li>
					</c:when>
					<c:when test="${barEnd > totalPage }">
						<li class="page-item disabled">
							<a class="page-link" href="${pageContext.request.contextPath }/admin/adminReport.do?cPage=${next}" style="background-color: #F2F2F2; border: 0px;">&gt;</a>
						</li>
					</c:when>
					<c:when test="${!(barNo>totalPage || cPage eq totalPage) }">
						<li class="page-item">
							<a class="page-link" href="${pageContext.request.contextPath }/admin/adminReport.do?cPage=${next}" style="background-color: #F2F2F2; border: 0px;color: #444444;"">&gt;</a>
						</li>
					</c:when>
				</c:choose>
			</ul>
		</nav>	
	</div>

</div>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>