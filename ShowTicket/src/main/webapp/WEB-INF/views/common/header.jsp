<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script>
	document.write('<link rel="apple-touch-icon" href="http://ticketlink.dn.toastoven.net/web/IOS.png" />');
	document.write('<link rel="icon" type="image/png" href="http://ticketlink.dn.toastoven.net/web/AOS.ico" />');
	document.write('<link rel="shortcut icon" href="http://ticketlink.dn.toastoven.net/web/AOS.png" />');
</script>

<html lang="ko">
<head>
<meta name="description"
	content="티켓예매, 스포츠, 공연, 전시 등 티켓 예매서비스 제공 . 페이코(PAYCO)간편결제 지원" />
<meta property="og:type" content="website" />
<meta property="og:title" content="showticket" />
<meta property="og:description"
	content="티켓예매, 스포츠, 공연, 전시 등 티켓 예매서비스 제공 . 페이코(PAYCO)간편결제 지원" />
<meta property="og:image"
	content="https://tketlink.dn.toastoven.net/static/ticketlink.png" />
<title>showticket</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="naver-site-verification"
	content="86eedba5250abe392904d952feac4c2b02322e81" />

<link rel="shortcut icon" type="image/x-icon"
	href="http://ticketlink.dn.toastoven.net/web/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/list.css">

<!-- 폰트 -->
<!-- font-family: 'Gothic A1', sans-serif; -->
<link href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap" rel="stylesheet">

<script type="text/javascript" src="/resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="/resources/js/jquery-ui.js"></script>
<script type="text/javascript" src="/resources/js/login.js"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
	if (!wcs_add) var wcs_add = {};
	wcs_add["wa"] = "s_765d50fa49a";
	if (!_nasa) var _nasa = {};
	wcs.inflow();
	wcs_do(_nasa);

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
		var mr_id = 'member';	// ë¡ê·¸ì¸ íìíë¨( 'member' ê³ ì ê°)
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
<noscript>
	<img src='http://gtc9.acecounter.com:8080/?uid=BS2A39876863068&je=n&'
		border='0' width='0' height='0' alt=''>
</noscript>

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
<script async type="text/javascript"
	src="//cro.myshp.us/resources/common/js/more-common.js"></script>
<!-- End NHN AD MORE Script -->

<script type="text/javascript" src="/resources/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="/resources/jsdev/util/tk.Utils.js"
	charset="utf-8"></script>
<script type="text/javascript" src="/resources/js/player.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
</head>

<style type="text/css">
[v-cloak] {
	display: none;
}

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

<body>

	<script>
	var meta = document.createElement('meta');
	meta.setAttribute('name', 'more_page_type');
	meta.setAttribute('content', 'main');
	document.getElementsByTagName('head')[0].appendChild(meta);
</script>

	<div id="wrap">
		<div id="header">
			<div class="gnb">
				<div class="inner">
					<div class="user_menu">
						<div id="login">
							<a href="javascript:;" class="btn login" id="loginBtn">로그인</a>
							<!-- [D] 로그인 후 주석 설정 입니다. -->
							<a href="javascript:;" id="reserve">예매확인/취소</a><span>|</span> <a
								href="javascript:;" id="joinBtn">회원가입</a><span>|</span> <a
								href="http://www.ticketlink.co.kr/help/main">고객센터</a> <span>|</span>
							<span class="hd_selt" name="localeHeader"> <a
								href="javascript:openLanguageList();" class="selt"
								name="localeHeaderButton">Language<span class="sp"></span></a>
								<ul class="selt_lst" style="display: none"
									name="localeHeaderList">
									<li><a href="/global/en/main">- English</a></li>
									<li><a href="/global/ja/main">- 日本語</a></li>
									<li><a href="/global/zh/main">- 中國語</a></li>
								</ul>
							</span>

						</div>
						<div id="logout" style="display: none;">
							<a id="paycoVipIcon" href="/vip/main" class="ico_vip"
								style="display: none;"></a> <strong id="reserveLoginId"><a
								href="javascript:;" class="user_name"></a><em>님</em></strong><span>|</span>
							<!-- [D] 로그인 후 주석 해제 입니다. -->
							<a href="javascript:;" id="reserveLogin">예매확인/취소</a><span>|</span>
							<a href="#" id="logoutBtn">로그아웃</a><span>|</span> <a
								href="http://www.ticketlink.co.kr/help/main">고객센터</a> <span>|</span>
							<span class="hd_selt" name="localeHeader"> <a
								href="javascript:openLanguageList();" class="selt"
								name="localeHeaderButton">Language<span class="sp"></span></a>
								<ul class="selt_lst" style="display: none"
									name="localeHeaderList">
									<li><a href="/global/en/main">- English</a></li>
									<li><a href="/global/ja/main">- 日本語</a></li>
									<li><a href="/global/zh/main">- 中國語</a></li>
								</ul>
							</span>

						</div>

					</div>
				</div>
			</div>

			<input type="hidden" name="code" id="code" value=""> <input
				type="hidden" name="domainMenu" id="domainMenu"
				value="http://www.ticketlink.co.kr"> <input type="hidden"
				name="domainSportsMenu" id="domainSportsMenu"
				value="http://www.ticketlink.co.kr/sports">

			<div class="search_area">
				<h1>
					<a href="http://www.ticketlink.co.kr" class="logo">티켓링크</a>
				</h1>
				<div class="search">
					<form name="searchForm" action="http://www.ticketlink.co.kr/search"
						method="GET">
						<fieldset>
							<legend>검색</legend>
							<input type="text" name="query" title="검색어 입력" value="">
							<a href="javascript:document.searchForm.submit()"
								class="btn_search">검색</a>
						</fieldset>
					</form>
				</div>
			</div>

			<div class="menu">
				<ul class="inner">
					<!-- [D] 메뉴 활성일때 on 클래스 추가 입니다. -->
					<!-- [D] 메뉴 오버일때 over 클래스 추가 입니다. -->
					<li class="menu2 menu_list" id="menu2">
						<a
							href="http://www.ticketlink.co.kr/sports"> 
							<span class="menu_tit sports">뮤지컬</span>
						</a>
					</li>
					<li class="menu3 menu_list menu_list2" id="menu3">
						<a href="http://www.ticketlink.co.kr/concert/main"> 
							<span class="menu_tit performance">연극</span>
						</a> 
					</li>
					<li class="menu4 menu_list menu_list3" id="menu4"><a
						href="http://www.ticketlink.co.kr/exhibition/main"> <span
							class="menu_tit exhibit">전시</span>
					</a> <span class="overbg"></span>
						<ul class="submenu sb_exhibit" id="submenu4">
							<li id="smenu41"><a
								href="http://www.ticketlink.co.kr/exhibition/exhibition"
								class="smenu41"><span class="smenu_tit festival">전시/축제</span></a>
							</li>
							<li id="smenu42"><a
								href="http://www.ticketlink.co.kr/exhibition/festival"
								class="smenu42"><span class="smenu_tit leisure">레저/체험</span></a>
							</li>
							<li id="smenu36"><a
								href="http://www.ticketlink.co.kr/exhibition/family"
								class="smenu36"><span class="smenu_tit family">아동/가족</span></a>
							</li>
						</ul></li>
					<li class=" menu_list menu_list4"><a
						href="http://www.ticketlink.co.kr/esports/main"> <span
							class="esports menu_tit">e스포츠</span>
					</a></li>
					<li class="event_cate type2 menu7"><a
						href="http://www.ticketlink.co.kr/ranking/reserve/daily"> <span
							class="menu_tit ranking">랭킹</span>
					</a></li>
					<li class="event_cate menu_list6 menu5" id="menu5"><a
						href="http://www.ticketlink.co.kr/local/main"> <span
							class="menu_tit region">지역</span>
					</a>
						<ul class="submenu" id="submenu5">
							<li id="smenu599"><a
								href="http://www.ticketlink.co.kr/local/main" class="smenu_all"><span
									class="smenu_tit all">전체</span></a></li>
							<li id="smenu51"><a
								href="http://www.ticketlink.co.kr/local/seoul" class="smenu51"><span
									class="smenu_tit seoul">서울</span></a></li>
							<li id="smenu52"><a
								href="http://www.ticketlink.co.kr/local/gyeonggi"
								class="smenu52"><span class="smenu_tit gyeonggi">경기</span></a></li>
							<li id="smenu53"><a
								href="http://www.ticketlink.co.kr/local/gyeongbuk"
								class="smenu53"><span class="smenu_tit daegu">대구/경북</span></a></li>
							<li id="smenu54"><a
								href="http://www.ticketlink.co.kr/local/gyeongnam"
								class="smenu54"><span class="smenu_tit busan">부산/경남</span></a></li>
							<li id="smenu55"><a
								href="http://www.ticketlink.co.kr/local/jeonla" class="smenu55"><span
									class="smenu_tit gwangju">광주/전라</span></a></li>
							<li id="smenu56"><a
								href="http://www.ticketlink.co.kr/local/choongchung"
								class="smenu56"><span class="smenu_tit daejeon">대전/충청</span></a>
							</li>
							<li id="smenu57"><a
								href="http://www.ticketlink.co.kr/local/gangwon" class="smenu57"><span
									class="smenu_tit kangwon">강원</span></a></li>
							<li id="smenu58"><a
								href="http://www.ticketlink.co.kr/local/jeju" class="smenu58"><span
									class="smenu_tit jeju">제주</span></a></li>
						</ul></li>
					<li class="event_cate menu_list7"><a
						href="http://www.ticketlink.co.kr/venue/main"> <span
							class="menu_tit venue">공연장</span>
					</a></li>
					<li class="event_cate menu_list8 menu6" id="menu6"><a
						href="http://www.ticketlink.co.kr/event/main"> <span
							class="menu_tit event">이벤트/쿠폰</span>
					</a> <!-- [D] 이벤트 서브메뉴 : submenu에 event 클래스 추가 -->
						<ul class="submenu event" id="submenu6">
							<li id="smenu61"><a
								href="http://www.ticketlink.co.kr/event/main" class="smenu61"><span
									class="smenu_tit ongoing_event">진행중인 이벤트</span></a></li>
							<li id="smenu62"><a
								href="http://www.ticketlink.co.kr/event/end" class="smenu62"><span
									class="smenu_tit finish_event">종료된 이벤트</span></a></li>
							<li id="smenu63"><a
								href="http://www.ticketlink.co.kr/event/winner" class="smenu63"><span
									class="smenu_tit event_winner">당첨자 발표</span></a></li>
							<li id="smenu64"><a href="javascript:;" class="smenu64"><span
									onClick="memberCommonCheck('http://www.ticketlink.co.kr/my/activity/event');"
									class="smenu_tit event_participation">참여 이벤트</span></a></li>
							<li id="smenu65"><a
								href="http://www.ticketlink.co.kr/coupon/main" class="smenu65"><span
									class="smenu_tit coupon_zone">쿠폰존</span></a></li>
						</ul></li>
					<li class="event_cate type3"><a
						href="http://www.ticketlink.co.kr/vip/main"> <span
							class="menu_tit vip">PAYCO VIP</span>
					</a></li>
				</ul>
			</div>
		</div>
		<script type="text/javascript"
			src="http://ticketlink.dn.toastoven.net/web/pcweb/markup_resources/201606211000/js/login.js"></script>
		<script type="text/javascript"
			src="/resources/js/header-f81b5672707a96b1c497e15293ee07f3.js"></script>