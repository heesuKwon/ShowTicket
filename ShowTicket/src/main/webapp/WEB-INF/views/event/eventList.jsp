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
<style>

div#saleC{width: 50px; height: 50px; border-radius: 55px; background: black;  left: 28%; color: white; position: relative; top: 51px;z-index: 1;margin-left: 54%;}

</style>
<div id="container" class="event_cont">
	<div class="inner">
		<h2 class="blind">이벤트</h2>
		<!-- [D]  1 depth의 값을 h2로 뿌려줍니다 -->
		<!-- 3월 스펙 아웃으로 인한 큰 이벤트 이미지 부분 삭제 -->

		<ul class="nav nav-pills nav-justified">
			<li class="nav-item"><a class="nav-link select nav-font" href="#">진행중인 이벤트</a>
			</li>
			<li class="nav-item"><a class="nav-link nav-font default" href="${pageContext.request.contextPath}/event/endEventList.do">종료된 이벤트</a></li>
			<li class="nav-item"><a class="nav-link nav-font default" href="${pageContext.request.contextPath}/event/prizewinner.do">당첨자 발표</a></li>
			<li class="nav-item"><a class="nav-link nav-font default" href="${pageContext.request.contextPath}/coupon/coupon.do">쿠폰</a>
			</li>
		</ul>
		<h2 class="title">특가 진행</h2>
			<button type="button" class="btn btn-info" id="saleWritebtn" onclick="location.href='${pageContext.request.contextPath}/event/addSaleEvent.do'">글쓰기</button>
		<ul class="event_top_list">
			<c:forEach items="${dcList }" var="dcList">
			<li>
				
				
				<a href="${pageContext.request.contextPath }/event/eventView.do?evtID=${dcList.showId }"> 
					
					<img
					src="${dcList.disCountImg}"
					alt="poster" width="285" height="386">
					
					<div class="event_top_info">
						<input type="hidden" name="evtID" value="${dcList.showId }" />
						<dl>
							<dt>제목</dt>
							<dd class="event_title">
								<span>[초대]  ${dcList.showGenre} </span> <br />
								
								&lt; ${dcList.showName} &gt;
							</dd>
							<dt>이벤트 내용</dt>
							<dd style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
								 기대평 이벤트  
							</dd>
							<dt>기간</dt>
							<dd class="event_date"> ${dcList.disCountStartDate} ~ ${dcList.disCountEndDate}</dd>
						</dl>
					</div>
				</a>
				<div id="saleC"> <h4>${dcList.disCountRate }%</h4></div>
			</li>
			</c:forEach>

		</ul>

		<h2 class="small-title">전체 이벤트</h2>
		<!-- 이벤트 글쓰기 페이지  -->
		<button class="btn btn-outline-success my-2 my-sm-0" type="button"
				onclick="location.href='${pageContext.request.contextPath}/event/eventWrite.do'">글쓰기</button>
		<button class="btn btn-outline-success my-2 my-sm-0" type="button"
				onclick="location.href='javascript:popup()'">아이디찾기</button>
<%-- 		<button class="btn btn-outline-success my-2 my-sm-0" type="button"
				onclick="location.href='${pageContext.request.contextPath}/event/eventWrite.do'">글쓰기</button> --%>
		<div class="event_cont_box">
			<div class="event_list_inner">
				<ul id="eventList">
					<c:forEach items="${eventList }" var="evt">
						<li>
							<a href="${pageContext.request.contextPath }/"> <!-- 전체 이벤트 페이지 ??  -->
								<dl>
									<dt>대표이미지</dt>
									<dd class="thumb">
										<img
											src="${evt.poster}" alt="poster"
											width="110" height="134">
									</dd>
									<dt>제목</dt>
									<dd class="event_title">
										<span>[응모]</span>${evt.genrenm}  &lt;${evt.prfnm}&gt; 관람평 이벤트
									</dd>
									<dt>이벤트내용</dt>
									<dd>${evt.genrenm} &lt;${evt.prfnm}&gt; 관람평 이벤트</dd>
									<dt>기간</dt>
									<dd class="event_date">${evt.prfpdfrom}~${evt.prfpdto}</dd>
									
								</dl>
							</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div id="pagination" class="paging"></div>


		</div>
	</div>
</div>


<script>

function popup(){
    var url = "${pageContext.request.contextPath}/member/memberIdFind.do";
    var name = "popup test";
    var option = "width = 430, height = 550, top = 100, left = 400, location = no"
    window.open(url, name, option);
}

</script>
<script type="text/javascript" src="/resources/js/pagingJs.js"></script>
<script type="text/javascript"
	src="/resources/js/jquery.formatDateTime.min.js"></script>
<script type="text/javascript">
    //<![CDATA[
	
    var globalEventTypeCode;
    var firstPage = 1;
    $(document).ready(function () {
        getEventList(firstPage);

        if ($(".event_top_list li").length < 3) {
            for (var i = $(".event_top_list li").length; i < 3; i++) {
                $(".event_top_list").append('<li><a href="javascript:;"><img	alt="" width="318" height="386"><div class="event_top_info">'
                        + '</div></a></li>');
            }
        }

    });

    //]]>
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>