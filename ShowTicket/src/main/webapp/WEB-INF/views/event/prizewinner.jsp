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
				<li class="nav-item"><a class="nav-link nav-font default" href="${pageContext.request.contextPath}/event/endEventList.do">종료된 이벤트</a></li>
				<li class="nav-item"><a class="nav-link nav-font select" href="${pageContext.request.contextPath}/event/prizewinner.do">당첨자 발표</a></li>
				<li class="nav-item"><a class="nav-link nav-font default" href="${pageContext.request.contextPath}/coupon/coupon.do">쿠폰</a></li>
			</ul>
		
            <!-- [D]  1 depth의 값을 h2로 뿌려줍니다 -->
            <h2 class="title">당첨자 발표</h2>
            <button class="btn btn-primary btn-sm btn-color" style="float:right; margin:10px; width:50px; height:30px;">작성</button>
            <div class="event_cont_box">
                <div class="basic_tbl mgt10">
                    <table>
                        <caption>당첨자 리스트</caption>
                        <colgroup>
                            <col style="width: 80px">
                            <col style="width: 110px">
                            <col>
                            <col style="width: 180px">
                        </colgroup>
                        <thead>
                        <tr>
                            <th scope="col">번호</th>
                            <th scope="col">카테고리</th>
                            <th scope="col">이벤트명</th>
                            <th scope="col">기간</th>
                        </tr>
                        </thead>
					<tbody id="winnerList">
						<tr>
							<td>3</td>
							<td>[기대평 ] 맘마미아 당첨자 발표</td>
							<td>2019.02.22</td>
							<td>1</td>
						</tr>
						<tr>
							<td>2</td>
							<td>[관람후기 ] (2019 대구 대백프라자) 전래 인형극 “용궁이야기” 당첨자 발표</td>
							<td>2019.02.27</td>
							<td>20</td>
						</tr>
						<tr>
							<td>1</td>
							<td>[기대평] 가장무도 당첨자 발표</td>
							<td>2019.03.04</td>
							<td>10</td>
						</tr>
					</tbody>
				</table>
                </div>
                <div class="paging" id="pagination">
                </div>
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
    <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js"></script>
    <noscript>
        <div style="display:inline;">
            <img height="1" width="1" style="border-style:none;" alt=""
                 src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/950223509/?value=0&amp;guid=ON&amp;script=0"/>
        </div>
    </noscript>
    <script type="text/javascript">
		$("iframe[name='google_conversion_frame']").css("display", "none");
    </script>

<script type="text/javascript" src="/resources/js/pagingJs.js"></script>
<script type="text/javascript" src="/resources/js/jquery.formatDateTime.min.js"></script>
<script type="text/javascript">
    //<![CDATA[

    var firstPage = 1;
    $(document).ready(function () {
        getWinnerList(firstPage);
    });
    function getWinnerList (page) {
        $.ajax({
            dataType: "json",
            url: "/event/getWinnerList.nhn",
            data: {
                page: page,
            },
            success: function (result) {
                displayWinnerList(result.result.result);
                displayPage(result.result.paging, $('#pagination'));
            },
            error: function (status) {
                alert("오류가 발생하였습니다. 관리자에게 문의하세요.");
            }
        });
    }

    function displayWinnerList (winnerList) {
        var endEventListTable = $("#winnerList");
        endEventListTable.html('');
        for (var i = 0; i < winnerList.length; i++) {
            var startDate = new Date(winnerList[i].startDatetime);
            var endDate = new Date(winnerList[i].endDatetime);
            var contents = "<tr><td class='ff_tahoma fs11'>" + winnerList[i].eventPublishId + "</td>";
            contents += "<td>" + winnerList[i].eventTypeName + "</td><td class='tl'>";
            contents += "<a href='/event/" + winnerList[i].eventPublishId + "/winner.nhn' class='elp'>" + winnerList[i].eventName + "</a></td>";
            contents += "<td class='ff_tahoma fs11'>" + $.formatDateTime('yy.mm.dd', startDate) + "~" + $.formatDateTime('yy.mm.dd', endDate) + "</td></tr>"
            endEventListTable.append(contents);
        }
        if (winnerList.length == 0) {
            var contents = '<tr class="no_data"><td colspan="4">등록된 게시글이 없습니다.</td></tr>';
            endEventListTable.append(contents);
        }
    }

    function goPage (page) {
        getWinnerList(page);
    }

    //]]>
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>