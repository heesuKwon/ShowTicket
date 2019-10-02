<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script>
	document.write('<link rel="apple-touch-icon" href="http://ticketlink.dn.toastoven.net/web/IOS.png" />');
	document.write('<link rel="icon" type="image/png" href="http://ticketlink.dn.toastoven.net/web/AOS.ico" />');
	document.write('<link rel="shortcut icon" href="http://ticketlink.dn.toastoven.net/web/AOS.png" />');
</script>

<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="description"
	content="티켓예매, 스포츠, 공연, 전시 등 티켓 예매서비스 제공 . 페이코(PAYCO)간편결제 지원" />
<meta property="og:type" content="website" />
<meta property="og:title" content="티켓링크" />
<meta property="og:description"
	content="티켓예매, 스포츠, 공연, 전시 등 티켓 예매서비스 제공 . 페이코(PAYCO)간편결제 지원" />
<meta property="og:image"
	content="https://tketlink.dn.toastoven.net/static/ticketlink.png" />
<title>ShowTicket</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="naver-site-verification"
	content="86eedba5250abe392904d952feac4c2b02322e81" />

<link rel="shortcut icon" type="image/x-icon"
	href="http://ticketlink.dn.toastoven.net/web/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/common.css">

<script async type="text/javascript"
	src="//cro.myshp.us/resources/common/js/more-common.js"></script>
<!-- End NHN AD MORE Script -->
<script type="text/javascript" src="/resources/jsdev/util/tk.Utils.js"
	charset="utf-8"></script>
<script type="text/javascript" src="/resources/js/player.js"></script>
<link rel="stylesheet" type="text/css"
	href="//tketlink.dn.toastoven.net/markup_resources/2019090301/web/css/main.css">
</head>

<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.js"></script>
<!-- bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<link rel="shortcut icon" type="image/x-icon"
	href="http://ticketlink.dn.toastoven.net/web/favicon.ico" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/list.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/header.css" />

<!-- 폰트 -->
<!-- font-family: 'Gothic A1', sans-serif; -->
<link
	href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap"
	rel="stylesheet">

<script type="text/javascript" src="/resources/js/jquery-ui.js"></script>
<!-- <script type="text/javascript" src="/resources/js/login.js"></script> -->
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

<!-- 로그인 관련 모달 부분 -->
<!-- 로그인모달 : https://getbootstrap.com/docs/4.1/components/modal/#live-demo -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">로그인</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <!--로그인폼 : https://getbootstrap.com/docs/4.1/components/forms/#overview -->
          <form action="${pageContext.request.contextPath}/member/memberLogin.do" method="post">
		      <div class="modal-body plusbody">
		      	<div class="loginInfo">
		      		<input type="text" class="form-control" name="memberId" placeholder="아이디" required>
				    <br />
				    <input type="password" class="form-control" name="password" placeholder="비밀번호" required>
				</div>
				<div class="loginbtn">
				    <button type="submit" class="btn btn-color loginsubmit" >로그인</button>
				    <button type="button" class="btn logincancel" data-dismiss="modal">취소</button>		    
				</div>
		      	<div class="find">
					<a href="javascript:popId()" class="findcolor">아이디 찾기</a>
					<span class="findcolor">|</span> <a href="javascript:popPwd()" class="findcolor">비밀번호 찾기</a>
		  	  	</div>
		      </div>
		  </form>
	    </div>
	  </div>
	</div> <!-- 로그인 모달 끝 -->

<body>

<script>
	var meta = document.createElement('meta');
	meta.setAttribute('name', 'more_page_type');
	meta.setAttribute('content', 'main');
	document.getElementsByTagName('head')[0].appendChild(meta);
	
	
	function popId(){
	    var url = "${pageContext.request.contextPath}/member/memberIdFind.do";
	    var name = "popup test";
	    var option = "width = 430, height = 550, top = 120, left = 600, location = no"
	    window.open(url, name, option);
	}
	function popPwd(){
	    var url = "${pageContext.request.contextPath}/member/memberPwdFind.do";
	    var name = "popup test";
	    var option = "width = 430, height = 550, top = 120, left = 600, location = no"
	    window.open(url, name, option);
	}
</script>

	<div id="wrap">
		<div id="header">
			<div class="gnb">
				<div class="inner">
					<div class="user_menu">
						<div id="login">
							<!-- 로그인 안한 경우 -->
							<c:if test="${memberLoggedIn == null }">
								<button class="login" type="button" data-toggle="modal" data-target="#loginModal">로그인</button><span>|</span>
								<a href="javascript:;" id="joinBtn"
									onclick="location.href='${pageContext.request.contextPath}/member/memberEnroll.do'">회원가입</a><span>|</span>
								<a href="" id="reserveLogin">예매확인/취소</a><span>|</span>
								<script>
									$("#reserveLogin").click(function() {
										alert("로그인 후 이용하세요");
									});
								</script>
								<a href="${pageContext.request.contextPath}/help/main.do">고객센터</a>
							</c:if>
							<!-- 로그인한 경우 -->
							<c:if test="${memberLoggedIn != null }">
								<span class="black"><a href="${pageContext.request.contextPath }/member/reservation.do?memberId=${memberLoggedIn.memberId}&cPage=1">${memberLoggedIn.memberId }</a> 님, 환영합니다</span>
								&nbsp;
								<button class="logout" onclick="location.href='${pageContext.request.contextPath}/member/memberLogout.do'">로그아웃</button><span>|</span> 
								<a href="${pageContext.request.contextPath}/member/reservation.do?memberId=${memberLoggedIn.memberId}" id="reserveLogin">예매확인/취소</a><span>|</span>
								<a href="${pageContext.request.contextPath}/help/main.do">고객센터</a>
							</c:if>

							<%-- <a href="" id="reserve">예매확인/취소</a><span>|</span> 
							<a href="${pageContext.request.contextPath}/help/main.do">고객센터</a> --%>
						</div>
						<div id="logout" style="display: none;">
							<!-- 이부분 슬기씨한테 여쭤보기, 예매확인/취소, 로그아웃, 고객센터 중복  -->
							<!-- <a id="paycoVipIcon" href="/vip/main" class="ico_vip"
								style="display: none;"></a> <strong id="reserveLoginId"><a
								href="javascript:;" class="user_name"></a><em>님</em></strong><span>|</span> -->
							<!-- [D] 로그인 후 주석 해제 입니다. -->
							<%-- <a href="${pageContext.request.contextPath}/member/reservation.do" id="reserveLogin">예매확인/취소</a><span>|</span>
							<a href="#" id="logoutBtn">로그아웃</a><span>|</span> 
							<a href="${pageContext.request.contextPath}/help/main.do">고객센터</a> --%>

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
				<a href="${pageContext.request.contextPath }/"> 
					<img src="${pageContext.request.contextPath }/resources/images/showticket_logo.png" id="center-image" alt="쇼티켓로고" />
				</a>

				<div class="search">
					<form name="searchForm" action="${pageContext.request.contextPath }/main/search.do"
						method="GET">
						<fieldset id="fieldsetS">
							<legend>검색</legend>
							<input type="text" name="queryKeyword" title="검색어 입력" value="" style="padding:10px;">
							<p class="btn_search">
								<a href="javascript:document.searchForm.submit()"
									class="material-icons w3-xlarge">search</a>
							<p>
						</fieldset>
					</form>
				</div>

				<!-- // 검색창 덮는 배너 추가 -->
			</div>

			<div class="menu">
				<!-- 메뉴바   -->
				<ul class="inner">
					<!-- [D] 메뉴 활성일때 on 클래스 추가 입니다. -->
					<!-- [D] 메뉴 오버일때 over 클래스 추가 입니다. -->
					<li class="menu2 menu_list" id="menu2">
						<a href="${pageContext.request.contextPath}/musical/musical.do">
							<span class="menu_tit">뮤지컬</span>
						</a> 
						<span class="overbg"></span>
					</li>
					<li class="menu3 menu_list menu_list2" id="menu3">
						<a href="${pageContext.request.contextPath}/show/show.do"> 
							<span class="menu_tit">연극</span>
						</a> 
						<span class="overbg"></span>
					</li>

					<li class="event_cate menu7">
						<a href="${pageContext.request.contextPath}/ranking/ranking.do">
							<span class="menu_tit menu_tit_sm">랭킹</span>
						</a>
					</li>
					<li class="event_cate menu_list6 menu5" id="menu5">
						<a href="${pageContext.request.contextPath }/area/area.do"> 
							<span class="menu_tit menu_tit_sm">지역</span>
						</a>
					</li>
					<li class="event_cate menu_list8 menu6" id="menu6">
						<a href="${pageContext.request.contextPath }/event/eventList.do"> 
							<span class="menu_tit menu_tit_sm">이벤트/쿠폰</span>
						</a> 
					</li>

				</ul>
			</div>
			<!-- 메뉴바 END -->
		</div>
