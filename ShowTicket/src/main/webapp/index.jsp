<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<%-- <jsp:param value="안녕 스프링	" name="pageTitle"/>
</jsp:include> --%>

    <div id="container">
        <div class="main_banner" id="rolling">
            <div class="inner">

                
                    <div id="bigBanImage_0" class="visual_ban"
                         style="background-color:#A08570;display: block">
                        <a href="http://www.ticketlink.co.kr/product/29652" target="_self"
                           class="bx_img">
                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_8/메인_상단big배너_2000x470_사랑의가객.jpg" alt="상단 Big배너">
                        </a>
                    </div>
                
                    <div id="bigBanImage_1" class="visual_ban"
                         style="background-color:#060407;display: none">
                        <a href="http://www.ticketlink.co.kr/bridge/514" target="_self"
                           class="bx_img">
                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_10/메인_상단big배너_2000x470_쇼미더머니8.jpg" alt="상단 Big배너">
                        </a>
                    </div>
                
                    <div id="bigBanImage_2" class="visual_ban"
                         style="background-color:#0A0501;display: none">
                        <a href="http://www.ticketlink.co.kr/bridge/512" target="_self"
                           class="bx_img">
                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_3/메인_상단big배너_2000x470_슈퍼스타.jpg" alt="상단 Big배너">
                        </a>
                    </div>
                
                    <div id="bigBanImage_3" class="visual_ban"
                         style="background-color:#F5F5F5;display: none">
                        <a href="http://www.ticketlink.co.kr/bridge/417" target="_self"
                           class="bx_img">
                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_5/메인_상단big배너_2000x470_장윤정_v6.jpg" alt="상단 Big배너">
                        </a>
                    </div>
                
                    <div id="bigBanImage_4" class="visual_ban"
                         style="background-color:#FFFFFF;display: none">
                        <a href="http://www.ticketlink.co.kr/bridge/259" target="_self"
                           class="bx_img">
                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_10/메인_상단big배너_2000x470_adex.jpg" alt="상단 Big배너">
                        </a>
                    </div>
                
                    <div id="bigBanImage_5" class="visual_ban"
                         style="background-color:#411D37;display: none">
                        <a href="http://www.ticketlink.co.kr/bridge/421" target="_self"
                           class="bx_img">
                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_4/메인_상단빅배너_2000x470_김연자_v2.jpg" alt="상단 Big배너">
                        </a>
                    </div>
                
                    <div id="bigBanImage_6" class="visual_ban"
                         style="background-color:#F08366;display: none">
                        <a href="http://www.ticketlink.co.kr/product/28137" target="_self"
                           class="bx_img">
                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_4/메인_상단big배너_2000x470_KB페스티벌_v2.jpg" alt="상단 Big배너">
                        </a>
                    </div>
                
                    <div id="bigBanImage_7" class="visual_ban"
                         style="background-color:#270B08;display: none">
                        <a href="http://www.ticketlink.co.kr/bridge/476" target="_self"
                           class="bx_img">
                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_4/메인_상단빅배너_2000x470_미스트롯트9_v2.jpg" alt="상단 Big배너">
                        </a>
                    </div>
                
                    <div id="bigBanImage_8" class="visual_ban"
                         style="background-color:#000000;display: none">
                        <a href="http://www.ticketlink.co.kr/product/29767" target="_self"
                           class="bx_img">
                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_4/메인_상단big배너_2000x470_2019스카슈퍼스웩페스티벌_v2.jpg" alt="상단 Big배너">
                        </a>
                    </div>
                
                    <div id="bigBanImage_9" class="visual_ban"
                         style="background-color:#111111;display: none">
                        <a href="http://www.ticketlink.co.kr/product/29642" target="_self"
                           class="bx_img">
                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_4/메인_상단big배너_2000x470_드라큘라.jpg" alt="상단 Big배너">
                        </a>
                    </div>
                
                <input type="hidden" name="bigBannerCnt" id="bigBannerCnt" value="10">
                <div class="area_thumb">
                    <ul class="lst_thumb">
                        
                            
                                
                                    
                                    <li onmouseover="this.style.cursor='pointer';selectBanner(0)" id="bigBanPage_0">
                                        <span class="bx_img">
                                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_2/썸네일_66x66_사랑의가객.jpg" width="66" height="66" alt="">
                                        </span>
                                        <span class="dummy_bg" id="dummy_bg_0"></span>
                                    </li>
                                
                            
                                
                                    
                                    <li onmouseover="this.style.cursor='pointer';selectBanner(1)" id="bigBanPage_1">
                                        <span class="bx_img">
                                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_7/썸네일_66x66_쇼미더머니8.jpg" width="66" height="66" alt="">
                                        </span>
                                        <span class="dummy_bg" id="dummy_bg_1"></span>
                                    </li>
                                
                            
                                
                                    
                                    <li onmouseover="this.style.cursor='pointer';selectBanner(2)" id="bigBanPage_2">
                                        <span class="bx_img">
                                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_7/썸네일_66x66_슈퍼스타.jpg" width="66" height="66" alt="">
                                        </span>
                                        <span class="dummy_bg" id="dummy_bg_2"></span>
                                    </li>
                                
                            
                                
                                    
                                    <li onmouseover="this.style.cursor='pointer';selectBanner(3)" id="bigBanPage_3">
                                        <span class="bx_img">
                                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_4/66x66(7).jpg" width="66" height="66" alt="">
                                        </span>
                                        <span class="dummy_bg" id="dummy_bg_3"></span>
                                    </li>
                                
                            
                                
                                    
                                    <li onmouseover="this.style.cursor='pointer';selectBanner(4)" id="bigBanPage_4">
                                        <span class="bx_img">
                                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_3/썸네일_66x66_adex.jpg" width="66" height="66" alt="">
                                        </span>
                                        <span class="dummy_bg" id="dummy_bg_4"></span>
                                    </li>
                                
                            
                                
                                    
                                    <li onmouseover="this.style.cursor='pointer';selectBanner(5)" id="bigBanPage_5">
                                        <span class="bx_img">
                                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_9/썸네일_66_66_김연자.jpg" width="66" height="66" alt="">
                                        </span>
                                        <span class="dummy_bg" id="dummy_bg_5"></span>
                                    </li>
                                
                            
                                
                                    
                                    <li onmouseover="this.style.cursor='pointer';selectBanner(6)" id="bigBanPage_6">
                                        <span class="bx_img">
                                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_3/썸네일_66_66_KB페스티벌_v2.jpg" width="66" height="66" alt="">
                                        </span>
                                        <span class="dummy_bg" id="dummy_bg_6"></span>
                                    </li>
                                
                            
                                
                                    
                                    <li onmouseover="this.style.cursor='pointer';selectBanner(7)" id="bigBanPage_7">
                                        <span class="bx_img">
                                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_6/벅스_150x150_미스트롯트9.jpg" width="66" height="66" alt="">
                                        </span>
                                        <span class="dummy_bg" id="dummy_bg_7"></span>
                                    </li>
                                
                            
                                
                                    
                                    <li onmouseover="this.style.cursor='pointer';selectBanner(8)" id="bigBanPage_8">
                                        <span class="bx_img">
                                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_6/썸네일_66x66_2019스카슈퍼스웩.jpg" width="66" height="66" alt="">
                                        </span>
                                        <span class="dummy_bg" id="dummy_bg_8"></span>
                                    </li>
                                
                            
                                
                                    
                                    <li onmouseover="this.style.cursor='pointer';selectBanner(9)" id="bigBanPage_9">
                                        <span class="bx_img">
                                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_1/66x66_D.jpg" width="66" height="66" alt="">
                                        </span>
                                        <span class="dummy_bg" id="dummy_bg_9"></span>
                                    </li>
                                
                            
                        
                    </ul>
                </div>
                <div class="trans_area top">
                    <script type="text/javascript" src="http://ads.netinsight.co.kr/NetInsight/js/ticketlink/mainbox/318@234"></script>
                </div>
                <hr/>
                <div class="trans_area">
                    
                        <a href="http://tketlink.dn.toastoven.net/static/event/naver/2019/perfomance/2019theaterprojet.html"><img
                                src="//image.toast.com/aaaaab/ticketlink/TKL_10/AD_318x234_0827.png"
                                width="318" height="234" alt="상단 우측"></a>
                    
                </div>
                <span class="opacity"></span>
            </div>
        </div>
        <div class="section_top">
            <div class="inner">
                <!--빠른 스포츠 예매-->
                <div id="mainBannerSportsList">
                    <h3>Sports 가장 빠른 스포츠 예매</h3>
                    <ul :class="setBannerSportsUlClass(sportsList)" v-if="templeteCode == 'A' || templeteCode == 'B'" v-cloak>
                        <!-- [D] 오늘경기가 아닐 경우 notoday 클래스 추가, 경기 없을 경우 off 클래스 추가, li의 짝수번째에 even 클래스 추가입니다. -->
                        <!-- [D] 경기가 있을 경우 li에 마우스 오버했을 경우 예매하기 버튼 show 해줍니다. css 기본 속성은 display:none 입니다. -->
                        <li v-for="(adminSports, index) in sportsList" v-if="adminSports.clubUrl != null"
                            @mouseover="mouseOverOutEvent(adminSports, true)" @mouseout="mouseOverOutEvent(adminSports, false)"
                            class="notoday" :class="bannerInfo(index)" v-cloak
                        >
                            <span class="today">오늘 경기</span>
                            <p class="emblem">
                                <a :href="adminSports.clubUrl">
                                    <img :src="adminSports.clubImagePath" width="100" height="80" :alt="adminSports.clubName">
                                    {{adminSports.clubName}}
                                </a>
                            </p>
                            <a :href="adminSports.clubUrl" class="btn reserve_sports" :id="'team' + adminSports.clubId" style="display: none;">
                                예매하기
                            </a>
                        </li>
                        <li v-for="adminSports in sportsList" v-if="adminSports.bannerUrl != null" class="end_banner">
                            <a :href="adminSports.bannerUrl" :target="bannerTarget(adminSports)">
                                <img :src="adminSports.bannerImagePath" width="318" height="135" alt="중간 배너" v-cloak>
                            </a>
                        </li>
                    </ul>
                    <ul :class="setBannerSportsUlClass(sportsList)" v-if="templeteCode == 'C' || templeteCode == 'D'" v-cloak>
                        <li v-for="(adminSports, index) in sportsList" v-if="adminSports.bannerUrl != null"
                            :class="setBannerSportsLiClass(index)">
                            <a :href="adminSports.bannerUrl" :target="bannerTarget(adminSports)">
                                <img :src="adminSports.bannerImagePath" style="width: 100%;"
                                     height="135" alt="스포츠배너" v-cloak></a>
                        </li>
                    </ul>
                </div>

                <!-- 빠른 스포츠 예매 end-->


                <p class="band_ban">
                    <script type="text/javascript"
                            src="http://ads.netinsight.co.kr/NetInsight/js/ticketlink/mainbelt/990@75"></script>
                </p>
                <div class="maintop_new open_spot">
                    <div class="maintop_left">
                        <div class="header">
                            <strong>티켓오픈</strong>
                            <a href="/help/notice" class="more">더보기</a>
                        </div>
                        <div class="maintop_cont">
                            <ul>
                                <li class="first">
                                    <a href="/help/notice/50819">
                                        <img src="//image.toast.com/aaaaab/ticketlink/TKL_6/n_main0905.jpg"
                                             alt="<b><font color=#339e00>[09/10(화) 15시] </font></b> 2019 김나영 콘서트 <솔직하게 말해서 나> - 부산 티켓오픈안내" width="180" height="218">
                                    </a>
                                </li>
                                
                                    <li>
                                        <a href="/help/notice/50846">
                                            <span class="ico_dot"></span><b><font color=#339e00>[09/11(수) 11시] </font></b>슈퍼스타 : THE ORIGINAL - 부산​ 티켓오픈 안내
                                        </a>
                                    </li>
                                
                                    <li>
                                        <a href="/help/notice/50837">
                                            <span class="ico_dot"></span><b><font color=#339e00>[09/11(수) 16시] </font></b>쇼미더머니8 콘서트 (Show Me The Money 8 Concert) - 부산 티켓오픈 안내
                                        </a>
                                    </li>
                                
                                    <li>
                                        <a href="/help/notice/50856">
                                            <span class="ico_dot"></span><b><font color=#339e00>[09/19(목) 14시] </font></b> 뮤지컬 <드라큘라>2차 티켓오픈안내
                                        </a>
                                    </li>
                                
                                    <li>
                                        <a href="/help/notice/50858">
                                            <span class="ico_dot"></span><b><font color=#339e00>[09/18(수) 14시] </font></b> 뮤지컬 <에드거 앨런 포> 스페셜 버전 2차 티켓 오픈 안내
                                        </a>
                                    </li>
                                
                                    <li>
                                        <a href="/help/notice/50843">
                                            <span class="ico_dot"></span><b><font color=#339e00>[09/17(수) 19시] </font></b>슈퍼스타 : THE ORIGINAL - 광주​ 티켓오픈 안내
                                        </a>
                                    </li>
                                
                            </ul>
                        </div>
                    </div>
                    <div class="maintop_right">
                        <div class="header">
                            <strong>Ticket Spot</strong>
                        </div>
                        <div class="maintop_cont">
                            <div id="PlayerContainer" class="movie 0" style="width:318px;height:180px;">
                                <iframe id="player" width="100%" height="100%" frameborder="0"
                                        allowfullscreen
                                        allow="autoplay;
                                encrypted-media"></iframe>
                            </div>
                            
                                <div class="movie_tit">
                                    <button type="button" class="prev" id="spot_prev"><span>이전</span></button>
                                    <a href="http://www.ticketlink.co.kr/product/29059"
                                       class="imgtxt go_reserve">2019 파주포크 페스티벌 (PAJU FOLK FESTIVAL) </a>
                                    <button type="button" class="next" id="spot_next"><span>다음</span></button>
                                </div>

                                <input type="hidden" class="hidden_spot_info" id="spot_length"
                                       value="1">
                                
                                    <input type="hidden" class="hidden_spot_info" id="spot_bannerUrl_0"
                                           value="http://www.ticketlink.co.kr/product/29059">
                                    <input type="hidden" class="hidden_spot_info" id="spot_product_name_0"
                                           value="2019 파주포크 페스티벌 (PAJU FOLK FESTIVAL) ">
                                    <input type="hidden" class="hidden_spot_info" id="spot_shortLink_0"
                                           value="https://player.vimeo.com/video/348543115">
                                

                            
                        </div>
                    </div>
                </div>
                
                
                
                

                <div class="maintop_new real_ranking">
                    <div class="maintop_left">
                        <div class="header">
                            <strong>실시간 랭킹</strong>
                            <a href="/ranking/reserve/daily" class="more">더보기</a>
                            <div class="paging_tab">
                                <!-- [D] 활성될 때 on 클래스 추가 -->
                                <a href="javascript:;" class="rankingTab on" id="concertTab" onclick="selectRanking('concert');">공연</a>
                                <a href="javascript:;" class="rankingTab" id="exhibitionTab"
                                   onclick="selectRanking('exhibition');">전시</a>
                            </div>
                        </div>
                        <div class="maintop_cont">
                            
                                <ul id="concertRankingListUl">
                                    <li class="first"><a class="rangkingImgLink"
                                                         href="/product/30080">
                                        <img class="rangkingImg" src="//image.toast.com/aaaaab/ticketlink/TKL_4/PH_jangyunjung_poster.jpg"
                                             width="180" height="218" alt="">
                                    </a></li>
                                    <!-- [D] 활성될 때 on 클래스 추가 -->
                                    
                                        <li class='rankingItem on'
                                            data-productid="30080"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_4/PH_jangyunjung_poster.jpg"><a
                                                href="/product/30080"><span
                                                class="num1">1</span>2019 장윤정 라이브 콘서트 - 포항</a></li>
                                    
                                        <li class='rankingItem'
                                            data-productid="30086"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_9/201909110913a.jpg"><a
                                                href="/product/30086"><span
                                                class="num2">2</span>하우스 콘서트 (허니보이스) - 군산</a></li>
                                    
                                        <li class='rankingItem'
                                            data-productid="29979"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_6/hl.jpg"><a
                                                href="/product/29979"><span
                                                class="num3">3</span>효린 소극장 라이브 [서서히 어른이 되어간다]</a></li>
                                    
                                        <li class='rankingItem'
                                            data-productid="29679"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_6/sh1_main0809.jpg"><a
                                                href="/product/29679"><span
                                                class="num4">4</span>마티아스 괴르네, 조성진 그리고 슈베르트</a></li>
                                    
                                        <li class='rankingItem'
                                            data-productid="29652"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_6/SPST_0905.jpg"><a
                                                href="/product/29652"><span
                                                class="num5">5</span>뮤지컬 <사랑했어요> (사랑의 가객 故김현식 뮤지컬) </a></li>
                                    
                                </ul>
                            
                            
                                <ul id="exhibitionRankingListUl" style="display : none;">
                                    <li class="first"><a class="rangkingImgLink"
                                                         href="/product/29598">
                                        <img class="rangkingImg" src="//image.toast.com/aaaaab/ticketlink/TKL_4/poster(314)_190802.jpg"
                                             width="180" height="218" alt="">
                                    </a></li>
                                    <!-- [D] 활성될 때 on 클래스 추가 -->
                                    
                                        <li class="rankingItem" data-productid="29598"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_4/poster(314)_190802.jpg"><a
                                                href="/product/29598"><span
                                                class="num1">1</span>청원생명축제</a></li>
                                    
                                        <li class="rankingItem" data-productid="28648"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_8/humanity_0611.jpg"><a
                                                href="/product/28648"><span
                                                class="num2">2</span>2019광주디자인비엔날레</a></li>
                                    
                                        <li class="rankingItem" data-productid="28465"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_5/poster(314)_190527.jpg"><a
                                                href="/product/28465"><span
                                                class="num3">3</span>2019 국제농업박람회</a></li>
                                    
                                        <li class="rankingItem" data-productid="28320"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_9/ABC.jpg"><a
                                                href="/product/28320"><span
                                                class="num4">4</span>그리스 보물전</a></li>
                                    
                                        <li class="rankingItem" data-productid="29899"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_8/b_main0222(1)(1).jpg"><a
                                                href="/product/29899"><span
                                                class="num5">5</span>빛의 벙커 : 클림트(9월권)</a></li>
                                    
                                </ul>
                            
                        </div>
                    </div>
                    <div class="maintop_right slide_wrap">
                        <ul class="slide_area">
                            <!-- [D] 활성상태일때 on 클래스 추가 -->
                            <li id="today_coupon" class="today_coupon">
                                <div class="header">
                                    <strong>오늘의 쿠폰</strong>
                                </div>
                                
                            </li>
                            <!-- [D] 활성상태일때 on 클래스 추가 -->
                            <li id="today_recom" class="today_recom on">
                                <div class="header">
                                    <strong>오늘의 추천</strong>
                                </div>
                                
                                    <div class="maintop_cont">
                                        <a href="http://www.ticketlink.co.kr/bridge/445">
                                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_10/오늘의추천_318x220_VOS.jpg"
                                                 width="318" height="220">
                                        </a>
                                    </div>
                                
                            </li>
                        </ul>
                        <div class="slide_ctrl"  style="display:none;" >
                            <!-- [D] 이전페이지 없을 경우 off 클래스, disabled="disabled" 추가 -->
                            <button type="button" id="prev_btn" class="prev">이전</button>
                            <!-- [D] 다음페이지 없을 경우 off 클래스 추가 -->
                            <button type="button" id="next_btn" class="next off">다음</button>
                        </div>
                    </div>
                </div>
                <div class="maintop_new payco_vip">
                    <div class="header">
                        <strong>PAYCO VIP</strong>
                        <a href="/vip/main" class="more">더보기</a>
                    </div>
                    <ul class="vip_list">
                        
                            <li>
                                <a href="/bridge/476">
                                                    <span class="list_img">
                                                        <img src="http://image.toast.com/aaaaab/ticketlink/TKL_3/mispst_0903.jpg"
                                                             alt="화제의 미스트롯트9 전국투어콘서트 - 서울">
                                                    </span>
                                    <div class="list_info">
                                        <strong class="elp">화제의 미스트롯트9 전국투어콘서트 - 서울</strong>
                                        <div class="pay_info">
                                                                <span class="discount">
                                                                    <span class="number">15</span>%
                                                                </span>
                                            <dl>
                                                <dt class="blind">원가</dt>
                                                <dd class="cost">
                                                    88,000원
                                                </dd>
                                                <dt class="blind">할인가</dt>
                                                <dd>
                                                    74,800원
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        
                            <li>
                                <a href="/product/29526">
                                                    <span class="list_img">
                                                        <img src="http://image.toast.com/aaaaab/ticketlink/TKL_9/leemija_0726.jpg"
                                                             alt="이미자 음악회 - 고양">
                                                    </span>
                                    <div class="list_info">
                                        <strong class="elp">이미자 음악회 - 고양</strong>
                                        <div class="pay_info">
                                                                <span class="discount">
                                                                    <span class="number">10</span>%
                                                                </span>
                                            <dl>
                                                <dt class="blind">원가</dt>
                                                <dd class="cost">
                                                    110,000원
                                                </dd>
                                                <dt class="blind">할인가</dt>
                                                <dd>
                                                    99,000원
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        
                            <li>
                                <a href="/product/29824">
                                                    <span class="list_img">
                                                        <img src="http://image.toast.com/aaaaab/ticketlink/TKL_8/CHW_0821.jpg"
                                                             alt="2019 최현우〈THE BRAIN> - 안산">
                                                    </span>
                                    <div class="list_info">
                                        <strong class="elp">2019 최현우〈THE BRAIN> - 안산</strong>
                                        <div class="pay_info">
                                                                <span class="discount">
                                                                    <span class="number">20</span>%
                                                                </span>
                                            <dl>
                                                <dt class="blind">원가</dt>
                                                <dd class="cost">
                                                    77,000원
                                                </dd>
                                                <dt class="blind">할인가</dt>
                                                <dd>
                                                    61,600원
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        
                            <li>
                                <a href="/product/29678">
                                                    <span class="list_img">
                                                        <img src="http://image.toast.com/aaaaab/ticketlink/TKL_2/jangsu_suwon0809.jpg"
                                                             alt="연극 <장수상회> - 수원">
                                                    </span>
                                    <div class="list_info">
                                        <strong class="elp">연극 <장수상회> - 수원</strong>
                                        <div class="pay_info">
                                                                <span class="discount">
                                                                    <span class="number">10</span>%
                                                                </span>
                                            <dl>
                                                <dt class="blind">원가</dt>
                                                <dd class="cost">
                                                    66,000원
                                                </dd>
                                                <dt class="blind">할인가</dt>
                                                <dd>
                                                    59,400원
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        
                            <li>
                                <a href="/product/28739">
                                                    <span class="list_img">
                                                        <img src="http://image.toast.com/aaaaab/ticketlink/TKL_4/secret_main_0617.jpg"
                                                             alt="시크릿쥬쥬 - 고양">
                                                    </span>
                                    <div class="list_info">
                                        <strong class="elp">시크릿쥬쥬 - 고양</strong>
                                        <div class="pay_info">
                                                                <span class="discount">
                                                                    <span class="number">50</span>%
                                                                </span>
                                            <dl>
                                                <dt class="blind">원가</dt>
                                                <dd class="cost">
                                                    55,000원
                                                </dd>
                                                <dt class="blind">할인가</dt>
                                                <dd>
                                                    27,500원
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        
                        

                    </ul>
                </div>
            </div>
        </div>
        
            <div class="section_week">
                <div class="inner">

                    <h3>이주의 공연 및 전시</h3>
                    <ul class="week_list">
                        <!-- [D] 뮤지컬 ribbon category1, 미팅 ribbon category2, 콘서트 ribbon category3 -->
                        <!-- [D] 상대우위 ribbon label level1, 단독판매 ribbon label level2, 절대우위 ribbon label level3 -->
                        
                            
                            
                            
                                
                                    <li class="two_top">
                                    
                                
                                
                                
                                
                                
                                
                                
                            
                            <a href="http://www.ticketlink.co.kr/bridge/421">
                                <span class="bg_gradation"></span>
                                <span class="list_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_8/486x300_kim.jpg" width="486" height="300" alt="">
                                </span>
                            </a>
                            </li>
                        
                            
                            
                            
                                
                                    <li class="two_top">
                                    
                                
                                
                                
                                
                                
                                
                                
                            
                            <a href="http://www.ticketlink.co.kr/product/27046">
                                <span class="bg_gradation"></span>
                                <span class="list_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_2/이주의-공연전시_486x300_극장앞독립군.jpg" width="486" height="300" alt="">
                                </span>
                            </a>
                            </li>
                        
                            
                            
                            
                                
                                
                                    <li class="ban_type1">
                                
                                
                                
                                
                                
                                
                            
                            <a href="http://www.ticketlink.co.kr/product/28320">
                                <span class="bg_gradation"></span>
                                <span class="list_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_2/이주의-공연전시_318x300_그리스보물전_v2.jpg" width="318" height="300" alt="">
                                </span>
                            </a>
                            </li>
                        
                            
                            
                            
                                
                                
                                
                                    <li>
                                
                                
                                
                                
                                
                            
                            <a href="http://www.ticketlink.co.kr/bridge/417">
                                <span class="bg_gradation"></span>
                                <span class="list_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_9/이주의공연전시_318x300_장윤정콘서트_v6.jpg" width="318" height="300" alt="">
                                </span>
                            </a>
                            </li>
                        
                            
                            
                            
                                
                                
                                
                                
                                    <li class="ban_type2">
                                    
                                    
                                
                                
                                
                                
                            
                            <a href="http://www.ticketlink.co.kr/product/29767">
                                <span class="bg_gradation"></span>
                                <span class="list_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_8/이주의공연전시_318x618_2019스카슈퍼스웩페스티벌(1).jpg" width="318" height="618" alt="">
                                </span>
                            </a>
                            </li>
                        
                            
                            
                            
                                
                                
                                
                                
                                
                                    <li class="ban_type2">
                                    
                                
                                
                                
                            
                            <a href="http://www.ticketlink.co.kr/bridge/491">
                                <span class="bg_gradation"></span>
                                <span class="list_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_6/이주의공연전시_318x300_바이브장혜진.jpg" width="318" height="300" alt="">
                                </span>
                            </a>
                            </li>
                        
                            
                            
                            
                                
                                
                                
                                
                                
                                
                                    <li>
                                    
                                
                                
                            
                            <a href="http://www.ticketlink.co.kr/bridge/506">
                                <span class="bg_gradation"></span>
                                <span class="list_img">
                                    <img src="//image.toast.com/aaaaab/ticketlink/TKL_5/이주의공연전시_318x300_다윈영의악의기원.jpg" width="318" height="300" alt="">
                                </span>
                            </a>
                            </li>
                        
                    </ul>
                </div>
            </div>
        

        
            <div class="section_best">
                <div class="inner">
                    <h3>Best 공연 및 전시</h3>
                    <ul class="best_list">
                        
                            <li><a href="http://www.ticketlink.co.kr/product/29857">

                                
                                    
								<span class="flag_vr level">
								  <em class="flag_txt">
									
                                        
                                        
                                            단독판매
                                        
                                        
                                        
                                    
								  </em>
								</span>
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_6/YWJ_0822.jpg" alt="2019 연우진 팬미팅"
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">2019 연우진 팬미팅</strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.09.28 ~ 2019.09.28</dd>
                                        <dt>장소</dt>
                                        <dd>성신여대 운정그린캠퍼스 대강당</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/bridge/496">

                                
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_4/south0730.jpg" alt="WEST SIDE / SOUTH SIDE"
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">WEST SIDE / SOUTH SIDE</strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.09.08 ~ 2019.09.22</dd>
                                        <dt>장소</dt>
                                        <dd>부천, 부산</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/product/29725">

                                
                                    
								<span class="flag_vr level">
								  <em class="flag_txt">
									
                                        
                                        
                                            단독판매
                                        
                                        
                                        
                                    
								  </em>
								</span>
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_7/camp_0813.jpg" alt="2019 K_Camping with dog Festival"
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">2019 K_Camping with dog Festival</strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.10.18 ~ 2019.10.20</dd>
                                        <dt>장소</dt>
                                        <dd>자작나무힐링캠프,내린천 수변공원</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/product/29861">

                                
                                    
								<span class="flag_vr level">
								  <em class="flag_txt">
									
                                        
                                        
                                            단독판매
                                        
                                        
                                        
                                    
								  </em>
								</span>
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_4/qtb0822.jpg" alt="QUEEN Real Tribute Band"
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">QUEEN Real Tribute Band</strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.10.12 ~ 2019.10.12</dd>
                                        <dt>장소</dt>
                                        <dd>대구스타디움(대구월드컵경기장)</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/product/29979">

                                
                                    
								<span class="flag_vr level">
								  <em class="flag_txt">
									
                                        
                                        
                                            단독판매
                                        
                                        
                                        
                                    
								  </em>
								</span>
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_6/hl.jpg" alt="효린 소극장 라이브"
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">효린 소극장 라이브</strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.09.27 ~ 2019.09.28</dd>
                                        <dt>장소</dt>
                                        <dd>구름아래소극장</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/product/29874">

                                
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_3/poster(314)_190826.jpg" alt="청춘아레나 2019 "
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">청춘아레나 2019 </strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.10.05 ~ 2019.10.06</dd>
                                        <dt>장소</dt>
                                        <dd>인천 문학경기장 주경기장</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/product/29767">

                                
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/poster(314)_190819.jpg" alt="스카페스티벌 시즌5"
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">스카페스티벌 시즌5</strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.10.26 ~ 2019.10.26</dd>
                                        <dt>장소</dt>
                                        <dd>인천남동체육관</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/product/29544">

                                
                                    
								<span class="flag_vr level">
								  <em class="flag_txt">
									
                                        
                                        
                                            단독판매
                                        
                                        
                                        
                                    
								  </em>
								</span>
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_8/zan_main0820.jpg" alt="잔다리페스타 2019"
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">잔다리페스타 2019</strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.09.26 ~ 2019.09.29</dd>
                                        <dt>장소</dt>
                                        <dd>홍대 무브홀 외 9개처</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/product/28137">

                                
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_6/rapbeat_0820.jpg" alt="KB RAPBEAT FESTIVAL 2019 "
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">KB RAPBEAT FESTIVAL 2019 </strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.09.28 ~ 2019.09.28</dd>
                                        <dt>장소</dt>
                                        <dd>서울랜드</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/product/28633">

                                
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_3/city_main08131315.jpg" alt="뮤지컬 <시티오브엔젤>"
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">뮤지컬 <시티오브엔젤></strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.08.07 ~ 2019.10.20</dd>
                                        <dt>장소</dt>
                                        <dd>충무아트센터 대극장</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/bridge/416">

                                
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_10/joo0828.jpg" alt="주현미 콘서트"
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">주현미 콘서트</strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.10.12 ~ 2019.11.16</dd>
                                        <dt>장소</dt>
                                        <dd>대전,대구</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/product/30013">

                                
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_6/m_main0905.jpg" alt="매그넘인파리(얼리버드)"
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">매그넘인파리(얼리버드)</strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.09.25 ~ 2020.02.09</dd>
                                        <dt>장소</dt>
                                        <dd>예술의전당 한가람 디자인 미술관</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/product/29474">

                                
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/moon_info08081715.jpg" alt="NEW 달을품은슈퍼맨"
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">NEW 달을품은슈퍼맨</strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.08.30 ~ 2019.10.20</dd>
                                        <dt>장소</dt>
                                        <dd>드림아트센터 2관</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/product/28385">

                                
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_6/b_main09031812.jpg" alt="브릭캠퍼스 서울"
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">브릭캠퍼스 서울</strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.07.20 ~ 2019.12.29</dd>
                                        <dt>장소</dt>
                                        <dd>갤러리아포레 G층 더 서울라이티움 1,3관</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/product/28046">

                                
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_2/ABC_314-382.jpg" alt="빛의 화가들 展"
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">빛의 화가들 展</strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.06.08 ~ 2019.09.29</dd>
                                        <dt>장소</dt>
                                        <dd>부산문화회관 전시실</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                            <li><a href="http://www.ticketlink.co.kr/product/28169">

                                
                                    
                                

                                

                                <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_4/oz_main0610.jpg" alt="오즈의 미술관"
                                        onerror="this.src='http://alpha-photo.toast.com/aaaaan/thumbx/이미지준비중 (1)(2).jpg';"></p>
                                <div class="list_info">
                                    <strong class="elp">오즈의 미술관</strong>
                                    <dl>
                                        <dt>기간</dt>
                                        <dd>2019.05.31 ~ 2019.11.10</dd>
                                        <dt>장소</dt>
                                        <dd>K 현대미술관</dd>
                                    </dl>
                                </div>
                            </a></li>
                        
                    </ul>
                </div>
            </div>
        
        <div id="mainVuenuSection" class="section_venue" v-if="venueList.length > 0">
            <div class="inner">
                <h3>공연장</h3>
                <div class="venue_bx">
                    <div class="tab_venue"
                         :class="{'type2' : totalPage === 1}">
                        <button type="button"
                                class="prev"
                                :class="{'on' : currentPage !== 0}"
                                @click="playSlide('prev')">
                            <span>이전</span>
                        </button>
                        <div class="venue_list_wrap">
                            <ul class="venue_list" :class="getHeaderClass" :style="getHeaderStyle">
                                <!-- [D] 해당 영역 width 값은 178 x 메뉴갯수 -->
                                <!-- [D] 해당 영역 li가 4개 이하일경우  width 값은 988px -->
                                <siema v-if="isLoad && venueList.length > 5" ref="siema" :options="siemaOptions" :current.sync="slideIndex"
                                       class="siema s">
                                    <li v-for="(data, index) in venueList"
                                        :key="index"
                                        :class="{'on': data === selectedVenue}"
                                        @mouseover="selectVenue(data)">
                                        <a href="javascript:;" v-text="data.venueName"></a>
                                    </li>
                                </siema>
                                <li v-if="venueList.length <= 5" v-for="(data, index) in venueList"
                                    :key="index"
                                    :class="{'on': data === selectedVenue}"
                                    @mouseover="selectVenue(data)">
                                    <a href="javascript:;" v-text="data.venueName"></a>
                                </li>
                            </ul>
                        </div>
                        <button type="button"
                                class="next"
                                :class="{'on' : (currentPage + 1) < totalPage, 'end' : (currentPage + 1) === totalPage}"
                                @click="playSlide('next')">
                            <span>다음</span>
                        </button>
                    </div>
                    <div class="venue_cont"
                         :style="{ backgroundImage: 'url(' + selectedVenue.mainVenueImagePath + ')'}">
                        <ul class="lst_venue_item">
                            <li class="venue">
                                <a :href="'/venue/main#' + selectedVenue.venueId">
                                    <strong class="blind">국립극장 2017-2018 레퍼토리시즌</strong>
                                    <span class="blind">우리 전통 공연예술을 새롭게 창조하여 새롭게 내놓는 국내 유일의 제작극장!</span>
                                </a>
                            </li>
                            <li v-for="(product, index) in selectedProducts"
                                :key="index"
                                class="performance">
                                <a :href="'/product/' + product.productId">
                                    <span class="bx_img">
                                        <img :src="product.productImagePath"
                                             :alt="product.productThumbName || product.productName">
                                    </span>
                                    <div class="item_info">
                                        <strong class="item_tit elp" v-text="product.productThumbName || product.productName"></strong>
                                        <dl class="dsc">
                                            <dt class="blind">기간</dt>
                                            <dd v-text="dateFormat(product.startDate, product.endDate)"></dd>
                                            <dt class="blind">장소</dt>
                                            <dd class="elp" v-text="product.hallName"></dd>
                                        </dl>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="wingban wingleft" id="wingleft">
            <ul>
                
                    <li>
                        <a href="http://www.ticketlink.co.kr/venue/main#24">
                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_5/[제작용]공연메인_좌측날개배너_98x170_국립극장(1).jpg" width="98" height="170" alt="">
                        </a>
                    </li>
                
                    <li>
                        <a href="http://www.ticketlink.co.kr/venue/main#4">
                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_6/[제작용]공연메인_좌측날개배너_98x170_롯데콘서트홀.jpg" width="98" height="170" alt="">
                        </a>
                    </li>
                
                    <li>
                        <a href="http://www.ticketlink.co.kr/bridge/509">
                            <img src="//image.toast.com/aaaaab/ticketlink/TKL_1/윙배너_98x170_세종풍미.jpg" width="98" height="170" alt="">
                        </a>
                    </li>
                
            </ul>
        </div>
        <div class="wingban wingright" id="wingright">
            <!-- [D] 오늘 본 상품이 없을 경우 숨김처리 영역 -->
            <div class="today_view" id="today_view">
                <strong>오늘본 상품</strong>
                <div class="today_cont">
                    <ul id="today_cont">
                    </ul>
                </div>
                <div class="today_button">
                    <div id="buttons">
                        <button type="button" class="prev" onclick="todayViewProductBannerPrev()">이전</button>
                        <button type="button" class="next" onclick="todayViewProductBannerNext()">다음</button>
                    </div>
                </div>
            </div>
            <!-- //[D] 오늘 본 상품이 없을 경우 숨김처리 영역 -->
            <ul class="push">
                
                    <li><a href="http://www.ticketlink.co.kr/venue/main#5"><img src="//image.toast.com/aaaaab/ticketlink/TKL_7/[제작용]메인_우측날개배너_98x125_대구콘서트하우스.jpg" width="98"
                                                                                 height="125" alt=""></a></li>
                
                    <li><a href="http://www.ticketlink.co.kr/venue/main#26"><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/susung(1).jpg" width="98"
                                                                                 height="125" alt=""></a></li>
                
            </ul>
        </div>

        <div class="ly_pop_wrap home" id="urgentNotice" style="display:none">
            <div class="pop_header">
                <strong class="tit">티켓링크 공지사항</strong>
            </div>
            <div class="pop_contents">
                <!-- [D] 길어질 경우 2줄 말줄임 처리 -->
                <p class="tit_notice"></p>
                <!-- [D] 팝업 제목 길이에 따라 .bx_notice의 min-height, max-height, margin-top 값이 달라집니다.
                    (1) 공지 제목이 한 줄인 경우 (기본값)
                        min-height:206px, max-height:356px, margin-top:33px
                    (2) 공지 제목이	두 줄인 경우
                        min-height:192px, max-height:342px, margin-top:47px
                    입니다. -->
                <div class="bx_notice" style="min-height:206px;max-height:356px;margin-top:33px">

                </div>
            </div>
            <div class="bx_etc">
                         <span id="today_open" style="display: none">
                        <input type="checkbox" class="inp_chk">
                        <label for="today_open">오늘 하루 열지 않음</label>
                        </span>
                <button type="button" class="btn_close"><span class="sp">공지사항 팝업 닫기</span></button>
            </div>
        </div>


    </div>
    




<a href="javascript:window.scrollTo(0,0);" id="back_to_top">위로</a>
<!-- <div id="footer">
    <div class="inner">
        <strong class="footer_logo">ticketlink</strong>
        <div class="f_menu">
            <a href="javascript:;"
               onclick="window.open('http://www.ticketlink.co.kr/introduction/company','회사소개','width=1400, height=1000, scrollbars=yes')">회사소개</a><span>|</span>
            <a href="http://www.ticketlink.co.kr/terms/personalInformation" class="personal">개인정보 처리방침</a><span>|</span>
            <a href="http://www.ticketlink.co.kr/terms/use">이용약관</a><span>|</span>
            <a href="http://www.ticketlink.co.kr/help/main">고객센터</a><span>|</span>
            <a href="http://www.ticketlink.co.kr/help/partner">티켓판매안내</a><span>|</span>
            <a href="http://www.ticketlink.co.kr/advertisement">광고안내</a>
        </div>
        <address>주소 : <em class="lspacing0">13487</em> 경기도 성남시 분당구 대왕판교로645번길 16 NHN 플레이뮤지엄<span>|</span> 대표이사 : 고영준 <span>|</span> 사업자등록번호 :
            <em class="lspacing0">144-81-25090</em></address>
        <p class="co_info">
            <em class="lspacing0">1588-7890</em> <span>|</span> <a href="mailto:membership@ticketlink"
                                                                   class="lspacing0">membership@ticketlink.co.kr</a> <span>|</span> 통신판매업 신고번호 : 제 <em
                class="lspacing0">2015</em>-경기성남-<em class="lspacing0">0661</em>호 <a
                href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1448125090" target="_blank"
                class="co_check">사업자정보확인</a><span>|</span> 개인정보보호 책임자 : 최지혜
        </p>
        <p class="copy">Copyright &copy; NHN Ticketlink Corporation. All rights reserved.</p>
    </div>
</div> -->


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


</div>

<script type="text/javascript" src="/resources/js/todayViewProductBanner.js"></script>
<script type="text/javascript" src="/resources/js/mainRankingBanner.js"></script>
<script type="text/javascript" src="/resources/js/mainTodayBanner.js"></script>
<script type="text/javascript" src="/resources/js/rollingBigBannerMain-4a0be080c977bf58e5089371efad8895.js"></script>
<script type="text/javascript" src="/resources/js/ticketSpotBanner.js"></script>
<script type="text/javascript" src="/resources/jsdev/main/urgentNotice/tk.main.urgentNotice.view.js" charset="utf-8"></script>
<script type="text/javascript">
	//<![CDATA[
	$(document).ready(function () {
		$(window).scroll(function () {
			if ($(window).scrollTop() > 420) {
				$("#wingleft").addClass("moving");
				$("#wingright").addClass("moving");

			} else if ($(window).scrollTop() <= 420) {
				$("#wingleft").removeClass("moving");
				$("#wingright").removeClass("moving");
			}
		});

		setTodayViewProduct();

		$("#prev_btn").on("click", clickLeftButton);
		$("#next_btn").on("click", clickRightButton);


		tk.main.urgentNotice.View.init();


	});


</script>
<script src="/resources/js/dist/vendors.js"></script>
<script src="/resources/js/dist/tk.venue-section.js"></script>
<script src="/resources/js/dist/tk.banner-sports.js"></script>
<script>
	tk.venue.section.init(
		[{"venueId":25,"venueName":"세종문화회관","venueImageId":2030106,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/공연장_빅배너_v2.jpg","mainVenueImageId":2030105,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_5/메인_공연장배경_최종_v2.jpg","exposureStateCode":"EXPOSURE","useFlag":true,"mainUseFlag":true,"placeIdMultiple":"4422,4514,4749,4715,4714,4838,5469,15208","bgColorCode":"#5C1163","venueOrder":1},{"venueId":24,"venueName":"국립극장","venueImageId":1949068,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_5/공연장_빅배너_국립극장.jpg","mainVenueImageId":1949067,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_4/메인_공연장배경_국립극장.jpg","exposureStateCode":"EXPOSURE","useFlag":true,"mainUseFlag":true,"placeIdMultiple":"4483,4495,4601,4823,4776,4923","bgColorCode":"F2F2F2","venueOrder":2},{"venueId":5,"venueName":"대구콘서트하우스","venueImageId":1941129,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_3/공연장_빅배너_대구콘서트하우스.jpg","mainVenueImageId":1941121,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/메인_공연장배경_대구콘서트하우스.jpg","exposureStateCode":"EXPOSURE","useFlag":true,"mainUseFlag":true,"placeIdMultiple":"14820","bgColorCode":"1B0B0B","venueOrder":3},{"venueId":4,"venueName":"롯데콘서트홀","venueImageId":1899011,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/공연장_빅배너_롯데콘서트홀.jpg","mainVenueImageId":1941119,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_3/메인_공연장배경_롯데콘서트홀.jpg","exposureStateCode":"EXPOSURE","useFlag":true,"mainUseFlag":true,"placeIdMultiple":"14884","bgColorCode":"431B0F","venueOrder":4},{"venueId":8,"venueName":"금호아트홀","venueImageId":1928088,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_2/공연장_빅배너_금호아트홀.jpg","mainVenueImageId":1941118,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_5/메인_공연장배경_금호아트홀.jpg","exposureStateCode":"EXPOSURE","useFlag":true,"mainUseFlag":true,"placeIdMultiple":"14722","bgColorCode":"1B0B0B","venueOrder":5},{"venueId":26,"venueName":"대구수성아트피아","venueImageId":1949073,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/공연장_빅배너_수성아트피아.jpg","mainVenueImageId":1949072,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_6/메인_공연장배경_수성아트피아.jpg","exposureStateCode":"EXPOSURE","useFlag":true,"mainUseFlag":true,"placeIdMultiple":"4387","bgColorCode":"0D0208","venueOrder":6},{"venueId":35,"venueName":"대구문화예술회관","venueImageId":2667391,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_9/공연장_빅배너_2000x470_대구문화예술회관.jpg","mainVenueImageId":2667390,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_7/메인_공연장하단_988x324_대구문화예술회관.jpg","exposureStateCode":"EXPOSURE","useFlag":false,"mainUseFlag":false,"placeIdMultiple":"4421","bgColorCode":"#ffffff","venueOrder":7},{"venueId":23,"venueName":"광주문화예술회관","venueImageId":1949066,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/공연장_빅배너_광주문화예술회관.jpg","mainVenueImageId":1949065,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_5/메인_공연장배경_광주문화예술회관.jpg","exposureStateCode":"EXPOSURE","useFlag":true,"mainUseFlag":true,"placeIdMultiple":"4467","bgColorCode":"E1E1E1","venueOrder":8},{"venueId":33,"venueName":"어울아트센터","venueImageId":2079238,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_1/공연장_빅배너_2000x470_어울아트센터.jpg","mainVenueImageId":2079237,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_7/메인_공연장하단_988x324_어울아트센터.jpg","exposureStateCode":"EXPOSURE","useFlag":false,"mainUseFlag":false,"placeIdMultiple":"4445,14954","bgColorCode":"#ffffff","venueOrder":9},{"venueId":34,"venueName":"봉산문화회관","venueImageId":2370985,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_4/공연장_빅배너_2000x470_봉산문화회관.jpg","mainVenueImageId":2370984,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_7/메인_공연장하단_988x324_봉산문화회관.jpg","exposureStateCode":"EXPOSURE","useFlag":true,"mainUseFlag":true,"placeIdMultiple":"4411,4849,4971","bgColorCode":"#ffffff","venueOrder":10},{"venueId":29,"venueName":"포항문화예술회관","venueImageId":2023320,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/공연장_빅배너_포항문화재단_2000x470.jpg","mainVenueImageId":2023319,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_7/메인_공연장배경_포항문화예술회관.jpg","exposureStateCode":"EXPOSURE","useFlag":false,"mainUseFlag":false,"placeIdMultiple":"5267,4443","bgColorCode":"D6E8F2","venueOrder":11},{"venueId":30,"venueName":"경주예술의전당","venueImageId":2023322,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_5/공연장_빅배너_경주예술의전당_2000x470.jpg","mainVenueImageId":2023321,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_9/메인_공연장배경_경주예술의전당.jpg","exposureStateCode":"EXPOSURE","useFlag":true,"mainUseFlag":true,"placeIdMultiple":"14700,5122","bgColorCode":"140907","venueOrder":12},{"venueId":31,"venueName":"아양아트센터","venueImageId":2033398,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_9/공연장_빅배너_아양아트센터.jpg","mainVenueImageId":2033397,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_7/메인_공연장배경_아양아트센터.jpg","exposureStateCode":"EXPOSURE","useFlag":false,"mainUseFlag":false,"placeIdMultiple":"4450,5332","bgColorCode":"#ffffff","venueOrder":13},{"venueId":32,"venueName":"웃는얼굴아트센터","venueImageId":2033400,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_3/공연장_빅배너_아양아트센터_v2.jpg","mainVenueImageId":2033399,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/메인_공연장배경_웃는아트센터_v2.jpg","exposureStateCode":"EXPOSURE","useFlag":false,"mainUseFlag":false,"placeIdMultiple":"4452,5468","bgColorCode":"#ffffff","venueOrder":14},{"venueId":27,"venueName":"안동문화예술의전당","venueImageId":1949078,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/공연장_빅배너_안동문화예술회관.jpg","mainVenueImageId":1949077,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/메인_공연장배경_안동문화예술회관.jpg","exposureStateCode":"EXPOSURE","useFlag":true,"mainUseFlag":true,"placeIdMultiple":"4492","bgColorCode":"DD8B41","venueOrder":15},{"venueId":36,"venueName":"test","venueImageId":2683851,"venueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_1/11.png","mainVenueImageId":2683850,"mainVenueImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_5/11.png","exposureStateCode":"EXPOSURE","useFlag":false,"mainUseFlag":false,"placeIdMultiple":"15406,14971","bgColorCode":"390F01","venueOrder":16}],
		[{"venueProductId":971,"venueProductOrder":0,"venueId":27,"productId":29741,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_3/M_0816.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1569596400000,"endDate":1569596400000,"hallName":"안동문화예술의전당 백조홀","productName":"연극 만리향 - 안동","productThumbName":"연극 만리향 - 안동"},{"venueProductId":972,"venueProductOrder":1,"venueId":27,"productId":29714,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_5/pianoman_poster.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1570546800000,"endDate":1570546800000,"hallName":"안동문화예술의전당 백조홀","productName":"[10월 브런치콘서트] 클래식과 재즈의 만남 <피아노 맨즈> - 안동","productThumbName":"<피아노 맨즈> - 안동"},{"venueProductId":973,"venueProductOrder":2,"venueId":27,"productId":29719,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_7/mozzart_poster.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1568646000000,"endDate":1568646000000,"hallName":"안동문화예술의전당 백조홀","productName":"클래식 음악극 <반짝 반짝 별이 된 모차르트> - 안동","productThumbName":"모차르트 - 안동"},{"venueProductId":974,"venueProductOrder":3,"venueId":27,"productId":29253,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_8/crazy_main0712.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1568905200000,"endDate":1568905200000,"hallName":"안동문화예술의전당 웅부홀","productName":"코믹 판타스틱쇼 [크레이지 오페라] - 안동","productThumbName":"[크레이지 오페라]-안동"},{"venueProductId":902,"venueProductOrder":0,"venueId":32,"productId":29346,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_6/dg_apple_0718.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1565276400000,"endDate":1565276400000,"hallName":"대구 웃는얼굴아트센터 청룡홀","productName":"애플재즈오케스트라 Summer Jazz Concert - 대구","productThumbName":"Summer Jazz Concert - 대구"},{"venueProductId":979,"venueProductOrder":0,"venueId":30,"productId":29943,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_4/itda_poster.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1569337200000,"endDate":1569337200000,"hallName":"경주예술의전당 화랑홀","productName":"신국악 콘서트 '잇다' - 경주","productThumbName":"신국악 콘서트 '잇다'"},{"venueProductId":980,"venueProductOrder":1,"venueId":30,"productId":29890,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_6/kung_0827(1).jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1571756400000,"endDate":1571756400000,"hallName":"경주예술의전당 화랑홀","productName":"2시의 콘서트 명작단편소설뮤지컬<쿵짝> - 경주","productThumbName":"뮤지컬 쿵짝 - 경주"},{"venueProductId":981,"venueProductOrder":2,"venueId":30,"productId":29681,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_8/h_main0809.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1568473200000,"endDate":1569164400000,"hallName":"경주예술의전당 화랑홀","productName":"한수원프리미어콘서트 슈베르트 페스티벌 패키지권","productThumbName":"슈베르트 페스티벌 패키지권"},{"venueProductId":982,"venueProductOrder":3,"venueId":30,"productId":29680,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_4/pi_info0809.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1569164400000,"endDate":1569164400000,"hallName":"경주예술의전당 화랑홀","productName":"피터 비스펠베이 첼로 리사이틀 - 첼로로 부르는 슈베르트","productThumbName":"첼로로 부르는 슈베르트"},{"venueProductId":931,"venueProductOrder":0,"venueId":34,"productId":27024,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_5/314_web0129.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"408","hasBridgeId":false,"startDate":1574780400000,"endDate":1574780400000,"hallName":"대구 봉산문화회관 스페이스라온","productName":"문화가 있는날 앙상블시리즈 11월 〈세계명작소설과 현대춤 '햄릿'〉","productThumbName":"세계명작소설과 현대춤 햄릿"},{"venueProductId":932,"venueProductOrder":1,"venueId":34,"productId":29447,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_6/2fhouse_poster0726.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1571929200000,"endDate":1572102000000,"hallName":"대구 봉산문화회관 가온홀","productName":"뮤지컬 북성로 이층집 - 대구","productThumbName":"북성로 이층집 - 대구"},{"venueProductId":933,"venueProductOrder":2,"venueId":34,"productId":27026,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_6/314_web0129.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"408","hasBridgeId":false,"startDate":1577199600000,"endDate":1577199600000,"hallName":"대구 봉산문화회관 스페이스라온","productName":"문화가 있는날 앙상블시리즈 12월 〈송년음악회 '크리스마스 판타지'〉","productThumbName":"크리스마스 판타지"},{"venueProductId":934,"venueProductOrder":3,"venueId":34,"productId":28855,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_8/ogi_0713.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1567695600000,"endDate":1567695600000,"hallName":"대구 봉산문화회관 가온홀","productName":"뮤지컬 오늘을 기억해 - 대구","productThumbName":"뮤지컬 오늘을 기억해"},{"venueProductId":967,"venueProductOrder":0,"venueId":23,"productId":29617,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_9/11_0805.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1570460400000,"endDate":1570460400000,"hallName":"광주문화예술회관 소극장","productName":"김이곤의 11시 클래식 산책 '슈베르트, 겨울나그네'","productThumbName":"김이곤의 11시 클래식 산책"},{"venueProductId":968,"venueProductOrder":1,"venueId":23,"productId":27331,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/Ticketlink_nonfile_web(297)(1).png","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1553785200000,"endDate":1569596400000,"hallName":"광주문화예술회관 대극장","productName":"GMO 오페라 ALL(패키지) - 광주","productThumbName":"GMO 오페라 ALL(패키지) - 광주"},{"venueProductId":969,"venueProductOrder":2,"venueId":23,"productId":29738,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/GJ_main_0814.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1568732400000,"endDate":1568732400000,"hallName":"광주문화예술회관 소극장","productName":"광주시립교향악단 제346회 정기연주회 '베토벤 교향곡3번: 영웅'","productThumbName":"광주시립교향악단정기연주회"},{"venueProductId":970,"venueProductOrder":3,"venueId":23,"productId":29822,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/df_main0826.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1569510000000,"endDate":1569596400000,"hallName":"광주문화예술회관 대극장","productName":"[광주시립오페라단] 베르디 오페라 운명의 힘","productThumbName":"베르디 오페라 운명의 힘"},{"venueProductId":963,"venueProductOrder":0,"venueId":26,"productId":26834,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_8/sapst_0125.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"397","hasBridgeId":false,"startDate":1576508400000,"endDate":1576508400000,"hallName":"대구 수성아트피아 용지홀","productName":"사라장 바이올린 리사이틀 - 대구","productThumbName":"사라장 리사이틀 - 대구"},{"venueProductId":964,"venueProductOrder":1,"venueId":26,"productId":26829,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_6/DOLL_poster0802.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"397","hasBridgeId":false,"startDate":1575039600000,"endDate":1575126000000,"hallName":"대구 수성아트피아 용지홀","productName":"국립발레단 [호두까기인형] - 대구","productThumbName":"국립발레단 [호두까기인형] - 대구"},{"venueProductId":965,"venueProductOrder":2,"venueId":26,"productId":29543,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/[윤종신]티켓링크메인_314x382.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"495","hasBridgeId":false,"startDate":1568991600000,"endDate":1568991600000,"hallName":"대구 수성아트피아 용지홀","productName":"2019 윤종신 콘서트 '이방인' - 대구","productThumbName":"윤종신 콘서트 - 대구"},{"venueProductId":966,"venueProductOrder":3,"venueId":26,"productId":29352,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_8/vos_main_0718.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"445","hasBridgeId":false,"startDate":1575471600000,"endDate":1575471600000,"hallName":"대구 수성아트피아 용지홀","productName":"V.O.S콘서트 '퇴근하고 여기 어때?' - 대구","productThumbName":"V.O.S콘서트 - 대구"},{"venueProductId":959,"venueProductOrder":0,"venueId":8,"productId":27927,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/20190919_imaikimtaehyung.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1568818800000,"endDate":1568818800000,"hallName":"금호아트홀 연세","productName":"금호 아름다운 목요일 - 이마이 노부코&김태형","productThumbName":"이마이 노부코&김태형"},{"venueProductId":960,"venueProductOrder":1,"venueId":8,"productId":28682,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_8/jiwoo0612.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1567782000000,"endDate":1567782000000,"hallName":"금호아트홀 연세","productName":"금호영재콘서트 : 권지우 첼로 독주회","productThumbName":"권지우 첼로 독주회"},{"venueProductId":961,"venueProductOrder":2,"venueId":8,"productId":27968,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_7/20191024_steven.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1571842800000,"endDate":1571842800000,"hallName":"금호아트홀 연세","productName":"금호 아름다운 목요일 - 스티븐 오스본 Piano","productThumbName":"스티븐 오스본 Piano (금호)"},{"venueProductId":962,"venueProductOrder":3,"venueId":8,"productId":27928,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_7/20190926_sei.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1569423600000,"endDate":1569423600000,"hallName":"금호아트홀 연세","productName":"금호 아름다운 목요일 - 알렉세이 루비모프 Piano","productThumbName":"알렉세이 루비모프 Piano"},{"venueProductId":955,"venueProductOrder":0,"venueId":4,"productId":25337,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_7/onair_main_0514.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"375","hasBridgeId":false,"startDate":1570546800000,"endDate":1570546800000,"hallName":"롯데콘서트홀","productName":"[L Concert] 헐리우드 온 에어","productThumbName":"헐리우드 온 에어"},{"venueProductId":956,"venueProductOrder":1,"venueId":4,"productId":26155,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_3/b-post-1122.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"375","hasBridgeId":false,"startDate":1569596400000,"endDate":1569596400000,"hallName":"롯데콘서트홀","productName":"베를리오즈 시리즈. 온스크린 오페라 <벤베누토 첼리니>","productThumbName":"<벤베누토 첼리니>"},{"venueProductId":957,"venueProductOrder":2,"venueId":4,"productId":25280,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_6/314bram01111107.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"375","hasBridgeId":false,"startDate":1569337200000,"endDate":1573570800000,"hallName":"롯데콘서트홀","productName":"[L Concert] 김정원의 음악신보 : 브람스","productThumbName":"김정원의 음악신보 : 브람스"},{"venueProductId":958,"venueProductOrder":3,"venueId":4,"productId":26148,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_8/a-post-1122.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"375","hasBridgeId":false,"startDate":1568818800000,"endDate":1568818800000,"hallName":"롯데콘서트홀","productName":"오르간 시리즈 XIV. 아르비드 가스트","productThumbName":"아르비드 가스트"},{"venueProductId":975,"venueProductOrder":0,"venueId":5,"productId":29837,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_8/NYCP_info0822-01.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"505","hasBridgeId":false,"startDate":1570719600000,"endDate":1570719600000,"hallName":"대구콘서트하우스 그랜드홀","productName":"뉴욕 클래시컬 플레이어스(NYCP) - 2019WOS","productThumbName":"뉴욕 클래시컬 플레이어즈"},{"venueProductId":976,"venueProductOrder":1,"venueId":5,"productId":29838,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_4/mu_info0822-01.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"505","hasBridgeId":false,"startDate":1572015600000,"endDate":1572015600000,"hallName":"대구콘서트하우스 그랜드홀","productName":"무직콜레기움 빈터투어 - 2019WOS","productThumbName":"무직콜레기움 빈터투어"},{"venueProductId":977,"venueProductOrder":2,"venueId":5,"productId":29840,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_2/b_main0822.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"505","hasBridgeId":false,"startDate":1572706800000,"endDate":1572706800000,"hallName":"대구콘서트하우스 그랜드홀","productName":"빈 필하모닉 오케스트라 - 2019WOS","productThumbName":"빈 필하모닉 오케스트라"},{"venueProductId":978,"venueProductOrder":3,"venueId":5,"productId":29843,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_1/ma_main0823.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"505","hasBridgeId":false,"startDate":1575817200000,"endDate":1575817200000,"hallName":"대구콘서트하우스 그랜드홀","productName":"마린스키 오케스트라 - 2019WOS","productThumbName":"마린스키 오케스트라"},{"venueProductId":907,"venueProductOrder":0,"venueId":24,"productId":29393,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_3/chusuk_poster0724.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1568300400000,"endDate":1568473200000,"hallName":"국립극장 하늘극장","productName":"국립무용단 명절기획시리즈 <추석 · 만월>","productThumbName":"<추석 · 만월>"},{"venueProductId":908,"venueProductOrder":1,"venueId":24,"productId":29396,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_5/King-Lear_poster0725.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1568818800000,"endDate":1569596400000,"hallName":"국립극장 달오름극장","productName":"NT Live <리어왕>","productThumbName":"NT Live <리어왕>"},{"venueProductId":909,"venueProductOrder":2,"venueId":24,"productId":29453,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_2/ong0724.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1567090800000,"endDate":1567868400000,"hallName":"국립극장 달오름극장","productName":"국립창극단 <변강쇠 점 찍고 옹녀>","productThumbName":"변강쇠 점 찍고 옹녀"},{"venueProductId":910,"venueProductOrder":3,"venueId":24,"productId":29458,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_6/music_0724.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1567522800000,"endDate":1567522800000,"hallName":"국립극장 하늘극장","productName":"2019 정오의 음악회 9월","productThumbName":"2019 정오의 음악회 9월"},{"venueProductId":983,"venueProductOrder":0,"venueId":25,"productId":26421,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_8/heo_0909.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"509","hasBridgeId":false,"startDate":1570633200000,"endDate":1570806000000,"hallName":"세종문화회관 M씨어터","productName":"동무동락 두 번째 이야기 <허행초>","productThumbName":"동무동락"},{"venueProductId":984,"venueProductOrder":1,"venueId":25,"productId":27053,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/314-ENSEMBLE_190323.jpg","linkUrlTypeCode":"DETAIL","hasBridgeId":false,"startDate":1576162800000,"endDate":1576162800000,"hallName":"세종문화회관 체임버홀","productName":"앙상블 콘서트 ENSEMBLE CONCERT Ⅵ","productThumbName":"앙상블 콘서트 ENSEMBLE CONCERT Ⅵ"},{"venueProductId":985,"venueProductOrder":2,"venueId":25,"productId":26461,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_1/don_info0909.jpg","linkUrlTypeCode":"DETAIL","bridgeId":"509","hasBridgeId":false,"startDate":1572361200000,"endDate":1572620400000,"hallName":"세종문화회관 대극장","productName":"오페라 <돈 조반니>","productThumbName":"오페라〈돈 조반니〉"},{"venueProductId":986,"venueProductOrder":3,"venueId":25,"productId":27046,"productImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_3/poster(314).jpg","linkUrlTypeCode":"DETAIL","bridgeId":"509","hasBridgeId":false,"startDate":1568905200000,"endDate":1568991600000,"hallName":"세종문화회관 대극장","productName":"극장 앞 독립군","productThumbName":"극장 앞 독립군"}]
	);
	tk.banner.sports.init(
		[{"bannerId":18206,"templeteCode":"B","bannerImageId":2821615,"bannerImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_7/19_foot.jpg","bannerUrl":"http://www.ticketlink.co.kr/sports/football","bannerTargetType":"DEFAULT"},{"templeteCode":"B","clubId":31,"clubOrder":1,"bannerImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_2/@temp_msport2.png","clubName":"한화 이글스","clubImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_2/@temp_msport2.png","clubUrl":"http://www.ticketlink.co.kr/sports/baseball/63#reservation","bannerTargetType":"DEFAULT"},{"templeteCode":"B","clubId":36,"clubOrder":2,"bannerImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_2/kia_em_2.png","clubName":"KIA 타이거즈","clubImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_2/kia_em_2.png","clubUrl":"http://www.ticketlink.co.kr/sports/baseball/58#reservation","bannerTargetType":"DEFAULT"},{"templeteCode":"B","clubId":35,"clubOrder":3,"bannerImagePath":"//image.toast.com/aaaaab/thumbx/@temp_msport5.png","clubName":"삼성 라이온즈","clubImagePath":"//image.toast.com/aaaaab/thumbx/@temp_msport5.png","clubUrl":"http://www.ticketlink.co.kr/sports/baseball/57#reservation","bannerTargetType":"DEFAULT"},{"templeteCode":"B","clubId":38,"clubOrder":4,"bannerImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_2/lg(1).png","clubName":"LG 트윈스","clubImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_2/lg(1).png","clubUrl":"http://www.ticketlink.co.kr/sports/baseball/59#reservation","bannerTargetType":"DEFAULT"},{"templeteCode":"B","clubId":28,"clubOrder":5,"bannerImagePath":"//image.toast.com/aaaaab/thumbx/@temp_msport6.png","clubName":"kt wiz","clubImagePath":"//image.toast.com/aaaaab/thumbx/@temp_msport6.png","clubUrl":"http://www.ticketlink.co.kr/sports/baseball/62#reservation","bannerTargetType":"DEFAULT"},{"templeteCode":"B","clubId":44,"clubOrder":6,"bannerImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/nc.png","clubName":"NC 다이노스","clubImagePath":"//image.toast.com/aaaaab/ticketlink/TKL_10/nc.png","clubUrl":"http://www.ticketlink.co.kr/sports/baseball/64#reservation","bannerTargetType":"DEFAULT"}]
	);
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
