<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/index.css">




<script>
const all = ele => document.querySelectorAll(ele)
const one = ele => document.querySelector(ele)
const slide = _ => {
  const wrap = one('.slide')
  const target = wrap.children[0]
  const len = target.children.length
  const liStyle = `
    position:absolute;
    left:0;right:0;top:0;bottom:0;transition:1s;opacity:0
  `
  target.style.cssText = `position:relative;`
  Array.from(target.children)
  .forEach(ele => ele.style.cssText = liStyle)
  target.children[0].style.opacity = 1
  let pos = 0
  setInterval(_ => {
    target.children[pos].style.opacity = 0
    pos = (pos + 1) % len 
    target.children[pos].style.opacity = 1
  }, 3500)
}
window.onload = function () {
  slide()
}
</script>

	
    <div id="container"> 
		<!-- 슬릭시작 -->
		<div class="slide">
		  <ul>
		    <li><img src="${pageContext.request.contextPath }/resources/images/plus.png" alt="" /></li>
		    <li>예비</li>
		    <li>예비</li>
		    <li>예비</li>
		  </ul>
		</div>
		<!-- 슬릭 END -->
  
				<div class="inner">

                <div class="maintop_new open_spot">
                    <div class="maintop_left">
                        <div class="header">
                        <a href="${pageContext.request.contextPath }/">
                            <h2>티켓오픈  <img src="${pageContext.request.contextPath }/resources/images/plus.png" alt="더보기" style="width: 35px; height: 35px;"/></h2>
              			</a>
                        </div>
                        
                       
                        <div class="maintop_cont">
                            <ul>
                                <li class="first">
                                    <a href="/help/notice/50856">
                                        <img src="//image.toast.com/aaaaab/ticketlink/TKL_6/d_main0911sa.jpg"
                                             alt="<b><font color=#339e00>[09/19(목) 14시] </font></b> 뮤지컬 <드라큘라>2차 티켓오픈안내" width="180" height="218">
                                    </a>
                                </li>
                                
                                    <li>
                                        <a href="/help/notice/50846">
                                            <span class="ico_dot"></span><b><font color=#339e00>[09/11(수) 11시] </font></b>슈퍼스타 : THE ORIGINAL - 부산​ 티켓오픈 안내
                                        </a>
                                    </li>
                                
                                    <li>
                                        <a href="/help/notice/50858">
                                            <span class="ico_dot"></span><b><font color=#339e00>[09/18(수) 14시] </font></b> 뮤지컬 <에드거 앨런 포> 스페셜 버전 2차 티켓 오픈 안내
                                        </a>
                                    </li>
                                
                                    <li>
                                        <a href="/help/notice/50819">
                                            <span class="ico_dot"></span><b><font color=#339e00>[09/10(화) 15시] </font></b> 2019 김나영 콘서트 <솔직하게 말해서 나> - 부산 티켓오픈안내
                                        </a>
                                    </li>
                                
                                    <li>
                                        <a href="/help/notice/50843">
                                            <span class="ico_dot"></span><b><font color=#339e00>[09/17(수) 19시] </font></b>슈퍼스타 : THE ORIGINAL - 광주​ 티켓오픈 안내
                                        </a>
                                    </li>
                                
                                    <li>
                                        <a href="/help/notice/50844">
                                            <span class="ico_dot"></span><b><font color=#339e00>[09/11(수) 11시] </font></b>슈퍼스타 : THE ORIGINAL - 서울​ 티켓오픈 안내
                                        </a>
                                    </li>
                                
                            </ul>
                        </div>
                    </div>
                    
                </div>
                
                
                <div class="maintop_new real_ranking">
                    <div class="maintop_left">
                        <div class="header">
                        <a href="${pageContext.request.contextPath }/">
                            <h2>일간 랭킹   <img src="${pageContext.request.contextPath }/resources/images/plus.png" alt="더보기" style="width: 35px; height: 35px;"/></h2>
                         </a>     
                        </div>
                        <div class="maintop_cont">
                            
                                <ul id="concertRankingListUl">
                                    <li class="first"><a class="rangkingImgLink"
                                                         href="/product/28807">
                                        <img class="rangkingImg" src="//image.toast.com/aaaaab/ticketlink/TKL_5/jl_main09101725.jpg" width="180" height="218" alt="">
                                    </a></li>
                                    <!-- [D] 활성될 때 on 클래스 추가 -->
                                    
                                        <li class='rankingItem on'
                                            data-productid="28807"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_5/jl_main09101725.jpg"><a
                                                href="/product/28807"><span
                                                class="num1">1</span>뮤지컬 [정글라이프]</a></li>
                                    
                                        <li class='rankingItem'
                                            data-productid="30023"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_5/worldballet_poster0905.jpg"><a
                                                href="/product/30023"><span
                                                class="num2">2</span>제28회 전국무용제 사전행사 [월드발레스타갈라공연]</a></li>
                                    
                                        <li class='rankingItem'
                                            data-productid="29652"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_6/SPST_0905.jpg"><a
                                                href="/product/29652"><span
                                                class="num3">3</span>뮤지컬 <사랑했어요> (사랑의 가객 故김현식 뮤지컬) </a></li>
                                    
                                        <li class='rankingItem'
                                            data-productid="29263"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_7/jyj_info0718_01.jpg"><a
                                                href="/product/29263"><span
                                                class="num4">4</span>2019 장윤정 라이브 콘서트 – 안동</a></li>
                                    
                                        <li class='rankingItem'
                                            data-productid="29474"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_5/moon_info08081715.jpg"><a
                                                href="/product/29474"><span
                                                class="num5">5</span>NEW 달을품은슈퍼맨</a></li>
                                    
                                </ul>
                            
                            
                                <ul id="exhibitionRankingListUl" style="display : none;">
                                    <li class="first"><a class="rangkingImgLink"
                                                         href="/product/30030">
                                        <img class="rangkingImg" src="//image.toast.com/aaaaab/ticketlink/TKL_6/dpstt_0906.jpg"
                                             width="180" height="218" alt="">
                                    </a></li>
                                    <!-- [D] 활성될 때 on 클래스 추가 -->
                                    
                                        <li class="rankingItem" data-productid="30030"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_6/dpstt_0906.jpg"><a
                                                href="/product/30030"><span
                                                class="num1">1</span>2019 가을 여행주간 DMZ 평화나들이</a></li>
                                    
                                        <li class="rankingItem" data-productid="28320"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_9/ABC.jpg"><a
                                                href="/product/28320"><span
                                                class="num2">2</span>그리스 보물전</a></li>
                                    
                                        <li class="rankingItem" data-productid="28465"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_5/poster(314)_190527.jpg"><a
                                                href="/product/28465"><span
                                                class="num3">3</span>2019 국제농업박람회</a></li>
                                    
                                        <li class="rankingItem" data-productid="29598"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_4/poster(314)_190802.jpg"><a
                                                href="/product/29598"><span
                                                class="num4">4</span>청원생명축제</a></li>
                                    
                                        <li class="rankingItem" data-productid="28861"
                                            data-url="//image.toast.com/aaaaab/ticketlink/TKL_3/redbull_190629.jpg"><a
                                                href="/product/28861"><span
                                                class="num5">5</span>Red Bull 400 KOREA (레드불400)</a></li>
                                    
                                </ul>
                            
                        </div>
                    </div>
                    <div class="maintop_right slide_wrap">
                       
                        <div class="slide_ctrl"  style="display:none;" >
                            <!-- [D] 이전페이지 없을 경우 off 클래스, disabled="disabled" 추가 -->
                            <button type="button" id="prev_btn" class="prev">이전</button>
                            <!-- [D] 다음페이지 없을 경우 off 클래스 추가 -->
                            <button type="button" id="next_btn" class="next off">다음</button>
                        </div>
                    </div>
                </div>
                
 </div>

    			
        	
      
            <div class="section_week">
                <div class="inner">
					<a href="${pageContext.request.contextPath }/">
					<h2>
                    	베스트뮤지컬 
                    	<img src="${pageContext.request.contextPath }/resources/images/plus.png" alt="더보기" style="width: 35px; height: 35px;"/>
					</h2>
           	</a>
                
                
                 <div class="suggest_wrap">
                 
             
                 
                 <ul class="best_list">  
                
                    <li><a href="http://www.ticketlink.co.kr/product/29652">
                
                		
                        <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_6/SPST_0905.jpg" alt=""></p>
                        <div class="list_info">
                            <strong class="elp">뮤지컬 <사랑했어요></strong>
                            <dl>
                                <dt>기간</dt>
                                <dd>2019.09.20 ~ 2019.10.27</dd>
                                <dt>장소</dt>
                                <dd>성남아트센터 오페라하우스</dd>
                            </dl>
                        </div>
                    </a></li>
                
                    <li><a href="http://www.ticketlink.co.kr/product/29483">



                        <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_9/poe_0725.jpg" alt=""></p>
                        <div class="list_info">
                            <strong class="elp">에드거 앨런 포 스페셜 버전</strong>
                            <dl>
                                <dt>기간</dt>
                                <dd>2019.08.27 ~ 2019.11.17</dd>
                                <dt>장소</dt>
                                <dd>대학로 JTN 아트홀 1관</dd>
                            </dl>
                        </div>
                    </a></li>
                
                    <li><a href="http://www.ticketlink.co.kr/product/28633">
                
                        <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_8/ebs0802.jpg" alt=""></p>
                        <div class="list_info">
                            <strong class="elp">점박이 공룡대모험</strong>
                            <dl>
                                <dt>기간</dt>
                                <dd>2019.09.21 ~ 2019.10.13</dd>
                                <dt>장소</dt>
                                <dd>수원,고양,부산</dd>
                            </dl>
                        </div>
                    </a></li>
                    
                     <li><a href="http://www.ticketlink.co.kr/product/28633">
                     <p><img src="//image.toast.com/aaaaab/ticketlink/TKL_3/city_main08131315.jpg" alt=""></p>
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
                
                  
                    
                
            </ul>
            
        </div>
        
    </div>
    </div>
   
 
      
            <div class="section_best">
                <div class="inner">
                <a href="${pageContext.request.contextPath }/">
                    <h2>베스트 연극 <img src="${pageContext.request.contextPath }/resources/images/plus.png" alt="더보기" style="width: 35px; height: 35px;"/></h2>
				</a>	
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
                        
                       
                        
                    </ul>
                </div>
            </div>
       </div>
       </div>


<a href="javascript:window.scrollTo(0,0);" id="back_to_top">위로</a>



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


<%@ include file="/WEB-INF/views/common/footer.jsp"%>
