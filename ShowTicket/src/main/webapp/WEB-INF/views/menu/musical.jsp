<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/musical_show.css">
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
        url : '${pageContext.request.contextPath}/musical/musicalAjax.do',
        data : {"cpage" : cpage},
        success : function(data) {

            var html = "";
            
            if (cpage==1){ //페이지가 1일경우에만 id가 list인 html을 비운다.
                  $("#musicalListAll").html(""); 
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
            	$("#musicalListAll").append(html); 
            /*}*/
       },error:function(e){
           if(e.status==300){
               alert("데이터를 가져오는데 실패하였습니다.");
           };
       }
    }); 
}


</script>

<script type="text/javascript">lcs_do(); </script>
<script type="text/javascript">
	// ë¤ì´ë² íë¦¬ë¯¸ì ë¡ê·¸ (201704 ì¶ê°)
	if (!wcs_add) var wcs_add = {};
	wcs_add["wa"] = "s_765d50fa49a";
	if (!_nasa) var _nasa = {};
	wcs.inflow();
	wcs_do(_nasa);

	// ë¤ì´ë² ë¡ê·¸ (ê¸°ì¡´ë¶í° ì¡´ì¬)
	if (!wcs_add) var wcs_add = {};
	wcs_add["wa"] = "3ce26ce585ae64";
	wcs_do();
</script>
<script type="text/javascript" src="/resources/js/lcslog.js"></script>
<script type="text/javascript">lcs_do(); </script>
<!-- AceCounter Log Gathering Script V.7.5.2013010701 -->
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
<!-- AceClick WebSite Gathering Script End V0.91.20190304 -->
<noscript><img src='http://gtc9.acecounter.com:8080/?uid=BS2A39876863068&je=n&' border='0' width='0' height='0' alt=''></noscript>

<!-- AceCounter Log Gathering Script End -->


<!-- Facebook Pixel Code -->
<script>
	!function (f, b, e, v, n, t, s) {
		if (f.fbq) return;
		n = f.fbq = function () {
			n.callMethod ?
				n.callMethod.apply(n, arguments) : n.queue.push(arguments)
		};
		if (!f._fbq) f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window,
		document, 'script', '//connect.facebook.net/en_US/fbevents.js');

	fbq('init', '1028038810619064');
	fbq('track', "PageView");
</script>
<noscript>
<img height="1" width="1" style="display:none"
               src="https://www.facebook.com/tr?id=1028038810619064&ev=PageView&noscript=1"/>
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
    <h2 class="blind">공연</h2><!-- [D]  1 depth의 값을 h2로 뿌려줍니다 -->
    <div class="top_area" style="padding-bottom:0px; margin-bottom:39px;">
    <h2 class="title" style="margin-top:39px; display:inline-block">베스트 뮤지컬</h2>
    <img src="/showticket/resources/images/plus.png" alt="더보기" style="width: 35px; height: 35px;">
        <div class="submain_topban">
            <div class="submain_goods" style="width: 990px">
                <ul>

                        
                            <li class="on" id="bigBanImage_0">
                                <a href="http://www.ticketlink.co.kr/product/29717" class="bx_banner">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_10/공연전시_메인_990x280_다윈영의-악의기원.jpg" width="990" height="280">
                                </a>
                            </li>
                            
                        
                    
                        
                            <li id="bigBanImage_1">
                                <a href="http://www.ticketlink.co.kr/bridge/495" class="bx_banner">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_3/990x280_y.jpg" width="990" height="280">
                                </a>
                            </li>
                            
                        
                    
                        
                            <li id="bigBanImage_2">
                                <a href="http://www.ticketlink.co.kr/bridge/503" class="bx_banner">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_8/공연전시_메인_990x280_남진콘서트(1).jpg" width="990" height="280">
                                </a>
                            </li>
                            
                        
                    
                        
                            <li id="bigBanImage_3">
                                <a href="http://www.ticketlink.co.kr/product/28137" class="bx_banner">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_3/공연전시_메인_990x280_KB페스티벌_v2.jpg" width="990" height="280">
                                </a>
                            </li>
                            
                        
                    
                        
                            <li id="bigBanImage_4">
                                <a href="http://www.ticketlink.co.kr/bridge/464" class="bx_banner">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_5/990x280_h.jpg" width="990" height="280">
                                </a>
                            </li>
                            
                        
                    
                        
                            <li id="bigBanImage_5">
                                <a href="http://www.ticketlink.co.kr/product/29539" class="bx_banner">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_8/990x280_super.jpg" width="990" height="280">
                                </a>
                            </li>
                            
                        
                    
                        
                            <li id="bigBanImage_6">
                                <a href="http://www.ticketlink.co.kr/product/28633" class="bx_banner">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_10/공연전시_메인_990x280_시티오브엔젤(1).jpg" width="990" height="280">
                                </a>
                            </li>
                            
                        
                    
                        
                            <li id="bigBanImage_7">
                                <a href="http://www.ticketlink.co.kr/bridge/417" class="bx_banner">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_1/[제작용]공연전시_메인_990x280_장윤정_v6.jpg" width="990" height="280">
                                </a>
                            </li>
                            
                        
                    
                        
                            <li id="bigBanImage_8">
                                <a href="http://www.ticketlink.co.kr/product/29439" class="bx_banner">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_8/공연전시_메인_990x280_연극BEA.jpg" width="990" height="280">
                                </a>
                            </li>
                            
                        
                    
                    <input type="hidden" name="bigBannerCnt" id="bigBannerCnt" value="9">
                </ul>
            </div>
            <div class="area_thumb">
                      <ul class="lst_thumb" style="float: right">
                            
                            <li onclick="selectBanner(0)" id="bigBanPage_0" onmouseover="this.style.cursor='pointer'">
                                <span class="bx_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_8/66x66_d.jpg" width="66" height="66" alt="">
                                </span>
                                <span class="dummy_bg" id="dummy_bg_0"></span>
                            </li>
                            
                            <li onclick="selectBanner(1)" id="bigBanPage_1" onmouseover="this.style.cursor='pointer'">
                                <span class="bx_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_2/66x66_y.jpg" width="66" height="66" alt="">
                                </span>
                                <span class="dummy_bg" id="dummy_bg_1"></span>
                            </li>
                            
                            <li onclick="selectBanner(2)" id="bigBanPage_2" onmouseover="this.style.cursor='pointer'">
                                <span class="bx_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_4/66x66_n.jpg" width="66" height="66" alt="">
                                </span>
                                <span class="dummy_bg" id="dummy_bg_2"></span>
                            </li>
                            
                                </ul>
                            
                                <ul class="lst_thumb" style="float: right">
                            
                            <li onclick="selectBanner(3)" id="bigBanPage_3" onmouseover="this.style.cursor='pointer'">
                                <span class="bx_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_6/썸네일_66_66_KB페스티벌_v2.jpg" width="66" height="66" alt="">
                                </span>
                                <span class="dummy_bg" id="dummy_bg_3"></span>
                            </li>
                            
                            <li onclick="selectBanner(4)" id="bigBanPage_4" onmouseover="this.style.cursor='pointer'">
                                <span class="bx_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_10/66x66_썸네일_흥부놀부전2.jpg" width="66" height="66" alt="">
                                </span>
                                <span class="dummy_bg" id="dummy_bg_4"></span>
                            </li>
                       
                            <li onclick="selectBanner(5)" id="bigBanPage_5" onmouseover="this.style.cursor='pointer'">
                                <span class="bx_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_10/_66_66_super.jpg" width="66" height="66" alt="">
                                </span>
                                <span class="dummy_bg" id="dummy_bg_5"></span>
                            </li>
                            
                                </ul>
                            
                                <ul class="lst_thumb" style="float: right">
                            
                            <li onclick="selectBanner(6)" id="bigBanPage_6" onmouseover="this.style.cursor='pointer'">
                                <span class="bx_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_4/썸네일_66_66_시티오브엔젤(1).jpg" width="66" height="66" alt="">
                                </span>
                                <span class="dummy_bg" id="dummy_bg_6"></span>
                            </li>
                            
                            
                            <li onclick="selectBanner(7)" id="bigBanPage_7" onmouseover="this.style.cursor='pointer'">
                                <span class="bx_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_1/66x66(10).jpg" width="66" height="66" alt="">
                                </span>
                                <span class="dummy_bg" id="dummy_bg_7"></span>
                            </li>
                            
                            <li onclick="selectBanner(8)" id="bigBanPage_8" onmouseover="this.style.cursor='pointer'">
                                <span class="bx_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_4/썸네일_66x66_연극BEA.jpg" width="66" height="66" alt="">
                                </span>
                                <span class="dummy_bg" id="dummy_bg_8"></span>
                            </li>
                            
                                </ul> 
            </div>
        </div>
     </div>


        <!-- [D] 전시메인의 경우 .exhibition 추가입니다. -->
        <div class="attention_wrap concert" style="margin-top:0px;">
            <div class="header">
                <h2 class="small-title" style="margin-top:0px; display:inline-block">최신 뮤지컬</h2>
                <img src="/showticket/resources/images/plus.png" alt="더보기" style="width: 35px; height: 35px;">
            </div>
            <div class="attention">
                <ul style="width:1880px"><!-- [D] li 1개 가로 사이즈 178+여백10=188 x li 갯수(10) = 1880px 인라인으로 박아줍니다. -->
                    
                        <li class="SHOW_ISSUE_V1_FIRST">
                            <a href="http://www.ticketlink.co.kr/bridge/498">
                                <span class="ribbon 
                                    ">HIDE
                                </span>
                                <img src="//image.toast.com/aaaaab/ticketlink/TKL_3/mom_main_0805.jpg"  alt="">
                                <p><em>제목등 소개 들어갈곳</em></p>
                            </a>
                        </li>
                    
                        <li class="SHOW_ISSUE_V1_FIRST">
                            <a href="http://www.ticketlink.co.kr/bridge/496">
                                <span class="ribbon 
                                    
                                    
                                    
                                    ">HIDE
                                </span>
                                <img src="//image.toast.com/aaaaab/ticketlink/TKL_4/south0730.jpg" alt="">
                                <p><em>크러쉬/우원재/그레이</em></p>
                            </a>
                        </li>
                    
                        <li class="SHOW_ISSUE_V1_FIRST">
                            <a href="http://www.ticketlink.co.kr/product/29544">
                                <span class="ribbon 
                                    
                                    
                                        label level2
                                    
                                    
                                    ">SOLELY
                                </span>
                                <img src="//image.toast.com/aaaaab/ticketlink/TKL_8/zan_main0820.jpg" alt="">
                                <p><em>얼리버드 티켓 판매중</em></p>
                            </a>
                        </li>
                    
                        <li class="SHOW_ISSUE_V1_FIRST">
                            <a href="http://www.ticketlink.co.kr/product/29582">
                                <span class="ribbon 
                                    
                                    
                                    
                                    ">HIDE
                                </span>
                                <img src="//image.toast.com/aaaaab/ticketlink/TKL_10/ju_main0805.jpg" alt="">
                                <p><em>트로트 여신</em></p>
                            </a>
                        </li>
                    
                        <li class="SHOW_ISSUE_V1_FIRST">
                            <a href="http://www.ticketlink.co.kr/product/29703">
                                <span class="ribbon 
                                    
                                    
                                        label level2
                                    
                                    
                                    ">SOLELY
                                </span>
                                <img src="//image.toast.com/aaaaab/ticketlink/TKL_10/660_980_08221404.jpg" alt="">
                                <p><em>얼리버드 반값 티켓!</em></p>
                            </a>
                        </li>
                    
                    
                        <li class="SHOW_ISSUE_V1_SECOND">
                            <a href="http://www.ticketlink.co.kr/bridge/402">
                                <span class="ribbon 
                                    
                                    
                                    
                                ">HIDE</span>
                                <img src="//image.toast.com/aaaaab/ticketlink/TKL_9/leemija_0726.jpg" alt="">
                                <p><em>노래인생 60년 기념</em></p>
                            </a>
                        </li>
                    
                        <li class="SHOW_ISSUE_V1_SECOND">
                            <a href="http://www.ticketlink.co.kr/product/29640">
                                <span class="ribbon 
                                    
                                    
                                    
                                ">HIDE</span>
                                <img src="//image.toast.com/aaaaab/ticketlink/TKL_7/ori0806.jpg" alt="">
                                <p><em>40주년 전국투어 콘서트</em></p>
                            </a>
                        </li>
                    
                        <li class="SHOW_ISSUE_V1_SECOND">
                            <a href="http://www.ticketlink.co.kr/product/29652">
                                <span class="ribbon 
                                    
                                    
                                    
                                ">HIDE</span>
                                <img src="//image.toast.com/aaaaab/ticketlink/TKL_10/loved0807.jpg" alt="">
                                <p><em>조기예매 할인</em></p>
                            </a>
                        </li>
                    
                        <li class="SHOW_ISSUE_V1_SECOND">
                            <a href="http://www.ticketlink.co.kr/product/28714">
                                <span class="ribbon 
                                    
                                    
                                    
                                ">HIDE</span>
                                <img src="//image.toast.com/aaaaab/ticketlink/TKL_8/201906141356a.jpg" alt="">
                                <p><em>광주</br> 상무지구 기분좋은극장</em></p>
                            </a>
                        </li>
                    
                        <li class="SHOW_ISSUE_V1_SECOND">
                            <a href="http://www.ticketlink.co.kr/product/27881">
                                <span class="ribbon 
                                    
                                    
                                        label level2
                                    
                                    
                                ">SOLELY</span>
                                <img src="//image.toast.com/aaaaab/ticketlink/TKL_5/hongdo_0412.jpg" alt="">
                                <p><em> 전북예술회관 대공연장</em></p>
                            </a>
                        </li>

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
		        	</select>
		        	<input type="text" class="form-control form-control-lg" name="searchKeyword">
		        	<button type="button" class="btn btn-primary btn-color btn-sm" id="searchBtn">검색</button>
        		</div>

        	
        	<div class="orderWrap">
	        	<select name="selectOrder" id="order-musical">
		        	<option value="byRank">랭킹순</option>
		        	<option value="byDate">최신순</option>
		        	<option value="byStar">별점순</option>
		        </select>
        	</div>



        	
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
			getConcertList(page++, categoryNum, true);
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
			});
		}
	});

	function getConcertList (page, varCategoryNum, isCleanProductList) {
		categoryNum = varCategoryNum;
		$.ajax({
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
				/* alert("오류가 발생했습니다. 관리자에게 문의하세요."); */
				isLoadingNow = false;
			}
		});
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