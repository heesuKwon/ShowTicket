<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" >
	<jsp:param value="" name="pageTitle" />
</jsp:include>

<script type="text/javascript" src="http://ticketlink.dn.toastoven.net/web/pcweb/markup_resources/201606211000/js/login.js"></script>
<script type="text/javascript" src="/resources/js/header-f81b5672707a96b1c497e15293ee07f3.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/contents.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/area.css"/>

    <!-- container 시작 -->
    <div id="container" class="submain_front">
        <div class="inner submain_district">
            <h2 class="blind">공연</h2><!-- [D]  1 depth의 값을 h2로 뿌려줍니다 -->

			<div class="nav nav-pills nav-justified" style="margin-top: 30px; margin-bottom: 20px;">
 				<li class="nav-item"><a class="nav-link select nav-font" href="#">전체</a></li>
				<li class="nav-item"><a class="nav-link default nav-font" href="#">서울</a></li>
				<li class="nav-item"><a class="nav-link default nav-font" href="#">경기</a></li>
				<li class="nav-item"><a class="nav-link default nav-font" href="#">대구/경북</a></li>
				<li class="nav-item"><a class="nav-link default nav-font" href="#">부산/경남</a></li>
				<li class="nav-item"><a class="nav-link default nav-font" href="#">광주/전라</a></li>
				<li class="nav-item"><a class="nav-link default nav-font" href="#">대전/충청</a></li>
				<li class="nav-item"><a class="nav-link default nav-font" href="#">강원</a></li>
				<li class="nav-item"><a class="nav-link default nav-font" href="#">제주</a></li>
        	</div>
			
			<h2 class="title">전체</h2>
			
            <ul class="goods_list" id="goods_list">
            <li><a href="/product/28633"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_3/city_main08131315.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">뮤지컬 &lt;시티오브엔젤&gt;</strong><dl><dt>기간</dt><dd>2019.08.07 ~ 2019.10.20</dd><dt>장소</dt><dd>잘나오닝?</dd></dl></div></a></li>
            <li><a href="/product/29474"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/moon_info08081715.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">NEW 달을품은슈퍼맨</strong><dl><dt>기간</dt><dd>2019.08.30 ~ 2019.10.20</dd><dt>장소</dt><dd>드림아트센터 2관</dd></dl></div></a></li>
            <li><a href="/product/29652"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_6/SPST_0905.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">뮤지컬 &lt;사랑했어요&gt;</strong><dl><dt>기간</dt><dd>2019.09.20 ~ 2019.10.27</dd><dt>장소</dt><dd>성남아트센터 오페라하우스</dd></dl></div></a></li>
            <li><a href="/bridge/487"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_10/ppara_main0618.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">[빠라밤 유치원] - 창원</strong><dl><dt>기간</dt><dd>2019.09.21 ~ 2019.09.21</dd><dt>장소</dt><dd>KBS창원홀</dd></dl></div></a></li>
            <li><a href="/product/28919"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_9/7_main0703.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">[전주] 최백호 콘서트 seven</strong><dl><dt>기간</dt><dd>2019.09.21 ~ 2019.09.21</dd><dt>장소</dt><dd>전북대학교 삼성문화회관</dd></dl></div></a></li>
            <li><a href="/bridge/402"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_9/leemija_0726.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">이미자 음악회 - 고양</strong><dl><dt>기간</dt><dd>2019.09.21 ~ 2019.09.21</dd><dt>장소</dt><dd>고양아람누리 아람극장</dd></dl></div></a></li>
            <li><a href="/bridge/509"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_9/dresden_poster314(190525).jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">정명훈 &amp; 드레스덴 슈타츠카펠레</strong><dl><dt>기간</dt><dd>2019.09.27 ~ 2019.09.27</dd><dt>장소</dt><dd>세종문화회관 대극장</dd></dl></div></a></li>
            <li><a href="/product/29929"><span class="flag_vr level"></span><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_8/main(5).jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">정경화 리사이틀-구미</strong><dl><dt>기간</dt><dd>2019.09.27 ~ 2019.09.27</dd><dt>장소</dt><dd>구미문화예술회관 대공연장</dd></dl></div></a></li>
            <li><a href="/product/28137"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_6/kb_poster_0916.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">KB RAPBEAT FESTIVAL 2019 </strong><dl><dt>기간</dt><dd>2019.09.28 ~ 2019.09.28</dd><dt>장소</dt><dd>서울랜드</dd></dl></div></a></li>
            <li><a href="/bridge/417"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_4/jang0702.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">장윤정 콘서트 - 평택</strong><dl><dt>기간</dt><dd>2019.09.28 ~ 2019.09.28</dd><dt>장소</dt><dd>평택 청소년문화센터 체육관</dd></dl></div></a></li>
            <li><a href="/bridge/487"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_10/carry_dg_poster0704.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">[빠라밤 유치원] - 대구</strong><dl><dt>기간</dt><dd>2019.09.28 ~ 2019.09.29</dd><dt>장소</dt><dd>대구보건대 인당아트홀</dd></dl></div></a></li>
            <li><a href="/product/29828"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/main(5).jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">리틀캣 - 신도림</strong><dl><dt>기간</dt><dd>2019.10.03 ~ 2019.11.03</dd><dt>장소</dt><dd>신도림 프라임아트홀</dd></dl></div></a></li>
            <li><a href="/bridge/482"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_1/main0625.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">헤이지니&amp;럭키강이-창원</strong><dl><dt>기간</dt><dd>2019.10.05 ~ 2019.10.06</dd><dt>장소</dt><dd>창원 성산아트홀 대극장</dd></dl></div></a></li>
            <li><a href="/product/29557"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_9/jeju.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">황치열 전국투어콘서트-제주</strong><dl><dt>기간</dt><dd>2019.10.05 ~ 2019.10.06</dd><dt>장소</dt><dd>제주 ICC컨벤션센터 탐라홀</dd></dl></div></a></li>
            <li><a href="/bridge/495"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_3/y_main0802.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">윤종신콘서트'이방인'-부산</strong><dl><dt>기간</dt><dd>2019.10.05 ~ 2019.10.05</dd><dt>장소</dt><dd>부산 KBS홀</dd></dl></div></a></li>
            <li><a href="/bridge/499"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_1/dra0801-new.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">뮤지컬 &lt;드라큘라&gt;</strong><dl><dt>기간</dt><dd>2019.10.05 ~ 2019.12.01</dd><dt>장소</dt><dd>한전아트센터</dd></dl></div></a></li>
            <li><a href="/bridge/505"><span class="flag_vr level"><em class="flag_txt">단독판매</em></span><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_8/NYCP_info0822-01.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">뉴욕 클래시컬 플레이어즈</strong><dl><dt>기간</dt><dd>2019.10.11 ~ 2019.10.11</dd><dt>장소</dt><dd>대구콘서트하우스 그랜드홀</dd></dl></div></a></li>
            <li><a href="/bridge/506"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_7/main0816.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">다윈 영의 악의 기원</strong><dl><dt>기간</dt><dd>2019.10.15 ~ 2019.10.27</dd><dt>장소</dt><dd>예술의전당 CJ토월극장</dd></dl></div></a></li>
            <li><a href="/bridge/514"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_2/busan_showme_poster0910.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">쇼미더머니8-부산</strong><dl><dt>기간</dt><dd>2019.10.19 ~ 2019.10.19</dd><dt>장소</dt><dd>KBS 부산홀</dd></dl></div></a></li>
            <li><a href="/bridge/375"><span class="flag_vr level"><em class="flag_txt">절대우위</em></span><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_4/314two1122.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">&lt;투 애즈 원&gt;</strong><dl><dt>기간</dt><dd>2019.10.26 ~ 2019.10.27</dd><dt>장소</dt><dd>롯데콘서트홀</dd></dl></div></a></li>
            <li><a href="/bridge/505"><span class="flag_vr level"><em class="flag_txt">단독판매</em></span><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_4/mu_info0822-01.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">무직콜레기움 빈터투어</strong><dl><dt>기간</dt><dd>2019.10.26 ~ 2019.10.26</dd><dt>장소</dt><dd>대구콘서트하우스 그랜드홀</dd></dl></div></a></li>
            <li><a href="/bridge/505"><span class="flag_vr level"><em class="flag_txt">단독판매</em></span><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_7/s_main0822.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">신포니에타 크라코비아</strong><dl><dt>기간</dt><dd>2019.10.30 ~ 2019.10.30</dd><dt>장소</dt><dd>대구콘서트하우스 그랜드홀</dd></dl></div></a></li>
            <li><a href="/bridge/505"><span class="flag_vr level"><em class="flag_txt">단독판매</em></span><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_2/b_main0822.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">빈 필하모닉 오케스트라</strong><dl><dt>기간</dt><dd>2019.11.03 ~ 2019.11.03</dd><dt>장소</dt><dd>대구콘서트하우스 그랜드홀</dd></dl></div></a></li>
            <li><a href="/bridge/498"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_8/mom_main0902.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">뮤지컬 &lt;친정엄마&gt; - 전주</strong><dl><dt>기간</dt><dd>2019.11.09 ~ 2019.11.10</dd><dt>장소</dt><dd>한국소리문화의전당 모악당</dd></dl></div></a></li>
            <li><a href="/bridge/514"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_9/smm_main0916.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">쇼미더머니8-대구</strong><dl><dt>기간</dt><dd>2019.11.10 ~ 2019.11.10</dd><dt>장소</dt><dd>대구 EXCO 1홀</dd></dl></div></a></li>
            <li><a href="/bridge/505"><span class="flag_vr level"><em class="flag_txt">단독판매</em></span><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_10/yana_main0822.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">야나첵 필하모닉 오케스트라</strong><dl><dt>기간</dt><dd>2019.11.12 ~ 2019.11.12</dd><dt>장소</dt><dd>대구콘서트하우스 그랜드홀</dd></dl></div></a></li>
            <li><a href="/bridge/505"><span class="flag_vr level"><em class="flag_txt">단독판매</em></span><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_6/jt_main0823.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">트론헤임 심포니 오케스트라</strong><dl><dt>기간</dt><dd>2019.11.16 ~ 2019.11.16</dd><dt>장소</dt><dd>대구콘서트하우스 그랜드홀</dd></dl></div></a></li>
            <li><a href="/bridge/514"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_8/main0910_us.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">쇼미더머니8 콘서트-울산</strong><dl><dt>기간</dt><dd>2019.11.16 ~ 2019.11.16</dd><dt>장소</dt><dd>울산KBS홀</dd></dl></div></a></li>
            <li><a href="/bridge/508"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_7/ori0806.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">정태춘 박은옥 콘서트-광주</strong><dl><dt>기간</dt><dd>2019.11.30 ~ 2019.11.30</dd><dt>장소</dt><dd>김대중컨벤션센터 다목적홀</dd></dl></div></a></li>
            <li><a href="/product/29516"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_1/main0726b.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">〈벽속의 요정〉- 대구</strong><dl><dt>기간</dt><dd>2019.12.01 ~ 2019.12.29</dd><dt>장소</dt><dd>대구 봉산문화회관 가온홀</dd></dl></div></a></li>
            <li><a href="/bridge/421"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_7/main(5).jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">김연자 콘서트-천안</strong><dl><dt>기간</dt><dd>2019.12.07 ~ 2019.12.07</dd><dt>장소</dt><dd>천안예술의전당 대공연장</dd></dl></div></a></li>
            <li><a href="/bridge/505"><span class="flag_vr level"><em class="flag_txt">단독판매</em></span><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_1/ma_main0823.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">마린스키 오케스트라</strong><dl><dt>기간</dt><dd>2019.12.09 ~ 2019.12.09</dd><dt>장소</dt><dd>대구콘서트하우스 그랜드홀</dd></dl></div></a></li>
            <li><a href="/bridge/375"><span class="flag_vr level"><em class="flag_txt">절대우위</em></span><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_1/ma1122.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">발레리게르기예프&amp;마린스키</strong><dl><dt>기간</dt><dd>2019.12.10 ~ 2019.12.10</dd><dt>장소</dt><dd>롯데콘서트홀</dd></dl></div></a></li>
            <li><a href="/product/29540"><span class="flag_vr level"><em class="flag_txt">단독판매</em></span><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_8/out_main0729.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">아웃 오브 더 블루-춘천</strong><dl><dt>기간</dt><dd>2020.01.11 ~ 2020.01.11</dd><dt>장소</dt><dd>강원대학교 백령아트센터</dd></dl></div></a></li>
            <li><a href="/product/20821"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/fire-1016.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">넌버벌 퍼포먼스 - 파이어맨</strong><dl><dt>기간</dt><dd>2015.08.01 ~ 2019.09.30</dd><dt>장소</dt><dd>명보아트홀 가온홀</dd></dl></div></a></li>
            <li><a href="/bridge/98"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_1/poster_314(190925).jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">죽여주는이야기</strong><dl><dt>기간</dt><dd>2019.04.01 ~ 2019.10.31</dd><dt>장소</dt><dd>대학로 삼형제극장(죽여주는이야기 전용관)</dd></dl></div></a></li>
            <li><a href="/product/28010"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_9/ht_main0420.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">연극 &lt;흉터&gt; - 대구</strong><dl><dt>기간</dt><dd>2019.06.07 ~ 2019.09.29</dd><dt>장소</dt><dd>대구 아트플러스씨어터 2관</dd></dl></div></a></li>
            <li><a href="/bridge/359"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_4/taxi_main_0214.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">택시안에서 - 서울</strong><dl><dt>기간</dt><dd>2019.07.01 ~ 2019.10.31</dd><dt>장소</dt><dd>해바라기 소극장(구, 훈아트홀)</dd></dl></div></a></li>
            <li><a href="/product/29401"><span class="flag_vr level"><em class="flag_txt">단독판매</em></span><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_9/me_main0720.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">세계적인 일러스트레이터 - 메간헤스 일러스트전 (안동)</strong><dl><dt>기간</dt><dd>2019.07.27 ~ 2019.09.22</dd><dt>장소</dt><dd>안동문화예술의전당 상설갤러리, 5갤러리, 34갤러리, 35갤러리</dd></dl></div></a></li>
            <li><a href="/product/28860"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_8/SOM0709.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">연극 [소믈리에] - 부산앵콜</strong><dl><dt>기간</dt><dd>2019.08.02 ~ 2019.12.28</dd><dt>장소</dt><dd>레몬트리소극장</dd></dl></div></a></li>
            <li><a href="/product/29944"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_7/b_main0830.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">연극 검은스님들 - 부산</strong><dl><dt>기간</dt><dd>2019.09.01 ~ 2019.10.13</dd><dt>장소</dt><dd>초콜릿 팩토리</dd></dl></div></a></li>
            <li><a href="/product/29439"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_1/bea_0722.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">연극 &lt;비BEA&gt; </strong><dl><dt>기간</dt><dd>2019.09.03 ~ 2019.10.03</dd><dt>장소</dt><dd>콘텐츠그라운드</dd></dl></div></a></li>
            <li><a href="/product/29802"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_6/r_main09041713.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">뮤직드라마 맛의기억(부산)</strong><dl><dt>기간</dt><dd>2019.09.10 ~ 2019.10.27</dd><dt>장소</dt><dd>부산메트로홀(구.AN아트홀광안)</dd></dl></div></a></li>
            <li><a href="/bridge/433"><span class="flag_vr level"><em class="flag_txt">단독판매</em></span><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_8/lee_info0314.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">이형근관장의아하!클래식Ⅲ</strong><dl><dt>기간</dt><dd>2019.09.18 ~ 2019.09.18</dd><dt>장소</dt><dd>대구콘서트하우스 챔버홀</dd></dl></div></a></li>
            <li><a href="/product/28596"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_2/bb_main0607.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">'미녀와 야수' - 대구</strong><dl><dt>기간</dt><dd>2019.09.18 ~ 2019.09.18</dd><dt>장소</dt><dd>대구어린이회관 꾀꼬리극장</dd></dl></div></a></li>
            <li><a href="/bridge/375"><span class="flag_vr level"><em class="flag_txt">절대우위</em></span><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_8/a-post-1122.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">아르비드 가스트</strong><dl><dt>기간</dt><dd>2019.09.19 ~ 2019.09.19</dd><dt>장소</dt><dd>롯데콘서트홀</dd></dl></div></a></li>
            <li><a href="/product/29396"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/King-Lear_poster0725.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">NT Live &lt;리어왕&gt;</strong><dl><dt>기간</dt><dd>2019.09.19 ~ 2019.09.28</dd><dt>장소</dt><dd>국립극장 달오름극장</dd></dl></div></a></li>
            <li><a href="/product/29579"><p><img src="//image.toast.com/aaaaab/ticketlink/TKL_6/a_main0814.jpg" alt="상품 썸네일"></p><div class="list_info"><strong class="elp">아몬드</strong><dl><dt>기간</dt><dd>2019.09.19 ~ 2019.09.25</dd><dt>장소</dt><dd>세종문화회관 S씨어터</dd></dl></div></a></li>
            </ul>

        </div>
    </div>
    <!-- container 끝 -->

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

<script type="text/javascript" src="/resources/js/date.js"></script>
<script type="text/javascript">
	//<![CDATA[

	var page = 1;
	var itemPerPage = 50;
	var locationCode = document.URL.split("/local/")[1];
	var isEndOfItem = false;
	var isLoadingNow = false;

	$(document).ready(function () {
		$("#" + locationCode).css("display", "block");
		getLocationList(page++, locationCode, true);
				
		$(window).scroll(function () {
			if (!isLoadingNow) {
				var maxHeight = $(document).height();
				var currentScroll = $(window).scrollTop() + $(window).height();
				if (maxHeight <= currentScroll + 100) {
					if (!isEndOfItem) {
						isLoadingNow = true;
						getLocationList(page++, locationCode, false);
					}
				}
			}
		});	
		
	});
	
	function getLocationList (page, locationCode, isCleanProductList) {
		$.ajax({
			cache: false,
			dataType: "json",
			url: "/local/product.nhn",
			data: {
				page: page,
				locationCodeGroup: locationCode
			},
			success: function (result) {
				displayLocationItem(result.data.content, isCleanProductList);
				isLoadingNow = false;
			},
			error: function (status) {
				/* alert("오류가 발생했습니다. 관리자에게 문의하세요."); */
				isLoadingNow = false;
			}
		});
	}

	function displayLocationItem (locationItemList, isCleanProductList) {
		var locationItemUl = $("#goods_list");
		//locationItemUl.html('');
		if (isCleanProductList) {
			locationItemUl.html('');
			isEndOfItem = false;
		}

		for (var i = 0; i < locationItemList.length; i++) {
			var level = "";
			var startDate = getDateFromFormat(locationItemList[i].startDate, 'yyyy.MM.dd');
			var endDate = getDateFromFormat(locationItemList[i].endDate, 'yyyy.MM.dd');
			var url = locationItemList[i].bridgeId == null ? "/product/" + locationItemList[i].productId : "/bridge/" + locationItemList[i].bridgeId;
			var displayName = locationItemList[i].productThumbName ? locationItemList[i].productThumbName : locationItemList[i].productName;

			var contents = "<li><a href='" + url + "'>";
			contents += getSpanTag(locationItemList[i]);
			contents += "<p><img src='" + locationItemList[i].productImagePath + "' alt='상품 썸네일'></p><div class='list_info'>";
			contents += "<strong class='elp'>" + displayName + "</strong>";
			contents += "<dl><dt>기간</dt><dd>" + startDate + " ~ " + endDate + "</dd><dt>장소</dt><dd>" + locationItemList[i].hallName + "</dd></dl>";
			contents += "</div></a></li>"
			locationItemUl.append(contents);
		}
		if (locationItemList.length == 0 && page == 2) {
			var contents = '<div class="no_data" style="display:block; top:25%;"><span>등록된 상품이 없습니다.</span></div>';
			locationItemUl.append(contents);
		}

		if (locationItemList.length != itemPerPage) {
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

	// ]]>
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" ></jsp:include>
