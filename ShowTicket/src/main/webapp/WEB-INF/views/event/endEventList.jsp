<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle"/>
</jsp:include>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/contents.css">

 <div id="container" class="event_cont">
        <div class="inner">
            <h2 class="blind">이벤트</h2>
            
            <ul class="nav nav-pills nav-justified">
				<li class="nav-item"><a class="nav-link nav-font default" href="${pageContext.request.contextPath}/event/eventList.do">진행중인 이벤트</a></li>
				<li class="nav-item"><a class="nav-link nav-font select" href="${pageContext.request.contextPath}/event/endEventList.do">종료된 이벤트</a></li>
				<li class="nav-item"><a class="nav-link nav-font default" href="${pageContext.request.contextPath}/event/prizewinner.do">당첨자 발표</a></li>
				<li class="nav-item"><a class="nav-link nav-font default" href="${pageContext.request.contextPath}/coupon/coupon.do">쿠폰</a></li>
			</ul>
		
            <!-- [D]  1 depth의 값을 h2로 뿌려줍니다 -->
            <h2 class="title">종료된 이벤트</h2>
            <div class="event_cont_box">
                <div class="event_list_inner">
                	<c:if test="${empty EdcList }"> <h2>종료된 이벤트가 없습니다.</h2> <br /></c:if>
					<c:if test="${!empty EdcList }"> 
                    <ul id="endEventList">

						<c:forEach items="${EdcList }" var="EdcList">
							
						<li>
							
							<a href="${pageContext.request.contextPath }/event/eventView.do?evtID=${EdcList.showId }"> 
								
								<img
								src="${EdcList.discountImg}"
								alt="poster" width="285" height="386">
								
								<div class="event_top_info">
									<input type="hidden" name="evtID" value="${EdcList.showId }" />
									<dl>
										<dt>제목</dt>
										<dd class="event_title">
											<span>[특가]  ${EdcList.showGenre} </span> <br />
											
											&lt; ${EdcList.showName} &gt;
										</dd>
										<dt>이벤트 내용</dt>
										<dd style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
											 특가 할인 이벤트  
										</dd>
										<dt>기간</dt>
										<dd class="event_date"> <fmt:formatDate pattern="yyyy-MM-dd" value="${EdcList.discountStartDate}"/> ~ <fmt:formatDate pattern="yyyy-MM-dd" value="${EdcList.discountEndDate}"/></dd>
									</dl>
								</div>
							</a>
							<div id="saleC"> <h4>${EdcList.discountRate }%</h4></div>
						</li>
						</c:forEach>

                    </ul>
                    </c:if>
                </div>
                <div class="paging" id="pagination">
                </div>
            </div>
        </div>
    </div>
    





<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>