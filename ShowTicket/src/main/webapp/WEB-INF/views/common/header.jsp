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
    <meta charset="utf-8">
    <meta name="description" content="티켓예매, 스포츠, 공연, 전시 등 티켓 예매서비스 제공 . 페이코(PAYCO)간편결제 지원"/>
    <meta property="og:type" content="website"/>
    <meta property="og:title" content="티켓링크"/>
    <meta property="og:description" content="티켓예매, 스포츠, 공연, 전시 등 티켓 예매서비스 제공 . 페이코(PAYCO)간편결제 지원"/>
    <meta property="og:image" content="https://tketlink.dn.toastoven.net/static/ticketlink.png"/>
    <title>ShowTicket</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta name="naver-site-verification" content="86eedba5250abe392904d952feac4c2b02322e81"/>

<link rel="shortcut icon" type="image/x-icon" href="http://ticketlink.dn.toastoven.net/web/favicon.ico"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">

<script async type="text/javascript" src="//cro.myshp.us/resources/common/js/more-common.js"></script>
<!-- End NHN AD MORE Script -->

    <script type="text/javascript" src="/resources/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="/resources/jsdev/util/tk.Utils.js" charset="utf-8"></script>
    <script type="text/javascript" src="/resources/js/player.js"></script>
    <link rel="stylesheet" type="text/css" href="//tketlink.dn.toastoven.net/markup_resources/2019090301/web/css/main.css">
</head>

<!-- bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>



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
        <div class="inner" style="bottom:7px;">

        <div class="user_menu">
        <div id="login">
         <c:if > <!-- 로그인 처리 -->
        <a href="" data-toggle="modal" data-target="#loginModal" >로그인</a><span>|</span><!-- [D] 로그인 후 주석 설정 입니다. -->
        <a href="javascript:;" id="joinBtn" onclick="location.href='${pageContext.request.contextPath}/member/memberEnroll.do'">회원가입</a><span>|</span>
	    </c:if>  
	    
        <a href="javascript:;" id="reserve">예매확인/취소</a><span>|</span>
        <a href="http://www.ticketlink.co.kr/help/main">고객센터</a>
    
        
        </div>
        <div id="logout" style="display: none;">
        <a id="paycoVipIcon" href="/vip/main" class="ico_vip" style="display: none;"></a>
        <strong id="reserveLoginId"><a href="javascript:;" class="user_name"></a><em>님</em></strong><span>|</span>
        <!-- [D] 로그인 후 주석 해제 입니다. -->
        <a href="javascript:;" id="reserveLogin">예매확인/취소</a><span>|</span>
        <a href="#" id="logoutBtn">로그아웃</a><span>|</span>
        <a href="http://www.ticketlink.co.kr/help/main">고객센터</a>

        </div>
        

        </div>
        </div>
        </div>

        <input type="hidden" name="code" id="code" value="">
        <input type="hidden" name="domainMenu" id="domainMenu" value="http://www.ticketlink.co.kr">
        <input type="hidden" name="domainSportsMenu" id="domainSportsMenu" value="http://www.ticketlink.co.kr/sports">

        <div class="search_area">
        <a href="${pageContext.request.contextPath }/">
        <img src="${pageContext.request.contextPath }/resources/images/showticket_logo.png" id="center-image" alt="스프링로고" />
        </a>
     
        <div class="search">
        <form name="searchForm" action="http://www.ticketlink.co.kr/search" method="GET">
        <fieldset>
        <legend>검색</legend>
        <input type="text" name="query" title="검색어 입력" value="">
        <a href="javascript:document.searchForm.submit()" class="btn_search">검색</a>
        </fieldset>
        </form>
        </div>
       
        <!-- // 검색창 덮는 배너 추가 -->
        </div>

        <div class="menu"> <!-- 메뉴바   -->
        <ul class="inner">
        <!-- [D] 메뉴 활성일때 on 클래스 추가 입니다. -->
        <!-- [D] 메뉴 오버일때 over 클래스 추가 입니다. -->
        <li class="menu2 menu_list" id="menu2">
        <a href="http://www.ticketlink.co.kr/sports">
        <span class="menu_tit sports">스포츠</span>
        </a>
        <span class="overbg"></span>
        <ul class="submenu" id="submenu2">
     
  
        <li id="smenu68">
        <a href="http://www.ticketlink.co.kr/sports/etc" class="smenu68"><span class="smenu_tit etc">기타종목</span></a>
        </li>
        </ul>
        </li>
        <li class="menu3 menu_list menu_list2" id="menu3">
        <a href="http://www.ticketlink.co.kr/concert/main">
        <span class="menu_tit performance">공연</span>
        </a>
        <span class="overbg"></span>
        <ul class="submenu sb_perfomance" id="submenu3">
        <li id="smenu31">
        <a href="http://www.ticketlink.co.kr/concert/musical" class="smenu31"><span class="smenu_tit musical">뮤지컬</span></a>
        </li>
        <li id="smenu32">
        <a href="http://www.ticketlink.co.kr/concert/theater" class="smenu32"><span class="smenu_tit theater">연극</span></a>
        </li>

        </ul>
        </li>
     
        <li class="event_cate type2 menu7">
        <a href="${pageContext.request.contextPath}/member/ranking.do">
        <span class="menu_tit ranking">랭킹</span>
        </a>
        </li>
        <li class="event_cate menu_list6 menu5" id="menu5">
        <a href="http://www.ticketlink.co.kr/local/main">
        <span class="menu_tit region">지역</span>
        </a>
        </li>
       
        <li class="event_cate menu_list8 menu6" id="menu6">
        <a href="http://www.ticketlink.co.kr/event/main">
        <span class="menu_tit event">이벤트/쿠폰</span>
        </a>
        <!-- [D] 이벤트 서브메뉴 : submenu에 event 클래스 추가 -->
        <ul class="submenu event" id="submenu6">
        <li id="smenu61">
        <a href="http://www.ticketlink.co.kr/event/main" class="smenu61"><span class="smenu_tit ongoing_event">진행중인 이벤트</span></a>
        </li>
        <li id="smenu62">
        <a href="http://www.ticketlink.co.kr/event/end" class="smenu62"><span class="smenu_tit finish_event">종료된 이벤트</span></a>
        </li>
        <li id="smenu63">
        <a href="http://www.ticketlink.co.kr/event/winner" class="smenu63"><span class="smenu_tit event_winner">당첨자 발표</span></a>
        </li>
        <li id="smenu64">
        <a href="javascript:;"
        class="smenu64"><span onClick="memberCommonCheck('http://www.ticketlink.co.kr/my/activity/event');"
        class="smenu_tit event_participation">참여 이벤트</span></a>
        </li>
        <li id="smenu65">
        <a href="http://www.ticketlink.co.kr/coupon/main" class="smenu65"><span class="smenu_tit coupon_zone">쿠폰존</span></a>
        </li>
        </ul>
        </li>
     
        </ul>
        </div> <!-- 메뉴바 END -->
        </div>
       
    
