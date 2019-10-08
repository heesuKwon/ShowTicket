<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.kh.showticket.common.MusicalAndShow"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8" />
<jsp:include page="/WEB-INF/views/common/header.jsp" />

<link rel="stylesheet" type="text/css"
						href="${pageContext.request.contextPath}/resources/css/contents.css"> 
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/musical_showdetail.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<script src="/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
<!--지도api  -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=90fa5b9d28b260d5191bb13ef4764b06"></script>
<!--  <link rel="stylesheet" type="text/css"
						href="http://ticketlink.dn.toastoven.net/web/pcweb/markup_resources/201506191200/jindoStarRating/css/star.css">  -->

<%

	/*-------------------------------희수 코딩 영역--------------------------------*/
	MusicalAndShow musical = (MusicalAndShow) request.getAttribute("musical");
	System.out.println("urls:"+musical.getUrls());
	System.out.println("musical"+musical);

	String[] times = musical.getTime().split(", ");
	Map<String, String> dayTime = new HashMap<>();
	Map<String, Integer> days = new HashMap<>();
	days.put("월", 0);
	days.put("화", 1);
	days.put("수", 2);
	days.put("목", 3);
	days.put("금", 4);
	days.put("토", 5);
	days.put("일", 6);
	String[] d = { "월", "화", "수", "목", "금", "토", "일"};
	for (String s : times) {
		//System.out.println(s);
		String time = s.substring(s.indexOf("(") + 1, s.indexOf(")"));
		if (s.contains("~")) {
			String day1 = s.substring(s.indexOf("요일") - 1, s.indexOf("요일"));
			String day2 = s.substring(s.lastIndexOf("요일") - 1, s.lastIndexOf("요일"));
			for (int i = days.get(day1); i <= days.get(day2); i++) {
				dayTime.put(d[i], time);
			}
		} else {
			String day1 = "";
			if (s.contains("HOL")) {
				day1 = "HOL";
			} else {
				day1 = s.substring(s.indexOf("요일") - 1, s.indexOf("요일"));
			}
			dayTime.put(day1, time);
		}
	}
	
	Object[] str = dayTime.keySet().toArray();
	String[] day = { "일", "월", "화", "수", "목", "금", "토"};
	String st = "";
	for(Object s:str){
		st += (String)s;		
	}

	List<Integer> list = new ArrayList<>();
	for(int i=0;i<day.length;i++){
		if(!st.contains(day[i])){
			list.add(i);	
		}
	}
	/*-------------------------------희수 코딩 영역--------------------------------*/
%>


<script language='javascript'>
/*--------------------------석현씨 코딩영역-----------------------------  */	

$(()=>{
	 $(".tabs-Num").css("display","none");
	
	$("#tabs-3").css("display","block");
})



/*--------------------------석현씨 코딩영역-----------------------------  */		

</script>
<script type="text/javascript">
window.onload = function(){
	$("#bookButton").click(function(){
 var showTime = $("#watchTime").val();
 alert(showTime);
	})
}
</script>
</head>
<script>
	var meta = document.createElement('meta');
	meta.setAttribute('name', 'more_page_type');
	meta.setAttribute('content', 'detail');
	document.getElementsByTagName('head')[0].appendChild(meta);
</script>

<div id="detailContainer">

	<input type="hidden" id="productId" value="29652" /> <input
		type="hidden" id="productName" value="뮤지컬 <사랑했어요> (사랑의 가객 故김현식 뮤지컬) " />
	<input type="hidden" id="adultYn" value="false" />
	<div class="inner">
		<h2 class="blind">공연</h2>
		<!-- [D]  1 depth의 값을 h2로 뿌려줍니다 -->
		<h3 class="blind">뮤지컬</h3>
		<!-- [D]  2 depth의 값을 h3로 뿌려줍니다 -->
		<h4 class="blind">창작뮤지컬</h4>
		<p class="location_path"></p>

		<div class="detail_box_top ">
		<form name="ticketingFrm"  method="post" 
		  enctype="multipart/form-data"> 
			<div class="bx_title">
				<!-- [D] 제목이 길어져서 태그가 아래로 떨어질 경우 : .title에 long_case 클래스 추가 -->
				<div class="title">뮤지컬 &lt;${musical.getName()}&gt;</div>
			</div>
			<div class="detail_info">
				<div class="bx_thumb">
					<span class="bx_img"> <!-- 뮤지컬포스터 --> <img
						src="${musical.getPoster()}" alt="대표이미지" width="314" height="382">
					</span>
				</div>
				<div class="etc_info">

					<div class="bx_dummy">
						<em class="info_tit">별점</em> <span class="txt">${musical.getReviewStar()}</span>
					</div>


					<div class="bx_dummy">
						<em class="info_tit">장소</em> <span class="txt">${musical.getHallName()}</span>
					</div>
					<div class="bx_dummy">
						<em class="info_tit">기간</em> <span class="txt">${musical.getStartDate()}
							~ ${musical.getEndDate()}</span>
					</div>
					<div class="bx_dummy">
						<em class="info_tit">관람시간</em> <span class="txt">${musical.getRuntime() }</span>
					</div>
					<div class="bx_dummy border_type">
						<em class="info_tit">관람등급</em> <span class="txt">${musical.getAge() }</span>
					</div>
					<!-- [D] 레이어 들어간 유형 : include_layer 클래스 추가 -->

					<div class="bx_dummy include_layer">
						<em class="info_tit">가격</em>
						<div class="txt ui-dialog  price-dialog">
							<ul class="lst_dsc">
								<%
									String[] prices = musical.getPrice().split(", ");
								%>
								<c:forEach items="<%=prices%>" var="m">
									<li>${fn:substring(m,0,fn:indexOf(m,"석")+1)}-<span
										class="color_purple fbold">${fn:substring(m,fn:indexOf(m,"석")+1,fn:indexOf(m,"원")) }</span>
										${fn:substring(m,fn:indexOf(m,"원"),fn:indexOf(m,"원")+1)}
									</li>
									<br />
								</c:forEach>
							</ul>

							<!-- [D] 활성화 시 display:block 처리 -->

						</div>
					</div>

					<div class="bx_dummy include_layer border_type">
						<em class="info_tit">할인</em>
						<div class="txt ui-dialog  price-dialog">
							<ul class="lst_dsc">
								<c:forEach items="${coupon}" var="c">
									<li>${c.couponTitle } - <span class="color_purple fbold ">${c.couponPrice }</span>원 할인</li>
								</c:forEach>
								<!-- <li><사랑했어요>기대평 이벤트 - <span
										class="color_purple fbold">40</span>% 할인 </li> -->
							</ul>
						</div>
					</div>
				</div>
				<div class="bx_dummy">
					<em class="info_tit">대기공연추가</em>
					<span id="wait">
						<img src="${pageContext.request.contextPath }/resources/images/heart.png"
						alt="" width=15px; />
					</span>
				</div>
			</div>
			<!-- FE 지원 form 시작 -->
			<c:if test="${musical.getState() eq '공연중'}">
				<div class="detail_info_right">
					<div id="calendar"></div>

					<dl class="dotline_x" >
						<dt>예매가능 회차</dt>
						<dd>
							<!-- [D] 셀렉트박스 -->
							<select name="watchTime" id="watchTime">
								<option>회차선택(날짜선택후)</option>
							</select>
						</dd>
					</dl>

					<button type="button" class="btn reserve s_after first-child" id="bookButton">
						<span>예매하기 </span>
					</button>
				</div>
			</c:if>
			<c:if test="${musical.getState() eq '공연예정'}">
				<div class="detail_info_right">
					<div class="noinfo_txt">티켓 오픈일은 공지사항을 참고해주세요.</div>

					<button type="button" class="btn reserve due s_after first-child"
						onclick="">
						<span>판매예정 </span>
					</button>
				</div>
			</c:if>
			<c:if test="${musical.getState() eq '공연완료'}">
				<div class="detail_info_right">
					<div class="noinfo_txt">공연이 종료되었습니다.</div>

					<button type="button" class="btn reserve due s_after first-child"
						onclick="">
						<span>공연완료</span>
					</button>
				</div>
			</c:if>
			</form>
			<!-- FE 지원 form 종료 -->
		</div>
		<!-- 배너영역 -->

		<!-- 하단 탭 출력 -->

		<div class="detail_box_bot">
			<div class="detailbox_bot_left" id="tabs">
				<ul class="detail_tab">
					<li class="on">
						<div onclick="selectTap(this);" id="detailTop" class="btn_menu">
							상세정보</div>
					</li>

					<li id="productTabs2">
						<div class="btn_menu" id="reviewTap" onclick="selectTap(this);">
							관람후기</div>
					</li>


					<li>
						<div id="placeTap" onclick="selectTap(this);" class="btn_menu">
							공연장정보</div>
					</li>

					<li>
						<div onclick="selectTap(this);" id="cancelTap" class="btn_menu">
							티켓수령 취소/환불</div>
					</li>
				</ul>
				<div class="tabs-Num" id="tabs-1">
				
					<div class="detail_cont">
						
							<strong>[공연장 정보]</strong><br />
							장소 : ${musical.hallName }<br> 주소 : ${address.adres }<br>
								대표번호 : <span id="phoneNumber">${address.telno }</span><br> <br /> <br /> <br />							
 								<div id="map" style="clear:both; width:800px;height:400px;position: relative;
    												overflow: visible;margin-left:66px;"></div>
					</div>


				</div>

				<div class="tabs-Num" id="tabs-2">

<style type="text/css">
  	.starrating-background {
  	both:clear;
     background: transparent url(../resources/images/T_03.png) repeat-x scroll 0 0; 
    cursor: pointer;
    display: inline-block;
    height: 30px;
    margin: 0;
    width: 125px;
    vertical-align: middle;
}
	
.starrating-background span {
both:clear;
 	background: transparent url(../resources/images/T_01.png)
		repeat-x scroll 0 0; 
	cursor: pointer;
	display: inline-block;
	height: 30px !important;
}

.starrating-background em {
	both:clear;	
	position: absolute;
	top: 0;
	left: 0;
	width: 0;
	height: 0;
	overflow: hidden;
	visibility: hidden;
	font-size: 0;
	line-height: 0;
}   

</style>
					
					<div class="detail_cont detail_cont_v2">
						
						<div class="title_wrap">
							<strong class="title title21">네티즌 별점 및 후기</strong>
						</div>
						<p class="guide_txt">
							네티즌 별점 및 후기 게시판에 티켓 양도와 매매성 등 글과 같이 게시판 성격에 벗어난 글을 게재할 경우 사전 통보
							없이 삭제될 수 있습니다.<br> 티켓 양도 및 매매의 경우 전화번호, 이메일 등의 개인정보가 악용될 소지가
							있으므로 게재를 삼가 주시기 바랍니다.<br> 운영 규정을 지속적으로 어기는 게시글을 게재할 경우 쇼티켓
							게시판 이용이 제한될 수 있습니다.
						</p>
						
						
						
				<!-- 				[D] st_off 영역에 마우스 오버시 : 클래스 st_over 추가
                    [D] 버튼 선택시 : 선택된 버튼 클래스 'on' 추가, 대체텍스트 '선택됨' 추가, 짝수 점수 버튼에 클래스 st_r 추가, 디폴트는 화면에 보이지 않는 0점 버튼
								jindo.StarRating 을 사용함. http://jindo.dev.naver.com/docs/jindo-component/1.2.0/doc/external/classes/jindo.StarRating.html -->

						<div class="star_review" id="star_review">
							<fieldset>
								<legend>네티즌 별점 및 후기 작성</legend>
								 <div class="star_rating">
									<strong class="blind">평점선택</strong>
									<div class="starrating-background" id="star_rating"
										style="float: left;">
										<span style="width:50px;"><em></em></span>
									</div>
									
									<span class="blind">평점</span> <span class="star_score"
										id="score" name="rating"></span>
								</div>

								<dl class="star_average">
									<dt>현재 평균 별점</dt>
									<dd class="grade color_purple" id="ratingAverage">점</dd>
									<dd class="grade_star">
										<span class="star_gauge" id="ratingAverageStar"
											style="width: 0%"></span>
									</dd>
									<dd class="bar">|</dd>
									<dt>참여인원</dt>
									<dd class="person" id="countReviewe"></dd>
								</dl>
								<div class="write_review">
									<textarea title="후기 작성하기" id="reviewContent"
										name="reviewContent" onclick="callMemberCommonCheck();"
										onkeyup="checkTextLength(this);"
										onpaste="checkTextLength(this);"
										onchange="checkTextLength(this);"
										style="height: 25px; resize: none;" maxlength="3000"
										placeholder="주민번호, 전화번호, 이메일 등 개인정보를 남기면 타인에 의해 악용될 소지가 있습니다."></textarea>
									<button type="button" id="reviewInsertButton"
										class="btn btn_reply">댓글입력</button>
								</div>
							</fieldset>
							<div id="star_review_errors"></div>
						</div>

						<div class="title_wrap mgt40">
							<strong class="title title22 fl">후기보기</strong> <a
								href="javascript:;" class="btn_text3 fr"
								id="displayAllReviewBtn" onclick="displayAllreview();">전체후기보기</a>
						</div>
						
						<div class="review_list">

							<ul id="reviewUl" style="word-break: break-all;">
								<li class="reviewOne"><span class="reviewId color_purple">honggd<span
										class="reviewDate small-font">2019.09.20 17:10</span></span>
									<div class="btns">
										<button class="btn-sm btn-primary" id="mReview">수정</button>
										<button class="btn-sm btn-primary" id="dReview">삭제</button>
									</div>
									<div class="reviewContent">뮤지컬 시티오브엔젤 속 매력 넘치는 배우님들의 무대가
										가장 인상적이었어요. 이름만 들어도 입이 떠억 벌어질 정도로 대단한 분들이라.. 한분만으로도 무대가 가득찬
										느낌인데.. 최고의 배우들이 함께하는 환상의 무대가 정말 꿈같은 일이었어요~ 작품성은 물론 재미까지 있어서
										인상적이었어요!!! 특유의 끼와 열정으로 별처럼 반짝반짝 빛나게 연기하는 멋진 배우들 한사람 한사람이 제게는
										인상적으로 느껴졌어요. 덕분에 상상 그 이상의 환상적인 감동과 재미를 받을 수 있었어요.</div></li>
								<li class="reviewOne"><span class="reviewId color_purple">honggd<span
										class="reviewDate small-font">2019.09.20 17:10</span></span>
									<div class="btns">
										<button class="btn-sm btn-primary" id="mReview">수정</button>
										<button class="btn-sm btn-primary" id="dReview">삭제</button>
									</div>
									<div class="reviewContent">뮤지컬 시티오브엔젤 속 매력 넘치는 배우님들의 무대가
										가장 인상적이었어요. 이름만 들어도 입이 떠억 벌어질 정도로 대단한 분들이라.. 한분만으로도 무대가 가득찬
										느낌인데.. 최고의 배우들이 함께하는 환상의 무대가 정말 꿈같은 일이었어요~ 작품성은 물론 재미까지 있어서
										인상적이었어요!!! 특유의 끼와 열정으로 별처럼 반짝반짝 빛나게 연기하는 멋진 배우들 한사람 한사람이 제게는
										인상적으로 느껴졌어요. 덕분에 상상 그 이상의 환상적인 감동과 재미를 받을 수 있었어요.</div></li>
							</ul>
						</div>

						<div id="pagination" class="paging"></div>


					</div>
				</div>
<!-- 후기 별점 api  -->				
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/resources/js/jindo2.ns.js"></script>
<script type="text/javascript"  charset="utf-8"
	src="${pageContext.request.contextPath }/resources/js//jindo.Component.js"></script>
<script type="text/javascript"  charset="utf-8"
	src="${pageContext.request.contextPath }/resources/js/jindo.UIComponent.js"></script>
<script type="text/javascript"  charset="utf-8"
	src="${pageContext.request.contextPath}/resources/js/jindo.StarRating.js"></script>

<script type="text/javascript">
	//<![CDATA[

	/* function callMemberCommonCheck () {
		var url = "/product/" + $('#productId').val();
		memberCommonCheck(url);
	} */

	/* function insertProductReview () { */
		/* 	if(!checkLoginUsingCookie("tabs-2")){
         return;
         } */
         
         
         
         
		/* var url = "/product/" + $('#productId').val();
		if (!memberCommonCheck(url)) {
			return;
		}

		if (!isValidReview()) {
			return;
		}

		$("#reviewInsertButton").attr("onclick", "");

		var productId = $("#productId").val();
		$.ajax({
			async: false,
			type: "POST",
			dataType: 'json',
			url: "/product/review/insertProductReview.nhn",
			data: {
				productId: productId,
				rating: $("#score").text(),
				reviewContent: $("#reviewContent").val()
			},
			success: function (result) {
				if (result.message == "validation fail") {
					setValidationMessage(result.result);
					return;
				}
				alert("후기가 등록되었습니다.");
				getProductReviewList(1);
				$("#reviewContent").val("");
				$("#reviewInsertButton").attr("onclick", "insertProductReview();");
			},
			error: function (request, status, error) {
				alert("오류가 발생하였습니다. 관리자에게 문의하세요.");
				getProductInquiryList(1);
				$("#reviewInsertButton").attr("onclick", "insertProductReview();");
			}
		}); 
	 } */

	/* function deleteThisReview (reviewId) {
		if (confirm("삭제하시겠습니까?")) {
			var productId = $("#productId").val();
			$.ajax({
				type: "POST",
				dataType: 'json',
				url: "/product/review/deleteProductReview",
				data: {
					productId: productId,
					reviewId: reviewId
				},
				success: function (result) {
					if (result && result.result && result.result == "error") {
						alert("오류가 발생하였습니다. 재로그인 후 다시 시도해주세요.");
						return;
					} else {
						alert("후기를 삭제했습니다.");
						getProductReviewList(1);
					}
				},
				error: function (request, status, error) {
					alert("오류가 발생하였습니다. 관리자에게 문의하세요");
				}
			});
		}
	}

	function isValidReview () {
		var rating = $.trim($("#score").text());
		var reviewContent = $.trim($("#reviewContent").val());

		if (rating == "" || rating == null) {
			alert("별점을 선택해주세요.");
			return false
		} else if (reviewContent == "" || reviewContent == null) {
			alert("후기를 입력해주세요.");
			return false
		} else {
			return true;
		}
	}

	function setValidationMessage (validationList) {
		var starReviewErrors = $("#star_review_errors");
		starReviewErrors.html('');
		for (var i = 0; i < validationList.length; i++) {
			contents = "<p style='color:red; margin-top:5px;'>" + validationList[i] + "</p>";
			starReviewErrors.append(contents);
		}
	}

	function getProductReviewList (page) {

		var ajaxData = {
			productId: $("#productId").val(),
			page: page
		};

		if ($("#review_search_type").val() == "memberId") {
			ajaxData.memberId = $.trim($("#review_search_key").val());
		} else {
			ajaxData.reviewContent = $.trim($("#review_search_key").val());
		}

		$.ajax({
			cache: false,
			dataType: "json",
			url: "/product/review/getProductReviewList.nhn",
			data: ajaxData,
			success: function (result) {
				displayReviewList(result.result.result);
				displayPage(result.result.paging, $('#pagination'));
				makeBannerLayer(result.result.productReview)
				resetReviewData(result.result.ratingAverage, result.result.countReviewe);
			}
		});
	}

	function makeBannerLayer (productReview) {
		var imgSrc = this.getBannerImageSrc(productReview.productId);
		if (imgSrc == "") {
			return;
		}

		if ($(".banner_area").find('img').length === 0) {
			$(".banner_area").append(imgSrc);
		}
	}


	function getBannerImageSrc (productId) {
		if (productId === 28633) {
			return '<img src="//tketlink.dn.toastoven.net/static/event/image/web/pc_city_v2.jpg"/>';
		}

		if (productId === 29652) {
			return '<img src="//tketlink.dn.toastoven.net/static/event/image/web/pc_love.jpg"/>'
		}
	}


	function resetReviewData (ratingAverage, countReviewe) {
		if (ratingAverage != null) {
			$("#ratingAverage").text(ratingAverage.toFixed(1));
		}
		$("#ratingAverageStar").css("width", ratingAverage * 20 + "%");
		$("#countReviewe").text(countReviewe + "명");
		$("#reviewContent").val("");
		$("#score").text("");
		$("#star_review_errors").html('');
		oStarRating.reset();
	}

	function displayReviewList (reviewList) {
		var searchedReviewList = $('#reviewUl');
		searchedReviewList.html('');
		for (var i = 0; i < reviewList.length; i++) {
			var date = new Date(reviewList[i].reviewDatetime);
			var list = $('<li>');
			list.appendTo(searchedReviewList);
			var contents = "<div class='review_info'><dl class='star_average'><dt>별점</dt><dd class='grade_star'><span class='star_gauge' style='width: " + (reviewList[i].rating * 20) + "%'></span></dd>" +
				"<dt>아이디</dt><dd class='review_user'>" + reviewList[i].memberId + "</dd>" +
				"<dt>날짜</dt><dd class='review_date'>" + $.formatDateTime('yy.mm.dd hh:ii', date) + "</dd>";
			if (reviewList[i].isMyReview) {
				contents += '<dt>삭제여부</dt><dd class="review_delete"><a href="javascript:;" onclick="deleteThisReview(' + reviewList[i].reviewId + ')" class="delete">댓글삭제</a></dd>';
			}
			contents += "</dl></div>" + reviewList[i].reviewContent;
			list.append(contents);
		}

		if ($.trim($("#review_search_key").val()) == "") {
			$("#displayAllReviewBtn").css("visibility", "hidden");
		} else {
			$("#displayAllReviewBtn").css("visibility", "visible");
		}

		if (reviewList.length == 0) {
			var contents = '<li class="no_data">등록된 후기가 없습니다.</li>';
			searchedReviewList.append(contents);
		}
	}

	function goPage (page) {
		getProductReviewList(page);
	}

	function openReviewSelectList () {
		if ($("#review_select_list").css("display") == "block") {
			$("#review_select_list").css("display", "none");
			return;
		}
		$("#review_select_list").css("display", "block");
	}

	function closeReviewSelectList (obj) {
		$("#review_search_option").text($(obj).text());
		if ($(obj).text() == '내용') {
			$("#review_search_type").val("reviewContent");
		} else {
			$("#review_search_type").val("memberId");
		}
		$("#review_select_list").css("display", "none");
	}

	function searchReview () {
		getProductReviewList(1);
	}

	function searchReviewUsingEnter () {
		$('#review_search_key').keyup(function (e) {
			if (e.keyCode == 13) {
				getProductReviewList(1);
			}
		});
	}

	function displayAllreview () {
		$("#review_search_key").val("");
		getProductReviewList(1);
	}
	*/
	/* var oStarRating = new jindo.StarRating(jindo.$("star_rating"), {
		nStep: 0.5,
		nMaxValue: 5,
		nDefaultValue: 0,
		bSnap: true
	}).attach({
		set: function (oCustomEvent) {
			jindo.$("score").innerHTML = oCustomEvent.nValue;
		}
	});  */

	//]]>
</script>
<!--리뷰 후기 영역  -->				
				
				<div class="tabs-Num" id="tabs-3">

						
						<div class="detail_cont" style="clear:both;">
							<strong>[공연시간 정보]</strong>
							<div class="bx_dummy">
								<em class="info_tit">장소</em> <span class="txt">${musical.getHallName()}</span>
							</div>
							<div class="bx_dummy">
								<em class="info_tit">기간</em> <span class="txt">${musical.getStartDate()}
									~ ${musical.getEndDate()}</span>
							</div>
		
		
		
							<div class="bx_dummy">
								<em class="info_tit">관람시간</em> <span class="txt">${musical.getRuntime() }</span>
							</div>
							<c:if test="${not empty musical.time }">
							<div class="bx_dummy">
								<em class="info_tit">정기 공연일정</em> <br /> 
									<span class="txt">
										${musical.time }
										<%-- <c:forTokens var="item" items="${musical.time}" delims=",">${item}<br /></c:forTokens> --%>
	
									</span>
							</div>
							</c:if>
							<div class="bx_dummy">
								<c:if test="${empty musical.urls }">
								</c:if>
								<c:if test="${not empty musical.urls }">
									<c:forEach items="${musical.urls}" var="f">
												<img src="${f }" alt="" style="max-width: 900px; margin-left:110px;"/>	
									</c:forEach>
								</c:if> 
							</div>
						</div>


					</div>

				</div>
				<script>


//지도 kakao maps api
//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
   		var container = document.getElementById('map'); 
   		
   		var la = ${address.la};//위도
   		var lo = ${address.lo};//경도
		var options = {
			center: new kakao.maps.LatLng(la, lo), // 지도의 중심좌표
			level: 3 // 지도의 확대 레벨
		};
		var map = new kakao.maps.Map(container, options);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  =new kakao.maps.LatLng(la, lo); 

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map); 
	</script>

				<div class="tabs-Num" id="tabs-4">

					<div class="detail_cont">

						<strong>[티켓 수령 안내]</strong>
						<div class="contents">
							<p>
								<strong><span style="font-family: 돋움, dotum;">1)
										일반배송</span></strong><br> <span style="font-family: 돋움, dotum;"> 티켓
									예매 확인 후 인편으로 배송되며, 예매 후 10일 이내(영업일 기준) 수령 가능합니다.</span><br> <span
									style="font-family: 돋움, dotum;">일괄 배송 상품의 경우 고지된 배송일 이후
									10일 이내(영업일 기준) 수령 가능합니다.</span><br> <span
									style="font-family: 돋움, dotum;">배송비는 행사에 따라&nbsp;상이합니다.
									상품 상세 페이지 안내에서 확인할 수 있습니다. </span><br> <span
									style="font-family: 돋움, dotum;">행사 또는 행사일에 따라 우편배송 방법의
									선택이 제한될 수 있습니다.</span>
							</p>
							<p>
								<span style="font-family: 나눔고딕, NanumGothic, sans-serif;"></span><br>
								<strong><span style="font-family: 돋움, dotum;">2)
										현장수령</span></strong><br> <span style="font-family: 돋움, dotum;">
									행사당일 공연 시작 1시간~30분 전까지 행사장 매표소에서 수령하실 수 있습니다.</span><br> <span
									style="font-family: 돋움, dotum;">예매번호, 예매하신 분의 신분증(필수),
									예매확인서(프린트 또는, 티켓링크 앱 예매확인 페이지)를&nbsp;매표소에 제시하시면 편리하게 티켓을 수령하실 수
									있습니다.</span><br> <span style="font-family: 돋움, dotum;">행사
									또는 행사일에 따라 현장수령 방법의 선택이 제한될 수 있습니다.</span><br> <span
									style="font-family: 돋움, dotum;">수령장소는 각 행사장 매표소이며, 매표소의
									예매자 전용 창구를 이용하시면 됩니다.&nbsp;</span>
							</p>
						</div>


						<strong>[예매 취소 안내]</strong>
						<div class="contents">
							<strong>예매 취소 시 주의사항</strong><br> 티켓 예매 후 7일 이내에 취소 시,
							취소수수료가 없습니다. <br>단, 예매 후 7일 이내라도 취소 시점이 공연일로부터 10일 이내라면 그에
							해당하는 취소수수료가 부과됩니다.<br>예매 당일 자정(12:00) 전에 취소할 경우 예매 수수료가
							환불되며, 그 이후에는 환불되지 않습니다.<br>예매티켓 취소는 아래 안내된 취소가능일 이내에만 할 수
							있습니다.
							<table class="detail_info_tbl mgt15">
								<caption>예매 취소 안내</caption>
								<colgroup>
									<col style="width: 180px;">
									<col style="width: 130px;">
									<col>
								</colgroup>
								<thead>
									<tr>
										<th rowspan="1" colspan="1" scope="col">행사일</th>
										<th rowspan="1" colspan="1" scope="col">배송방법</th>
										<th rowspan="1" colspan="1" scope="col">취소가능시간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td rowspan="2">평일/토요일</td>
										<td>현장수령</td>
										<td>행사 전 일, 17:00까지</td>
									</tr>
									<tr>
										<td>인편배송</td>
										<td>행사 전 일, 17:00까지 반송하여 도착하는 티켓</td>
									</tr>
									<tr>
										<td rowspan="2">일요일</td>
										<td>현장수령</td>
										<td>행사 전 토요일, 17:00까지</td>
									</tr>
									<tr>
										<td>인편배송</td>
										<td>행사 전 토요일, 11:00까지 반송하여 도착하는 티켓</td>
									</tr>
									<tr>
										<td rowspan="2">행사전일 : 평일<br>행사일 : 연휴기간/연휴다음날
										</td>
										<td>현장수령</td>
										<td>행사 전 일, 17:00까지</td>
									</tr>
									<tr>
										<td>인편배송</td>
										<td>행사 전 일, 17:00까지 반송하여 도착하는 티켓</td>
									</tr>
									<tr>
										<td rowspan="2">행사전일 : 토요일<br> 행사일 : 연휴기간/연휴다음날
										</td>
										<td>현장수령</td>
										<td>연휴 전 토요일, 17:00까지</td>
									</tr>
									<tr>
										<td>인편배송</td>
										<td>연휴 전 토요일, 11:00까지 반송하여 도착하는 티켓</td>
									</tr>
								</tbody>
							</table>
							<p>단, 롯데콘서트홀 공연의 경우 관람일 하루 전 18:00까지 취소 가능하며 토/일/월 공연의 경우 금요일
								18:00까지 취소 가능합니다.&nbsp;</p>
							<p>&nbsp;</p>
							<p>
								구입하신 예매채널을 통해서만 취소가 가능합니다. (티켓링크에서는 티켓링크에서 예매한 티켓만 취소 가능합니다.) <br>구입하신
								티켓의 일부분 취소, 날짜/시간/좌석등급/좌석위치 변경은 불가능합니다. (관련 상담 : 티켓링크 콜센터
								1588-7890)<br>반송 시, 고객님의 예매번호와 연락처, 반송사유, 환불계좌, 예금주를 적으셔서
								티켓과 동봉해 보내주시면 정확한 처리에<br> 도움이 됩니다.<br>취소 가능 시간이 공연일까지
								3일 이상 남지 않았을 경우 특급우편을 이용하거나 콜센터 1588-7890으로 문의 바랍니다.<br>발송
								받으신 티켓이 분실되거나 훼손되었을 경우 취소 및 변경이 절대 불가합니다.<br>공연상의 문제로 환불을
								받으실 경우 별도의 수수료를 공제하지 않으며, 환불 주체가 티켓링크가 아닌 행사 주최사가 <br>될 수
								있습니다.
							</p>
							<p>
								<strong>취소수수료 안내</strong><br>무통장 입금으로 결제하신 경우, 취소수수료와 송금수수료
								500원을 제외한 나머지 금액이 고객 환불 계좌에 입금됩니다.<br>환불은행, 계좌번호, 예금주는
								본인명의로 정확히 입력 부탁드리며, 취소처리를 접수한 날로부터 3~5일 이내에 환불 받으실 수 있습니다.<br>
								또한, 타인의 계좌를 이용하거나 명의를 도용했을 경우 서비스 이용이 제한될 수 있습니다.<br>신용카드로
								결제 시, 취소수수료 및 우편 발송비를 재승인 후 기존 승인금액을 취소 처리합니다.
							</p>
							<table class="detail_info_tbl mgt15">
								<caption></caption>
								<colgroup>
									<col style="width: 86px;">
									<col style="width: 163px;">
									<col style="width: 180px;">
									<col>
								</colgroup>
								<thead>
									<tr>
										<th rowspan="1" colspan="2" scope="col">행사일</th>
										<th rowspan="1" colspan="1" scope="col">취소수수료 (인터넷, 콜센터)</th>
										<th rowspan="1" colspan="1" scope="col">비고</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th rowspan="5" colspan="1">공연 / 전시</th>
										<td>예매후 7일 이내 / 예매당일</td>
										<td>없음</td>
										<td rowspan="7">예매 당일에 취소하는 경우 이외에는<br>예매수수료가 환불되지
											않음 (약관 28조 의거)<br> <br>예매 후 7일 이내라도 취소 시점이 공연일로부터<br>10일
											이내라면 그에 해당하는 취소수수료가 부과됨<br>(약관 32조 의거)
										</td>
									</tr>
									<tr>
										<td>예매후 8일 ~ 관람일 10일 전</td>
										<td>뮤지컬, 콘서트, 클래식 등 공연권<br>: 장당 4,000원<br> 연극,
											전시 등 입장권 <br> 장당 2,000원<br>* 티켓금액의 10% 이내
										</td>
									</tr>
									<tr>
										<td>관람일 9일 전 ~ 7일 전</td>
										<td>티켓금액의 10%</td>
									</tr>
									<tr>
										<td>관람일 6일 전 ~ 3일 전</td>
										<td>티켓금액의 20%</td>
									</tr>
									<tr>
										<td>관람일 2일 전 ~ 1일 전</td>
										<td>티켓금액의 30%</td>
									</tr>
									<tr>
										<th rowspan="1" colspan="2" scope="row">스포츠</th>
										<td>티켓 구매 금액의 10%</td>
									</tr>
								</tbody>
							</table>




						</div>


						<strong>[티켓 환불 안내]</strong>
						<div class="contents">
							<span class="fbold">신용카드</span> : 취소 시 승인이 취소됩니다.<br> <span
								class="fbold">무통장입금</span> : 인터넷 또는 콜센터(1588-7890)로 접수된 고객님의
							환불계좌로 입금해드립니다.
						</div>


						<strong>[기타 안내]</strong>
						<div class="contents">
							<p>
								<span class="fbold"><strong>입금 계좌 번호</strong></span>
							</p>
							<p>
								예매 완료 페이지에 별도 표시 (기록해두면 환불 시 편리합니다.)<br> <strong></strong>
							</p>
							<p>
								<strong><br></strong>
							</p>
							<p>
								<strong>주의사항</strong> <br>입금 계좌를 분실했을 경우 예매확인/취소 메뉴를 이용해서 각
								예매건에 대한 입금계좌를 확인하시기 바랍니다. <br>1일 1건 이상 무통장 입금으로 티켓을 예매한 경우,
								각각의 예매건에 대한 입금계좌가 다르게 부여됩니다. <br>예매금액과 입금금액이 일치하지 않을 경우 입금
								오류가 발생하여 입금처리 되지 않습니다. 예매 시 예매금액을 꼭 확인하세요. <br>예매당일을 포함하여 그
								다음날 23:59(주말 및 공휴일 포함)까지 지정된 계좌로 입금하셔야만 예매가 유효합니다.
							</p>
							<p>&nbsp;</p>
							<p>
								<span style="line-height: 1.5;">은행에 따라 23:30에 온라인 입금이
									마감되는 경우가 있으니 참고 부탁드립니다.</span> (단, 외환은행, 수협은 22:40에 온라인 입금이 마감됩니다.)
							</p>
							<p>&nbsp;</p>
							<p>
								무통장 입금의 경우 입금 확인 및 고객 확인을 위한 기간이 필요하므로 이용기간이 제한됩니다. 양해 부탁 드립니다.
								<br>예매 당일을 포함하여 그 다음날 23:59(주말 및 공휴일 포함)까지 입금하지 않으실 경우 별도의
								통보 없이 예매가 취소됩니다.
							</p>
						</div>


						<strong>[예매수수료 안내]</strong>
						<div class="contents">
							티켓링크 인터넷, 콜센터를 통한 티켓 예매 시, 소정의 수수료가 부과됩니다. (시행일 2002.3.4)<br>
							<br>
						</div>

					</div>

				</div>
			</div>

			<!-- //배너영역 -->
			<!-- [D] 공연/전시용 윙배너 -->
			<!-- [D] 메인 윙배너와 동일한 동작 -->
			<!-- [D] 스크롤 발생 시 .moving 추가 -->
		</div>
	</div>


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



<style>
.detail_box_bot .detailbox_bot_left .detail_cont .detail_cont>div {
    clear: both;
    padding: 41px 30px 100px;
    border-width: 0 1px 1px;
    border-style: solid;
    border-color: #dedede;
    min-height: 1300px;
    text-align: left;
    font-size: 20px;
	}

</style>



<input type="hidden" id="errorMsg" value="">
<input type="hidden" id="productClassCode" value="CONCERT">
<input type="hidden" id="productTypeCode" value="">
<input type="hidden" id="productServiceType" value="TKL">
<input type="hidden" id="isValidProduct" value="true">
<input type="hidden" id="reviewExposureYn" value="Y">

<script type="text/javascript" src="/resources/js/number.js?20170831"></script>
<script type="text/javascript" src="/resources/js/pagingJs.js"></script>
<!-- <script type="text/javascript" src="/resources/js/seatingchart-old/userTicketing/userDetail-0.0.0.min.js"></script> -->
<script type="text/javascript" src="/resources/js/userDetail-0.0.3.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/coupon/couponCodeType.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/coupon/couponTemplate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/coupon/coupon.js"></script> 

<script type="text/javascript">
	//<![CDATA[
	
	var RESERVE_DATA = {
		SELECTED_DATE: "",
		SELECTED_ROUND: "",
		SELECTED_SCHEDULE: ""
	};

	var URL_DATA = {
		SELECTED_DATE: document.URL.split("productDate=")[1] != null ? document.URL.split("productDate=")[1].split("&")[0] : "",
		SELECTED_ROUND: document.URL.split("productRound=")[1] != null ? document.URL.split("productRound=")[1].split("&")[0] : ""
	};

	days = ["일","월","화","수","목","금","토"];
	<!-- 달력 -->
	$.fn.datepicker.dates['kr'] = {
			days: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일"],
			daysShort: days,
			daysMin: days,
			months: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
			monthsShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
		    today: "Today",
		    clear: "Clear",
		    titleFormat: "yyyy.mm", /* Leverages same syntax as 'format' */
		    weekStart: 0
	};
	
	
	var selectDay;
	
	
	$(document).ready(function () {
		/*-------------------------------희수 코딩 영역--------------------------------*/
		//달력
		
		$('#calendar').datepicker({
			format: "yyyy.mm.dd",
			startDate: '${musical.getStartDate()}',
			endDate: '${musical.getEndDate()}',
			calendarWeeks: false,
            todayHighlight: true,
            daysOfWeekDisabled : <%=list%>,
			language: 'kr'
		}).on('changeDate',function(e){
			var today = new Date();	//오늘 날짜
			var date = new Date(e.format());
			if(today>date){
				alert("지난 날짜입니다. 다시 선택해주세요.");
				return;
			}
			var day = date.getDay();
			var timeList;
			if(day==0){
				timeList = '<%=dayTime.get("일")%>';
			}
			else if(day==1){
				timeList = '<%=dayTime.get("월")%>';
			}
			else if(day==2){
				timeList = '<%=dayTime.get("화")%>';
			}
			else if(day==3){
				timeList = '<%=dayTime.get("수")%>';		
			}
			else if(day==4){
				timeList = '<%=dayTime.get("목")%>';
			}
			else if(day==5){
				timeList = '<%=dayTime.get("금")%>';
			}
			else if(day==6){
				timeList = '<%=dayTime.get("토")%>';
			}
			
			$("#watchTime").children().remove();
			
			var times = timeList.split(",")
			for(var i=0;i<times.length;i++){
				var time = times[i].split(":");
				var html = "<option value='"+times[i]+"'>"+time[0]+"시 "+time[1]+"분</option>";
				$("#watchTime").append(html);				
			}		
		});
		
		$("#wait").on("click",()=>{
			if(${memberLoggedIn!=null}){
				location.href = "${pageContext.request.contextPath}/musical/insertWait.do?musicalId=${musical.getId()}";
			}
			else{
				alert("로그인이 필요합니다.");
			}
		});
	
		/* $("#book").on("click",()=>{
			if(${memberLoggedIn==null}){
				alert("로그인이 필요합니다.");
				break;
			}
			//if()//날짜나 회차가 선택되지 않은 경우 
			location.href = "${pageContext.request.contextPath}/member/bookticket.do?play=${musical}";
			
		}); */
		
		/*-------------------------------희수 코딩 영역--------------------------------*/
	
	});

	function initCleanReserveInfo () {
		var contentDiv = $("div.ly_clean_reserve");
		$(".tag_clean").click(function () {
			contentDiv.removeClass("blind");
		});
		$("#btnCloseCleanReserveInfo").click(function () {
			contentDiv.addClass("blind");
		});
	}

	function setLongTitle () {
		var titleWidth = $("div.title")[0].offsetWidth;
		var titleBoxWidth = $("div.bx_title")[0].offsetWidth;
		var popupWidth = $("div.ly_clean_reserve")[0].offsetWidth;
		var groupTagWidth = $("div.group_tag")[0].offsetWidth;

		var isLongTitle = titleWidth === titleBoxWidth;     // 제목 2줄 이상
		var isShortTitle = titleWidth < (popupWidth + 5);   // 짧은제목

		if (isLongTitle) {
			$("div.title").addClass("long_case");
			$("div.ly_clean_reserve").css("display", "block").css("left", "5px");
		}
		if (isShortTitle) {
			var pxLeft = (5 - titleWidth + groupTagWidth) + "px";
			$("div.ly_clean_reserve").css("left", pxLeft).css("right", "");
		}
	}


	function getProductDatesByProductId () {
		var postData = $("#productId").val();
		$.ajax({
			method: "POST",
			url: "/api/product/dates",
			dataType: "json",
			contentType: 'application/json',
			data: JSON.stringify(postData),
			success: function (result) {
				setMonthButton(result.data);
				ne.tkl.selectSchedule.updateDates(result.data);
				if (URL_DATA.SELECTED_DATE != "") {
					ne.tkl.selectSchedule.setDate(URL_DATA.SELECTED_DATE);
					URL_DATA.SELECTED_DATE = "";
				}
			},
			error: function () {
				//alert("오류가 발생하였습니다. 관리자에게 문의하세요");
			}
		});
	}

	function setMonthButton (dateList) {
		if (dateList.length > 0) {
			if (dateList[0].productDate.split('.')[1] == dateList[dateList.length - 1].productDate.split('.')[1]) {
				ne.tkl.selectSchedule.disableNext();
				ne.tkl.selectSchedule.disablePrev();
			}
		} else {
			ne.tkl.selectSchedule.disableNext();
			ne.tkl.selectSchedule.disablePrev();
		}
	}

	function getProductRound (productDate) {
		var jsonObject = {productId: $("#productId").val(), productDate: productDate};

		$.ajax({
			method: "POST",
			url: "/api/product/round",
			dataType: "json",
			contentType: 'application/json',
			data: JSON.stringify(jsonObject),
			success: function (result) {
				var message = result.result.message;
				if (message == 'success') {
					var result = result.data;
					$("#product_round_select_list").html('<li><a href="javascript:;">======= 회차 선택 =======</a></li>');
					for (var i = 0; i < result.length; i++) {
						var roundInfo = parseRoundTime(result[i]);
						$("#product_round_select_list").append('<li><a href="javascript:;" onclick="selectScheduleItem(this,\'' +
							roundInfo.productDate + '\', \'' + roundInfo.productRound + '\', \'' + roundInfo.scheduleId + '\')" >' + roundInfo.time + '</a></li>');
					}
					if (URL_DATA.SELECTED_ROUND != "") {
						$("#product_round_select_list").find("li").eq(URL_DATA.SELECTED_ROUND).find("a").click();
						URL_DATA.SELECTED_ROUND = "";
					}

					selectDefaultRounds(result);
				} else {
					//alert("오류가 발생하였습니다. 관리자에게 문의하세요");
				}
			}
		});
	}

	function selectDefaultRounds (data) {
		if (data.length === 1) {          // 예매 가능한 회차가 1개일 때
			$("#product_round_select_list li a").eq(1).click();
		} else {
			$("#selectboxDefaultOption").click();
		}
	}

	function selectScheduleItem (obj, productDate, productRound, scheduleId) {
		$('#selectboxDefaultOption').text($(obj).html());

		//회차, 스케쥴 아이디 전역 변수값 설정
		RESERVE_DATA.SELECTED_ROUND = productRound;
		RESERVE_DATA.SELECTED_SCHEDULE = scheduleId;

		$("#product_round_select_list").css("display", "none");
		if (isSeatProduct($("#productClassCode").val())) {
			getGradeConcert(scheduleId);
		} else {
			getGradeExhibition(scheduleId);
		}
	}

	function isSeatProduct (productClassCode) {
		if (productClassCode === 'EXHIBITION') {
			return false;
		}
		if (productClassCode === 'ADVANCE_TICKET') {
			return false;
		}
		return productClassCode !== 'SPORTS_ZONE';
	}

	function getGradeConcert (scheduleId) {

		$.ajax({
			url: "/api/product/schedules/" + scheduleId + "/grades",
			method: "get",
			type: "json",
			contentType: "application/json",
			data: "",
			timeout: 5000,
			async: false,
			success: function (result) {
				makeGradeList(result.data);
			}
		});
	}

	function getGradeExhibition (scheduleId) {
		var productId = $("#productId").val();
		$.ajax({
			method: "POST",
			url: "/api/reserve/exhibition/grade/" + productId,
			dataType: "json",
			contentType: 'application/json',
			data: JSON.stringify(scheduleId),
			success: function (result) {
				makeGradeList(result.data);
			},
			error: function () {
				//alert("오류가 발생하였습니다. 관리자에게 문의하세요");
			}
		});
	}

	function makeGradeList (scheduleGrades) {
		var gradeList = $('#seatingInfoPerRound').html('');

		var totalCnt = 0;
		if (scheduleGrades.length > 0) {
			for (var i = 0; i < scheduleGrades.length; i++) {
				totalCnt += scheduleGrades[i].remainCnt;
			}
			if (totalCnt <= 0) {
				var contents = "<li> 전체 <span class='num'>매진</span></li>";
				makeReserveBtnToSoldOutBtn();
			} else {
				var contents = "<li> 전체 <span class='num'>" + totalCnt + "</span>석</li>";
			}

			gradeList.append(contents);

			for (var i = 0; i < scheduleGrades.length; i++) {
				if (scheduleGrades[i].remainCnt <= 0) {
					contents = "<li>" + scheduleGrades[i].name + " <span class='num'>매진</span></li>";
				} else {
					contents = "<li>" + scheduleGrades[i].name + " <span class='num'>" + scheduleGrades[i].remainCnt + "</span>석</li>";
				}
				gradeList.append(contents);
			}
		} else {
			var contents = "<li> 전체 <span class='num'>매진</span></li>";
			makeReserveBtnToSoldOutBtn();
			gradeList.append(contents);
		}
	}

	function makeReserveBtnToSoldOutBtn () {
		var reserveButton = $("#reserve_btn");
		reserveButton.removeClass("s_after");
		reserveButton.attr("onclick", "");
		reserveButton.unbind("click");
		reserveButton.bind("click", function () {
			alert("매진된 상품입니다.");
		});
	}

	function makeSoldOutBtnToReserveBtn () {
		var reserveButton = $("#reserve_btn");
		reserveButton.addClass("s_after");
		reserveButton.attr("onclick", "");
		reserveButton.unbind("click");
		reserveButton.bind("click", function () {
			popReserveDialog();
		});
	}

	function parseRoundTime (data) {
		var date = new Date(data.startDatetime),
			parsedData = {},
			hour,
			min;
		parsedData.productRound = data.productRound;
		parsedData.productDate = data.startDate;
		parsedData.time = data.startTime;
		parsedData.scheduleId = data.scheduleId;
		parsedData.logicalPlanId = data.logicalPlanId;
		return parsedData;
	}


	function selectTap (obj) {
		
		$(".tabs-Num").css("display","none");
		
		if ($(obj).attr('id') == "detailTop") {
			$("#tabs-3").css("display","block");
		} else if ($(obj).attr('id') == "reviewTap") {
			$("#tabs-2").css("display","block");
		} else if ($(obj).attr('id') == "placeTap") {
			$("#tabs-1").css("display","block");
		} else if ($(obj).attr('id') == "cancelTap") {
			$("#tabs-4").css("display","block");
		}
		
		


		$("ul.detail_tab li").removeClass("on");
		$(obj).parent().addClass("on");

	}

	function makeTap () {
		$("#tabs").tabs();
	}

	

	function authorizedFanclubCallback () {
		window.open('/member/fanclub/auth?productId=' + 29652, '', 'width=500, height=500');
	}

	function authorizeFanclub () {

		if (!memberCommonCheck(location.href, 'authorizedFanclubCallback')) {
			return;
		}
	}

	function onClickSelect (obj) {
		if ($("#product_round_select_list li").length > 0) {
			$("#product_round_select_list").css("display", "block");
		} else {
			alert("날짜를 먼저 선택해주세요");
		}
	}


	function popReserveDialog () {

		if (false) {
			alert('팬클럽/멤버십 인증 후 예매가 가능합니다.');
			return;
		}

		var now = new Date();
		var year = now.getFullYear();
		var mon = (now.getMonth() + 1) > 9 ? '' + (now.getMonth() + 1) : '0' + (now.getMonth() + 1);
		var day = now.getDate() > 9 ? '' + now.getDate() : '0' + now.getDate();

		var today = year + '.' + mon + '.' + day;
		if (RESERVE_DATA.SELECTED_DATE == today) {
			alert('당일공연은 예매취소/환불/변경이 불가합니다.');
		}

		var url = "http://" + location.hostname + "/product/" + $('#productId').val() + "?productDate=" + RESERVE_DATA.SELECTED_DATE + "&scheduleId=" + RESERVE_DATA.SELECTED_SCHEDULE;

		if (!memberCommonCheck(url, 'callBackPopReserveDialog')) {
			return;
		}

		AEC_F_D('29652', 'i', 1);
	}

	function callBackPopReserveDialog (url) {

		if ($("#isValidProduct").val() == 'true') {

			if ("false" == "true") {
				if (!isAdultMember()) {
					return;
				}
			}
		}

		if (/.*\/product\/\d*.*/.test(url)) {
			url = "/reserve/product/" + $('#productId').val() + "?productDate=" + RESERVE_DATA.SELECTED_DATE + "&scheduleId=" + RESERVE_DATA.SELECTED_SCHEDULE;
		}

		var hight = 980;
		var scrollbarFlag = false;

		if (hight > screen.height) {
			scrollbarFlag = true;
		}

		alertBeforeReserve();
		if ("true" != "true") {
			return;
		}
		popupwindow(url, '티켓링크', 990, 890, scrollbarFlag ? 'yes' : 'no');
	}

	function isAdultMember () {

		var isAdult = false;

		$.ajax({
			cache: false,
			async: false,
			dataType: "json",
			url: "/adult/isAdultMember",
			success: function (resultData) {

				if (resultData.code == '1') {
					alert('오류가 발생했습니다');
					return;
				}

				if (resultData.result == null) {
					alert('로그인이 필요한 상품입니다');
					return;
				}

				if (resultData.result == 'Y') {
					isAdult = true;
					return;
				} else {
					adultConfirmControll(document.URL);
				}
			},
			error: function (result) {
				alert("오류가 발생하였습니다");
			}
		});

		return isAdult;
	}

	function adultConfirmControll (nextPage) {
		if (confirm("성인인증이 필요한 상품입니다. 성인인증 페이지로 이동하시겠습니까?")) {
			document.location.href = "/adult/confirm?nextPage=" + nextPage;
		}
	}

	function createCouponLayerTemplate (couponList) {
		var template = "";
		couponList.forEach(function (coupon) {
			var discountObj = couponTemplate.getCouponDiscountInfoObj(coupon.couponDiscountAmount, coupon.couponDiscountAmountCode);

			template += "<tr><td class='tl'>" + coupon.couponName + "</td>";
			template += "<td>" + discountObj.text + "</td>";
			template += "<td class='tl'><ul>";
			template += couponTemplate.couponDetailInfoinLiTag(coupon);
			template += "</ul></td>";

			if (coupon.possibleIssue) {
				template += "<td><a href='javascript:;' onclick='couponIssue(" + coupon.couponId + ", this)' class='link_green fbold'>쿠폰받기</a></td>";
			} else {
				template += "<td>발급완료</td>";
			}

			template += "</tr>";
		});

		return template;
	}

	function popupClipReserveCallback () {

		$.ajax({
			url: '/product/validation/member-info',
			method: 'POST',
			contentType: 'application/json',
			success: function (resultData) {
				memberInfo = resultData.result;

				if (memberInfo == null) {
					alert('로그인 후 이용가능합니다.');
					return;
				}

				var query = '?';
				query += 'memberId=' + memberInfo.memberId;
				query += '&memberTypeCode=' + memberInfo.memberTypeCode;
				query += '&memberName=' + memberInfo.memberName;
				query += '&memberNo=' + memberInfo.memberNo;
				query += '&productId=' + $('#productId').val();

				var hight = 980;
				var scrollbarFlag = false;

				if (hight > screen.height) {
					scrollbarFlag = true;
				}

				var url = 'http://alpha.napi.ticketlink.co.kr/clipservice/gw/reserve.nhn' + query;
				
				url = 'http://napi.ticketlink.co.kr/clipservice/gw/reserve.nhn' + query;
				
				

				callBackPopReserveDialog(url);
				AEC_F_D('29652', 'i', 1);
			},
			error: function () {
				alert('현재 서비스가 원할하지 않습니다.');
				return;
			}
		});
	}

	function popupClipReserve () {

		if (!memberCommonCheck(location.href, "popupClipReserveCallback")) {
			return;
		}
	}

	function popupwindow (url, title, w, h, sc) {
		var left = (screen.width / 2) - (w / 2);
		var top = (screen.height / 2) - (h / 2);
		return window.open(url, title, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=' + sc + ', resizable=no, copyhistory=no, width=' + w + ', height=' + h + ', top=' + top + ', left=' + left);
	}

	function popupBoardRule () {
		var url = "/rule/board/popup";
		var title = "티켓링크";
		popupwindow(url, title, 500, 642, 'no');
	}

	function setProductTap () {
		var tab = document.URL.split("#")[1];
		if (tab == "review") {
			$("#reviewTap").click();
		} else if (tab == "inquiry") {
			$("#inquiryTap").click();
		} else if (tab == "place") {
			$("#placeTap").click();
		}
	}


	function checkTextLength (obj) {
		var maxLength = 100;
		if (obj.value.length > maxLength) {
			obj.value = obj.obj.substring(0, maxLength);
		}
	}

	function setTextareaMax (e) {
		if (!document.createElement('textarea').maxLength) {
			var m = e.attributes.maxLength.value;
			e.onkeypress = function () {
				if (this.value.length > m) {
					this.value = this.value.substring(0, m);
					return false;
				}
			};
			e.onkeyup = function () {
				if (this.value.length > m) {
					alert(m + "자까지 입력가능합니다.");
					this.value = this.value.substring(0, m);
					return false;
				}
			};
			e.onpaste = function () {
				if (this.value.length > m) {
					this.value = this.value.substring(0, m);
					return false;
				}
			};
			e.onchange = function () {
				if (this.value.length > m) {
					this.value = this.value.substring(0, m);
					alert(m + "자까지 입력가능합니다.");
					return false;
				}
			};
		}
	}

	function alertBeforeReserve () {
		if ("false" == "true") {
			alert("");
		}
	}

	function couponIssue (couponId, domObj) {
		if (!memberCommonCheck("/product/" + "29652")) {
			return;
		}

		realCouponIssue(couponId, function () {
			alert("쿠폰이 발급되었습니다.");

			$(domObj).parents("td").html("발급완료");
		});
	}
		//]]>
	
	

</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
