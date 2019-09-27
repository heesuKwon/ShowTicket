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
var srchFlag = false;
var srchOFlag = false;

$(function(){
     getList(cpage);
     cpage++;
     
     $("#searchBtn").on("click", function(){
  		srchFlag = true;
  		srchOFlag = false;
  		cpage=2;
 		getSearchList(1);
 	});

});
 
$(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
     if($(window).scrollTop() > $(document).height() - $(window).height()-100){
    	 
    	 if(srchFlag==true){
    		 getSearchList(cpage);
	    	 cpage++;
    	 }
    	 else if(srchFlag==false){
	          getList(cpage);
	          cpage++;
    	 }
     } 
});

function getSearchList(cpage){

	var cate = $("#category-musical").val();
	var srchKeyword = $("#searchKeyword").val();
	var param= {
			cpage : cpage,
			cate : cate,
			srchKeyword : srchKeyword
	}
	   $.ajax({
	        url : '${pageContext.request.contextPath}/musical/musicalSearch.do',
	        data : param,
	        success : function(data) {
	            var html = "";
	       
	         	if(data.length==0 && srchOFlag == false){
	         		$("#musicalListAll").css("display", "none");
	         		$("#srchEmpty").css("display", "block");
	        		return;
	        	}
	       
	         	if(data.length>0){
	         		$("#musicalListAll").css("display", "block");
	         		$("#srchEmpty").css("display", "none");
	         		srchOFlag = true;
	         		
	         		
	            for(var i=0; i<data.length; i++){
	                		
		            html+="<li><a href='${pageContext.request.contextPath}/musical/musicalDetail.do?musicalId="+data[i].mt20id+"'>";
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
	            
	            if (cpage==1){  //페이지가 1이 아닐경우 데이터를 붙힌다.
	                $("#musicalListAll").html(html); 
	            }else{
	            	$("#musicalListAll").append(html);
	            }
	            
	       },error:function(e){
	           if(e.status==300){
	               alert("데이터를 가져오는데 실패하였습니다.");
	         	};
			}
	   });
	
};
 
function getList(cpage){
    $.ajax({
        url : '${pageContext.request.contextPath}/musical/musicalAjax.do',
        data : {"cpage" : cpage},
        success : function(data) {
        	
        	if(srchOFlag=false){
        		
        	}

            var html = "";
            
            if (cpage==1){ //페이지가 1일경우에만 id가 list인 html을 비운다.
                  $("#musicalListAll").html(""); 
            }
            
            
                if(data.length>0){
                	
                	srchOFlag = true;
                	
                	for(var i=0; i<data.length; i++){
                		
	                	html+="<li><a href='${pageContext.request.contextPath}/musical/musicalDetail.do?musicalId="+data[i].mt20id+"'>";
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
            
            if (cpage==1){  //페이지가 1이 아닐경우 데이터를 붙힌다.
                $("#musicalListAll").html(html); 
            }else{
            	$("#musicalListAll").append(html); 
            }
       },error:function(e){
           if(e.status==300){
               alert("데이터를 가져오는데 실패하였습니다.");
           };
       	}
    }); 
};

</script>

<!-- AceClick WebSite Gathering Script End V0.91.20190304 -->
<noscript>
	<img src='http://gtc9.acecounter.com:8080/?uid=BS2A39876863068&je=n&'
		border='0' width='0' height='0' alt=''>
</noscript>

<!-- AceCounter Log Gathering Script End -->


<!-- Facebook Pixel Code -->

<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=1028038810619064&ev=PageView&noscript=1" />
</noscript>
<!-- End Facebook Pixel Code -->

<!-- NHN AD MORE Script -->

<script async type="text/javascript" src="//cro.myshp.us/resources/common/js/more-common.js"></script>

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
<script async type="text/javascript"
	src="//cro.myshp.us/resources/common/js/more-common.js"></script>

<script type="text/javascript">
var index=0;
/* window.onload = function(){
	slideShow();
	$(".submain_topban").hover($(".arrow").css("visibility","visible"))
} */
function slideShow(){
	var i;
	var x = document.getElementsByClassName("mySlides");
	for(i=0; i<x.length;i++){
		x[i].style.display="none";
	}
	index++;
	if($("#prev").click()){
		index+1;
	}
	else if($("#next").click()){
		index-2;
	}
		
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


<div id="wrap" class="subwrap">

	<div id="container" class="submain_front">

		<div class="inner">
			<h2 class="blind">공연</h2>
			<!-- [D]  1 depth의 값을 h2로 뿌려줍니다 -->
			<div class="top_area"
				style="padding-bottom: 0px; margin-bottom: 39px;">
				<h2 class="title" style="margin-top: 39px; display: inline-block">베스트
					뮤지컬</h2>
				<img src="/showticket/resources/images/plus.png" alt="더보기"
					style="width: 35px; height: 35px;">
				<div class="top_area">
					<div class="submain_topban">
						<div class="submain_goods" style="width: 990px; margin: auto;">
							<img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_7/공연전시_메인_990x280_드라큘라.jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_3/공연전시_메인_990x280_친정엄마_v3.jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_7/공연전시_메인_990x280_사랑의가객_1.jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_5/공연전시_메인_990x280_다윈영의-악의기원.jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_7/공연전시_메인_990x280_에드거앨런포.jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_3/공연전시_메인_990x280_정글라이프.jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_7/공연전시_메인_990x280_NEW-달을품은슈퍼맨.jpg"
								width="990" height="280"> <img class="mySlides"
								src="//image.toast.com/aaaaab/ticketlink/TKL_3/공연전시_메인_990x280_시티오브엔젤.jpg"
								width="990" height="280">
						</div>
						<button class="arrow" id="prev">&lt;</button>
						<button class="arrow" id="next">&gt;</button>
					</div>
				</div>
			</div>

			<!-- [D] 전시메인의 경우 .exhibition 추가입니다. -->
			<div class="attention_wrap concert" style="margin-top: 0px;">
				<div class="header">
					<h2 class="small-title"
						style="margin-top: 0px; display: inline-block">최신 뮤지컬</h2>
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
								<img src="//image.toast.com/aaaaab/ticketlink/TKL_7/ori0806.jpg"
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
					<h2 class="title beforeSearch">전체 뮤지컬</h2>
					<div class="searchFrm">
						<select name="searchCategory" id="category-musical">
							<option value="searchAll">전체</option>
							<option value="searchTitle">제목</option>
							<option value="searchActor">배우</option>
						</select> <input type="text" class="form-control form-control-lg"
							id="searchKeyword">
						<button type="button" class="btn btn-primary btn-color btn-sm"
							id="searchBtn">검색</button>
					</div>


					<div class="orderWrap">
						<select name="selectOrder" id="order-musical">
							<option value="byRank">랭킹순</option>
							<option value="byDate">최신순</option>
							<option value="byStar">별점순</option>
						</select>
					</div>
				</div>

	       	<div class="searchContainer">
		        <ul id="musicalListAll" class="goods_list" style="clear:both;">
		                  <c:forEach items="${musicalList}" var="map">
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

					<div id="srchEmpty">검색결과가 없습니다.</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
<script type="text/javascript"
	src="/resources/js/rollingBigBanner-58d236f0d65bde4d59ea071b32b5c0ca.js"></script>
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

