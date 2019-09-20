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
		<ul class="event_top_list">

			<li><a href="${pageContext.request.contextPath }/event/eventView.do"> <img
					src="//image.toast.com/aaaaab/ticketlink/TKL_9/이벤트썸네일_318x386_디오디언스.jpg"
					alt="임시" width="318" height="386">
					<div class="event_top_info">
						<dl>
							<dt>제목</dt>
							<dd class="event_title">
								<span>[초대]</span>NT Live
								<디 오디언스> 기대평 이벤트 
							</dd>
							<dt>이벤트 내용</dt>
							<dd
								style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
								NT Live
								<디 오디언스> 기대평 이벤트 
							</dd>
							<dt>기간</dt>
							<dd class="event_date">2019.09.10 ~2019.09.18</dd>
						</dl>
					</div>
			</a></li>






			<li><a href="/event/550"> <img
					src="//image.toast.com/aaaaab/ticketlink/TKL_2/이벤트썸네일_318x386_한뼘사이.jpg"
					alt="임시" width="318" height="386">
					<div class="event_top_info">
						<dl>
							<dt>제목</dt>
							<dd class="event_title">
								<span>[초대]</span>연극
								<한뼘사이> 기대평 이벤트 
							</dd>
							<dt>이벤트 내용</dt>
							<dd
								style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
								연극
								<한뼘사이> 기대평 이벤트 
							</dd>
							<dt>기간</dt>
							<dd class="event_date">2019.09.05 ~2019.09.19</dd>
						</dl>
					</div>
			</a></li>






			<li><a href="/event/547"> <img
					src="//image.toast.com/aaaaab/ticketlink/TKL_9/배너(썸네일)_318x386.jpg"
					alt="임시" width="318" height="386">
					<div class="event_top_info">
						<dl>
							<dt>제목</dt>
							<dd class="event_title">
								<span>[응모]</span>9월 신한은행 예매수수료 면제 이벤트
							</dd>
							<dt>이벤트 내용</dt>
							<dd
								style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
								9월 신한은행 예매수수료 면제 이벤트</dd>
							<dt>기간</dt>
							<dd class="event_date">2019.09.01 ~2019.09.30</dd>
						</dl>
					</div>
			</a></li>



		</ul>

		<h4 class="evt_tit">전체 이벤트</h4>
		<!-- 이벤트 글쓰기 페이지  -->
		<button class="btn btn-outline-success my-2 my-sm-0" type="button"
				onclick="location.href='${pageContext.request.contextPath}/event/eventForm.do'">글쓰기</button>
		<div class="event_cont_box">
			<div class="event_list_inner">
				<ul id="eventList">
				</ul>
			</div>
			<div id="pagination" class="paging"></div>


		</div>
	</div>
</div>

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
    function getEventList (page, eventTypeCode) {
        globalEventTypeCode = eventTypeCode;
        $.ajax({
            dataType: "json",
            url: "/event/getEventList",
            data: {
                page: page,
                eventTypeCode: globalEventTypeCode
            },
            success: function (result) {
                displayEvent(result.result.result);
                displayPage(result.result.paging, $('#pagination'));
            },
            error: function (status) {
                alert("오류가 발생하였습니다. 관리자에게 문의하세요.");
            }
        });
    }

    function displayEvent (eventList) {
        var eventListTable = $("#eventList");
        eventListTable.html('');
        for (var i = 0; i < eventList.length; i++) {
            var startDate = new Date(eventList[i].startDatetime);
            var endDate = new Date(eventList[i].endDatetime);
            var imgTag = eventList[i].eventImagePath == null ? "" : "<img src='" + eventList[i].eventImagePath + "' width='110' height='134'>";

            if (eventList[i].eventId === 134) {
				var contents = "<li><a href='http://sports.ticketlink.co.kr/event/simplePayco'><dl><dt>대표이미지</dt><dd class='thumb'>" + imgTag + "</dd>";
				contents += "<dt>제목</dt><dd class='event_title'><span>[" + eventList[i].eventTypeName + "]</span>" + eventList[i].eventName + "</dd>";
				contents += "<dt>이벤트내용</dt><dd>" + eventList[i].eventConcertContent + "</dd><dt>기간</dt><dd class='event_date'>";
				contents += $.formatDateTime('yy.mm.dd', startDate) + "~" + $.formatDateTime('yy.mm.dd', endDate) + "</dd></dl></a></li>";
				eventListTable.append(contents);
			} else {
				var contents = "<li><a href='/event/" + eventList[i].eventId + "'><dl><dt>대표이미지</dt><dd class='thumb'>" + imgTag + "</dd>";
				contents += "<dt>제목</dt><dd class='event_title'><span>[" + eventList[i].eventTypeName + "]</span>" + eventList[i].eventName + "</dd>";
				contents += "<dt>이벤트내용</dt><dd>" + eventList[i].eventConcertContent + "</dd><dt>기간</dt><dd class='event_date'>";
				contents += $.formatDateTime('yy.mm.dd', startDate) + "~" + $.formatDateTime('yy.mm.dd', endDate) + "</dd></dl></a></li>";
				eventListTable.append(contents);
			}
        }

        if (eventList.length == 0) {
            $("#eventList").append("<li style='padding-left: 42%;'>등록된 이벤트가 없습니다.</li>");
        }

    }

    function goPage (page) {
        getEventList(page, globalEventTypeCode);
    }

    //]]>
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>