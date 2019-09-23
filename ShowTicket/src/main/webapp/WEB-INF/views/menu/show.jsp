<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/musical_show.css">

<script>
var cpage = 2;
 
$(function(){
     getList(cpage);
     cpage++;
});
 
$(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
     if($(window).scrollTop() > $(document).height() - $(window).height()-100){
          getList(cpage);
           cpage++;   
     } 
});
 
function getList(page){
	
    $.ajax({
        url : '${pageContext.request.contextPath}/show/showAjax.do',
        data : {"cpage" : cpage},
        success : function(data) {

            var html = "";
            
            if (cpage==1){ //페이지가 1일경우에만 id가 list인 html을 비운다.
                  $("#showListAll").html(""); 
            }
           
            
                if(data.length>0){
                	for(var i=0; i<data.length; i++){
                		
	                	html+="<li><a href='http://www.ticketlink.co.kr/product/29767'>";
	                	html+="<p><img src="+data[i].poster+" alt=''></p>";
	                	html+="<div class='list_info'>";
	                	html+="<strong class='elp'>"+data[i].prfnm+"</strong>";
	                	html+="<dl>";
	                	html+="<dt>기간</dt>";
	                	html+="<dd>"+data[i].prfpdfrom+" ~ "+data[i].prfpdto+"</dd>";
	                	html+="<dt>장소</dt>";
	                	html+="<dd>"+data[i].fcltynm+"</dd>";
	                	html+="</dl>";
	                	html+="</div>";
	                	html+="</a>";
	                	html+="</li>";
                	}
                }
            
            html = html.replace(/%20/gi, " ");
            
            /*if (page==1){  //페이지가 1이 아닐경우 데이터를 붙힌다.
                $("#showListAll").html(html); 
            }else{*/
            	$("#showListAll").append(html); 
            /*}*/
       },error:function(e){
           if(e.status==300){
               alert("데이터를 가져오는데 실패하였습니다.");
           };
       }
    }); 
}


</script>
<script language='javascript'>
	var _AceGID = (function () {
		var Inf = ['gtc9.acecounter.com', '8080', 'BS2A39876863068', 'AW', '0', 'NaPm,Ncisy', 'ALL', '0'];
		var _CI = (!_AceGID) ? [] : _AceGID.val;
		var _N = 0;
		var _T = new Image(0, 0);
		if (_CI.join('.').indexOf(Inf[3]) < 0) {
			_T.src = (location.protocol == "https:" ? "https://" + Inf[0] : "http://" + Inf[0] + ":" + Inf[1]) + '/?cookie';
			_CI.push(Inf);
			_N = _CI.length;
		}
		return {o: _N, val: _CI};
	})();
	var _AceCounter = (function () {
		var G = _AceGID;
		var _sc = document.createElement('script');
		var _sm = document.getElementsByTagName('script')[0];
		if (G.o != 0) {
			var _A = G.val[G.o - 1];
			var _G = (_A[0]).substr(0, _A[0].indexOf('.'));
			var _C = (_A[7] != '0') ? (_A[2]) : _A[3];
			var _U = (_A[5]).replace(/\,/g, '_');
			_sc.src = (location.protocol.indexOf('http') == 0 ? location.protocol : 'http:') + '//cr.acecounter.com/Web/AceCounter_' + _C + '.js?gc=' + _A[2] + '&py=' + _A[4] + '&gd=' + _G + '&gp=' + _A[1] + '&up=' + _U + '&rd=' + (new Date().getTime());
			_sm.parentNode.insertBefore(_sc, _sm);
			return _sc.src;
		}
	})();
</script>
<!-- *) AceClick ê³µíµ ë¶ìì¤í¬ë¦½í¸ -->
<script language='javascript' type='text/javascript'>
	if (document.cookie.indexOf('VIEW_TKLINK_ID') > 0) {
		var mr_id = 'member';	// ë¡ê·¸ì¸ íìíë¨( 'member' ê³ ì ê°)
	}
</script>
<!-- AceClick WebSite Gathering Script V0.91.20190304-->
<script type="text/Javascript">
	if (typeof (AMRS_GC) == 'undefined') {
		var AMRS_O = [];
		var AMRS_CK = new Image();
		var AMRS_GC = 'AG5A4302491053';
		var AMRS_GD = 'mrsg.aceclick.co.kr';
		var AMRS_GP = '8080';
		var AMRS_TI = (new Date()).getTime();
		var AMRS_PR = location.protocol == "https:" ? "https://" + AMRS_GD + ":843" : "http://" + AMRS_GD + ":" + AMRS_GP;
		AMRS_CK.src = AMRS_PR + '/?cookie';
		if (typeof (Array.prototype.push) != 'undefined') {
			AMRS_O.push(AMRS_CK);
		}
		var _AMSC = document.createElement('script');
		var _AMSM = document.getElementsByTagName('script')[0];
		_AMSC.src = (location.protocol.indexOf('http') == 0 ? location.protocol : 'http:') + '//cr.acecounter.com/aceclick.js?rt=' + AMRS_TI;
		_AMSM.parentNode.insertBefore(_AMSC, _AMSM);
	}
</script>

<noscript><img src='http://gtc9.acecounter.com:8080/?uid=BS2A39876863068&je=n&' border='0' width='0' height='0' alt=''></noscript>


<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=1028038810619064&ev=PageView&noscript=1" />
</noscript>
<!-- End Facebook Pixel Code -->

<!-- NHN AD MORE Script -->
<script>
	var _croID = '5d148869e4b0adaa9beaa9d1';

	function getMoreRecommend (e, n) {
		"undefined" != typeof globalCRO ? new globalCRO.MoreRecommendData(e, n) :
			("undefined" == typeof gCroRCData && (window.gCroRCData = new Array), gCroRCData.push({config: e, callback: n}))
	}

	function createMoreRCView (e) {
		"undefined" != typeof globalCRO ? new globalCRO.MoreRecommendView(e) :
			("undefined" == typeof gCroRCV && (window.gCroRCV = new Array), gCroRCV.push({config: e}))
	}

	function mcroPushEvent (n) {
		"undefined" != typeof globalCRO ? globalCRO.sendEvent(n) :
			("undefined" == typeof gCro && (window.gCro = new Array), gCro.push(n))
	}

	function _cro_initialize () {
		window.globalCRO = new MCro, globalCRO.jsInit(_croID)
	}
</script>
<script async type="text/javascript" src="//cro.myshp.us/resources/common/js/more-common.js"></script>



<!-- End Facebook Pixel Code -->

<!-- NHN AD MORE Script -->

<!-- End NHN AD MORE Script -->
<script type="text/javascript">
var index=0;
window.onload = function(){
	slideShow();
}
function slideShow(){
	var i;
	var x = document.getElementsByClassName("mySlides");
	for(i=0; i<x.length;i++){
		x[i].style.display="none";
	}
	index++;
	if(index>x.length){
		index=1;
	}
	x[index-1].style.display = "block";
	setTimeout(slideShow,4000);
	
}
</script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/contents.css">
<style type="text/css">
span.dummy_bg.on {
	display: none
}

ul.lst_thumb li.on::before {
	position: absolute;
	top: -1px;
	left: -1px;
	right: -1px;
	bottom: -1px;
	border: 2px solid #40b409;
	content: ''
}
</style>

</head>

<body>
	<div id="wrap" class="subwrap">

		<div id="container" class="submain_front">

			<div class="inner">
				<h2 class="blind">공연</h2>
				<!-- [D]  1 depth의 값을 h2로 뿌려줍니다 -->

				<ul id="genreNav" class="nav nav-pills nav-justified">
					<li class="nav-item"><a class="nav-link select nav-font"
						href="#">전체</a></li>
					<li class="nav-item"><a class="nav-link nav-font default"
						href="#">로맨틱</a></li>
					<li class="nav-item"><a class="nav-link nav-font default"
						href="#">코미디</a></li>
					<li class="nav-item"><a class="nav-link nav-font default"
						href="#">드라마</a></li>
					<li class="nav-item"><a class="nav-link nav-font default"
						href="#">스릴러</a></li>
				</ul>

				<div class="top_area"
					style="padding-bottom: 0px; margin-bottom: 39px;">
					<h2 class="title" style="margin-top: 39px; display: inline-block">베스트
						연극</h2>
					<img src="/showticket/resources/images/plus.png" alt="더보기"
						style="width: 35px; height: 35px;">
					<div class="submain_topban">
						<div class="submain_goods" style="width: 990px; margin: auto;">
							<img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_3/[제작용]공연전시_메인_990x280_발칙한-로맨스(3).jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_8/990x280_BEA.jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_4/990x280_k.jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_3/990x280_l.jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_4/990x280_T.jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_8/[제작용]공연전시_메인_990x280.jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_7/공연전시_메인_990x280_고스트.jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_6/[제작용]공연전시_메인_990x280_연극장수상회.jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_7/공연메인빅배너_첫사랑-로맨스-연극-[사춘기메들리](1).jpg"
								width="990" height="280">
						</div>
					</div>
				</div>

				<!-- [D] 전시메인의 경우 .exhibition 추가입니다. -->
				<div class="attention_wrap concert" style="margin-top: 0px;">
					<div class="header">
						<h2 class="small-title"
							style="margin-top: 0px; display: inline-block">최신 연극</h2>
						<img src="/showticket/resources/images/plus.png" alt="더보기"
							style="width: 35px; height: 35px;">
					</div>
					<div class="attention">
						<ul style="width: 1880px">
							<!-- [D] li 1개 가로 사이즈 178+여백10=188 x li 갯수(10) = 1880px 인라인으로 박아줍니다. -->

							<li class="SHOW_ISSUE_V1_FIRST"><a
								href="http://www.ticketlink.co.kr/bridge/498"> <span
									class="ribbon 
                                    ">HIDE
								</span> <img
									src="//image.toast.com/aaaaab/ticketlink/TKL_3/mom_main_0805.jpg"
									alt="">
									<p>
										<em>제목등 소개 들어갈곳</em>
									</p>
							</a></li>

							<li class="SHOW_ISSUE_V1_FIRST"><a
								href="http://www.ticketlink.co.kr/bridge/496"> <span
									class="ribbon 
                                    
                                    
                                    
                                    ">HIDE
								</span> <img
									src="//image.toast.com/aaaaab/ticketlink/TKL_4/south0730.jpg"
									alt="">
									<p>
										<em>크러쉬/우원재/그레이</em>
									</p>
							</a></li>

							<li class="SHOW_ISSUE_V1_FIRST"><a
								href="http://www.ticketlink.co.kr/product/29544"> <span
									class="ribbon 
                                    
                                    
                                        label level2
                                    
                                    
                                    ">SOLELY
								</span> <img
									src="//image.toast.com/aaaaab/ticketlink/TKL_8/zan_main0820.jpg"
									alt="">
									<p>
										<em>얼리버드 티켓 판매중</em>
									</p>
							</a></li>

							<li class="SHOW_ISSUE_V1_FIRST"><a
								href="http://www.ticketlink.co.kr/product/29582"> <span
									class="ribbon 
                                    
                                    
                                    
                                    ">HIDE
								</span> <img
									src="//image.toast.com/aaaaab/ticketlink/TKL_10/ju_main0805.jpg"
									alt="">
									<p>
										<em>트로트 여신</em>
									</p>
							</a></li>

							<li class="SHOW_ISSUE_V1_FIRST"><a
								href="http://www.ticketlink.co.kr/product/29703"> <span
									class="ribbon 
                                    
                                    
                                        label level2
                                    
                                    
                                    ">SOLELY
								</span> <img
									src="//image.toast.com/aaaaab/ticketlink/TKL_10/660_980_08221404.jpg"
									alt="">
									<p>
										<em>얼리버드 반값 티켓!</em>
									</p>
							</a></li>


							<li class="SHOW_ISSUE_V1_SECOND"><a
								href="http://www.ticketlink.co.kr/bridge/402"> <span
									class="ribbon 
                                    
                                    
                                    
                                ">HIDE</span>
									<img
									src="//image.toast.com/aaaaab/ticketlink/TKL_9/leemija_0726.jpg"
									alt="">
									<p>
										<em>노래인생 60년 기념</em>
									</p>
							</a></li>

							<li class="SHOW_ISSUE_V1_SECOND"><a
								href="http://www.ticketlink.co.kr/product/29640"> <span
									class="ribbon 
                                    
                                    
                                    
                                ">HIDE</span>
									<img
									src="//image.toast.com/aaaaab/ticketlink/TKL_7/ori0806.jpg"
									alt="">
									<p>
										<em>40주년 전국투어 콘서트</em>
									</p>
							</a></li>

							<li class="SHOW_ISSUE_V1_SECOND"><a
								href="http://www.ticketlink.co.kr/product/29652"> <span
									class="ribbon 
                                    
                                    
                                    
                                ">HIDE</span>
									<img
									src="//image.toast.com/aaaaab/ticketlink/TKL_10/loved0807.jpg"
									alt="">
									<p>
										<em>조기예매 할인</em>
									</p>
							</a></li>

							<li class="SHOW_ISSUE_V1_SECOND"><a
								href="http://www.ticketlink.co.kr/product/28714"> <span
									class="ribbon 
                                    
                                    
                                    
                                ">HIDE</span>
									<img
									src="//image.toast.com/aaaaab/ticketlink/TKL_8/201906141356a.jpg"
									alt="">
									<p>
										<em>광주</br> 상무지구 기분좋은극장
										</em>
									</p>
							</a></li>

							<li class="SHOW_ISSUE_V1_SECOND"><a
								href="http://www.ticketlink.co.kr/product/27881"> <span
									class="ribbon 
                                    
                                    
                                        label level2
                                    
                                    
                                ">SOLELY</span>
									<img
									src="//image.toast.com/aaaaab/ticketlink/TKL_5/hongdo_0412.jpg"
									alt="">
									<p>
										<em> 전북예술회관 대공연장</em>
									</p>
							</a></li>

						</ul>
					</div>
				</div>


				<div class="bottom_area">
					<div class="inner">
						<h2 class="title beforeSearch">전체 연극</h2>
						<div class="searchFrm">
							<select name="searchCategory" id="category-show">
								<option value="searchAll">전체</option>
								<option value="searchTitle">제목</option>
								<option value="searchActor">배우</option>
							</select> <input type="text" class="form-control form-control-lg"
								name="searchKeyword">
							<button type="button" class="btn btn-primary btn-color btn-sm"
								id="searchBtn">검색</button>
						</div>


        	
        	<div class="orderWrap">
	        	<select name="selectOrder" id="order-show">
		        	<option value="byRank">랭킹순</option>
		        	<option value="byDate">최신순</option>
		        	<option value="byStar">별점순</option>
		        </select>
        	</div>
        	
        <ul id="showListAll" class="goods_list" style="clear:both;">
            
            <c:forEach  items="${showList}" var="map">
	                <li><a href="http://www.ticketlink.co.kr/product/29767">
	                    <p><img src="${map.poster }" alt=""></p>
	                    <div class="list_info">
	                        <strong class="elp">${map.prfnm }</strong>
	                        <dl>
	                            <dt>기간</dt>
	                            <dd>${map.prfpdfrom } ~ ${map.prfpdto }</dd>
	                            <dt>장소</dt>
	                            <dd>${map.fcltynm }</dd>
	                        </dl>
	                    </div>
	                </a></li>
	       
            </c:forEach>
                
               
            
        </ul>
    </div>
    <script type="text/javascript" src="/resources/js/rollingBigBanner-58d236f0d65bde4d59ea071b32b5c0ca.js"></script>
    <script type="text/javascript">

		if ($("#noticeList").find("ul> li").length > 4) {
			$(function () {
				var $this = $("#noticeList");
				var scrollTimer;
				$this.hover(function () {
					clearInterval(scrollTimer);
				}, function () {
					scrollTimer = setInterval(function () {
						scrollNoticeList($this);
					}, 5000);
				}).trigger("mouseleave");

				function scrollNoticeList (obj) {
					var $self = obj.find("ul");
					var lineHeight = $self.find("li:first").height();
					$self.animate({
						"marginTop": -lineHeight + "px"
					}, 400, function () {
						$self.css({
							marginTop: 0
						}).find("li:first").appendTo($self);
					})
				}
			})
		}

		function toggleAttention (tabNumber) {
			if (tabNumber == 1) {
				$(".SHOW_ISSUE_V1_FIRST").css("display", "block");
				$(".SHOW_ISSUE_V1_SECOND").css("display", "none");
				$("#attention_tab_1").addClass("on");
				$("#attention_tab_2").removeClass("on");
			} else if (tabNumber == 2) {
				$(".SHOW_ISSUE_V1_FIRST").css("display", "none");
				$(".SHOW_ISSUE_V1_SECOND").css("display", "block");
				$("#attention_tab_1").removeClass("on");
				$("#attention_tab_2").addClass("on");
			}
		}

		$(".rankingItem").hover(function () {
			$(".rankingItem").removeClass("on");
			$(this).addClass("on");
			$(".rangkingImg").attr("src", $(this).data("url"));
			$(".rangkingImgLink").attr("href", "/product/" + $(this).data("productid"));
		});
    </script>
				</div>
			</div>


		</div>
</body>
<script type="text/javascript" src="/resources/js/date.js"></script>
<script type="text/javascript">
	//<![CDATA[

	var page = 1;
	var categoryNum = 10;
	var itemPerPage = 30;
	var isEndOfItem = false;
	var isLoadingNow = false;

	$(document).ready(function () {
		switch (document.URL.split("/concert/")[1]) {
			case "main" :
				categoryNum = 10;
				$("#concertListDiv").text("전체");
				isEndOfItem = true;
				break;
			case "musical" :
				categoryNum = 16;
				$("#concertListDiv").text("뮤지컬");
				break;
			case "theater" :
				categoryNum = 15;
				$("#concertListDiv").text("연극");
				break;
			case "concert" :
				categoryNum = 14;
				$("#concertListDiv").text("콘서트");
				break;
			case "classic" :
				categoryNum = 18;
				$("#concertListDiv").text("클래식/무용");
				break;
			case "daehakro" :
				categoryNum = 84;
				$("#concertListDiv").text("대학로");
				break;
			case "family" :
				categoryNum = 85;
				$("#concertListDiv").text("아동/가족");
				break;
		}
		switch (document.URL.split("/preview/")[1]) {
			case "main" :
				categoryNum = 10;
				$("#concertListDiv").text("전체");
				isEndOfItem = true;
				break;
			case "musical" :
				categoryNum = 16;
				$("#concertListDiv").text("뮤지컬");
				break;
			case "theater" :
				categoryNum = 15;
				$("#concertListDiv").text("연극");
				break;
			case "concert" :
				categoryNum = 14;
				$("#concertListDiv").text("콘서트");
				break;
			case "classic" :
				categoryNum = 18;
				$("#concertListDiv").text("클래식/무용");
				break;
			case "daehakro" :
				categoryNum = 84;
				$("#concertListDiv").text("대학로");
				break;
			case "family" :
				categoryNum = 85;
				$("#concertListDiv").text("아동/가족");
				break;
		}
		switch (document.URL.split("/exhibition/")[1]) {
			case "family" :
				categoryNum = 85;
				$("#concertListDiv").text("아동/가족");
				break;
		}

		if (!isEndOfItem) {
			/*getConcertList(page++, categoryNum, true);
			$(window).scroll(function () {
				if (!isLoadingNow) {
					var maxHeight = $(document).height();
					var currentScroll = $(window).scrollTop() + $(window).height();
					if (maxHeight <= currentScroll + 100) {
						if (!isEndOfItem) {
							isLoadingNow = true;
							getConcertList(page++, categoryNum, false);
						}
					}
				}
			});*/
		}
	});

	function getConcertList (page, varCategoryNum, isCleanProductList) {
		categoryNum = varCategoryNum;
		
		
		
		/*$.ajax({
			dataType: "json",
			async: "false",
			url: "/concert/getConcertList",
			data: {
				page: page,
				categoryId: categoryNum,
				frontExposureYn: 'Y'
			},
			success: function (result) {
				if (result.result == null) {
					alert("오류가 발생했습니다. 관리자에게 문의하세요.");
					isLoadingNow = false;
					return;
				}
				toggleDiv(categoryNum);
				displayConcert(result.result.result, categoryNum, isCleanProductList, isCleanProductList);
				isLoadingNow = false;
			},
			error: function (status) {
				/* alert("오류가 발생했습니다. 관리자에게 문의하세요."); 
				isLoadingNow = false;
			}
		});*/
	}

	function toggleDiv (categoryNum) {
		if (categoryNum == 14 || categoryNum == 15 || categoryNum == 16 || categoryNum == 18 || categoryNum == 84 || categoryNum == 85) {
			$(".genre_main").css("display", "block");
			$("#d2_main").css("display", "inline-block");
			$("#d2_path").css("display", "none");
			$(".bottom_area").css("background", "#dadad9");
		} else {
			$(".genre_main").css("display", "none");
			$("#d2_main").css("display", "none");
			$("#d2_path").css("display", "block");
			$(".bottom_area").css("background", "#F4F4F4");
			$("#d2_path").css("padding-top", "0px");
		}
	}

	function displayConcert (concertList, categoryNum, isCleanProductList) {
		var concertItemUl = $("#goodsList");

		$(".depth3 li").removeClass("on");
		$("#" + categoryNum).addClass("on");
		$(".lastCategoryName").text($("#" + categoryNum + " a").text());

		if (isCleanProductList) {
			concertItemUl.html('');
			isEndOfItem = false;
		}
		for (var i = 0; i < concertList.length; i++) {
			var startDate = getDateFromFormat(concertList[i].startDate, 'yyyy.MM.dd');
			var endDate = getDateFromFormat(concertList[i].endDate, 'yyyy.MM.dd');
			var url = concertList[i].bridgeId == null ? "/product/" + concertList[i].productId : "/bridge/" + concertList[i].bridgeId;
			var displayName = concertList[i].productThumbName ? concertList[i].productThumbName : concertList[i].productName;

			var contents = "<li><a href='" + url + "'>";
			contents += getSpanTag(concertList[i]);
			contents += "<p><img src='" + concertList[i].productImagePath + "' alt='상품 썸네일'></p><div class='list_info'>";
			contents += "<strong class='elp'>" + displayName + "</strong>";
			contents += "<dl><dt>기간</dt><dd>" + startDate + " ~ " + endDate + "</dd><dt>장소</dt><dd>" + concertList[i].hallName + "</dd></dl>";
			contents += "</div></a></li>"
			concertItemUl.append(contents);
		}

		if (concertList.length == 0 && page == 2) {
			var contents = "<li>등록된 상품이 없습니다.</li>";
			concertItemUl.append(contents);
		}

		if (concertList.length != itemPerPage) {
			isEndOfItem = true;
		}
	}

	function getSpanTag (product) {
		if (product.solelySaleCode == "HIDE" && !product.productDiscountText) {
			return "";
		}

		var spanCss = product.productDiscountText ? "flag_vr sale" : "flag_vr level";
		var emCss = (product.productDiscountText && product.solelySaleCode != "HIDE") ? "flag_txt type2" : "flag_txt";
		var flagText = "";

		switch (product.solelySaleCode) {
			case "RELATIVE" :
				flagText += "상대우위";
				break;
			case "SOLELY" :
				flagText += "단독판매";
				break;
			case "ABSOLUTE" :
				flagText += "절대우위";
				break;
			case "CUSTOM" :
				flagText += product.customCodeValue;
				break;
		}

		if (emCss == "flag_txt type2") {
			flagText += "<br/>";
		}

		if (product.productDiscountText) {
			flagText += product.productDiscountText;
		}

		var spanTag = "<span class='" + spanCss + "'><em class='" + emCss + "'>" + flagText + "</em></span>";

		return spanTag;
	}

	//]]>
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>