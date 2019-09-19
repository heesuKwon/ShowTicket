<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ranking.css">

<style>	

</style>

<div id="container" class="ranking_wrap">
        <div class="inner">
            <h2 class="blind"><span> 랭킹 </span></h2>
            <ul class="rank_bx" >
                <li>
                    <strong>집계기간</strong>
                    <p>
						<span style="color:#4b12b5">2019년 09월 16일 (월) ~ 21:34 현재</span> (1시간 단위로 업데이트 됩니다)
                         <br> 당일 오전의 경우 판매 비중이 낮으므로 오전 10:30 이전까지는 전일 24시간의 집계 현황을 알려드립니다.
                    </p>
                </li>
                <li>
                    <strong>집계대상</strong>
                    <p><span class="color_black">티켓링크 인터넷예매, 모바일웹예매, 모바일앱예매, 전화예매</span> (결제 완료/예매 매수 기준)</p>
                </li>
            </ul>

            <!-- 집계결과 컨텐츠 -->
            <div class="rank_con">
                <div class="tabmenu">
  			<ul>
  
		    <li id="tab1" class="btnCon"> 
		    	<input type="radio" checked name="tabmenu" id="tabmenu1">
		      <label for="tabmenu1" class="n_category">뮤지컬</label>
		      <div class="tabCon" >
		      <h3 class="blind">랭킹 집계 결과</h3>
		                <!-- 집계결과 -->
		                <div class="rslt_bx">
		                    <!-- 버튼 -->
		                    <div class="btn_lst">
		                        <!-- [D] 활성화시 a에 .on 추가-->
		                        <a href="/ranking/reserve/daily?categoryId=10" class="on">오늘</a>
		                        <span class="bar">l</span>
		                        <a href="/ranking/reserve/weekly?categoryId=10" >주간</a>
		                        <span class="bar">l</span>
		                        <a href="/ranking/reserve/monthly?categoryId=10" >월간</a>
		                        <span class="bar">l</span>
		                        <a href="/ranking/reserve/yearly?categoryId=10" >연간</a>
		                    </div>
		                    <!-- // 버튼 -->
		                    <!-- 랭킹 테이블 -->
		                    <div class="basic_tbl rank_tbl">
		                        <table>
		                            <caption>랭킹 집계 결과 목록</caption>
		                            <colgroup>
		                                <col style="width:65px">
		                                <col style="width:130px">
		                                <col style="width:282px">
		                                <col style="width:90px">
		                                <col style="width:100px">
		                                <col>
		                                <col style="width:150px">
		                            </colgroup>
		                            <thead>
		                            <tr>
		                                <th scope="col" style="width:padding-left: 10px; padding-right: 10px;">랭킹</th>
		                                <th scope="col" colspan="2">공연명</th>
		                                <th scope="col">예매율</th>
		                                <th scope="col">공연기간</th>
		                                <th scope="col">장소</th>
		                                <th scope="col">예매하기</th>
		                            </tr>
		                            </thead>
		                            <tbody>
		                            
		                                    <tr>
		                                        <td>
		                                            <span style="position: relative; top: -8px"
		                                                  class="ranknum n1">1</span>
		                                            <input type="hidden" name="productId" value="28807">
		                                            <input type="hidden" name="saleStatus" value="ON_SALE">
		                                            
		                                                
		                    
		                                                <span class="bx">- 0</span>
		                              
		                                        </td>
		                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/jl_main09101725.jpg"
		                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
		                                        </td>
		                                        <td class="tl tx"><a class="detail_link" href="javascript:;">뮤지컬 [정글라이프]</a></td>
		                                        <td class="ff_tahoma">27.03 %</td>
		                                        <td class="tl ff_tahoma">2019.08.10 ~ 2019.10.06</td>
		                                        <td class="tl desc_vt">고스트씨어터(구,다소니씨어터)</td>
		                                        <td>
		                                            <button type="button" class="btn btn-secondary" style="">예매하기</button>
		                                        </td>
		                                    </tr>
		                               
		                            
		                                
		                                    <tr>
		                                        <td>
		                                            <span style="position: relative; top: -8px"
		                                                  class="ranknum n2">2</span>
		                                            <input type="hidden" name="productId" value="30023">
		                                            <input type="hidden" name="saleStatus" value="ON_SALE">
		                                            
		               
		                                                <span class="bx">- 0</span>
		                                                
		                                                
		                                                
		                                            
		                                        </td>
		                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/worldballet_poster0905.jpg"
		                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
		                                        </td>
		                                        <td class="tl tx"><a class="detail_link" href="javascript:;">제28회 전국무용제 사전행사 [월드발레스타갈라공연]</a></td>
		                                        <td class="ff_tahoma">9.46 %</td>
		                                        <td class="tl ff_tahoma">2019.09.24 ~ 2019.09.24</td>
		                                        <td class="tl desc_vt">대구문화예술회관 팔공홀</td>
		                                        <td>
		                                           <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
		                                        </td>
		                                    </tr>
		                                
		                            
		                                
		                                    <tr>
		                                        <td>
		                                            <span style="position: relative; top: -8px"
		                                                  class="ranknum n3">3</span>
		                                            <input type="hidden" name="productId" value="29652">
		                                            <input type="hidden" name="saleStatus" value="ON_SALE">
		                                            
		                                                
		                                      
		                                                <span class="bx">- 0</span>
		                                                
		                                    
		                                        </td>
		                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_6/SPST_0905.jpg"
		                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
		                                        </td>
		                                        <td class="tl tx"><a class="detail_link" href="javascript:;">뮤지컬 <사랑했어요> (사랑의 가객 故김현식 뮤지컬) </a></td>
		                                        <td class="ff_tahoma">3.57 %</td>
		                                        <td class="tl ff_tahoma">2019.09.20 ~ 2019.10.27</td>
		                                        <td class="tl desc_vt">성남아트센터 오페라하우스</td>
		                                        <td>
		                                            <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
		                                        </td>
		                                    </tr>
		                                
		                            
		                                
		                                    <tr>
		                                        <td>
		                                            <span style="position: relative; top: -8px"
		                                                  class="ranknum n4">4</span>
		                                            <input type="hidden" name="productId" value="29717">
		                                            <input type="hidden" name="saleStatus" value="ON_SALE">
		                                      
		                                        <span class="bx">- 0</span>
		                           
		                                            
		                                        </td>
		                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_7/main0816.jpg"
		                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
		                                        </td>
		                                        <td class="tl tx"><a class="detail_link" href="javascript:;">창작가무극 <다윈 영의 악의 기원></a></td>
		                                        <td class="ff_tahoma">3.39 %</td>
		                                        <td class="tl ff_tahoma">2019.10.15 ~ 2019.10.27</td>
		                                        <td class="tl desc_vt">예술의전당 CJ토월극장</td>
		                                        <td>
		                                            <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
		                                        </td>
		                                    </tr>
		                                
		                            
		                                
		                                    <tr>
		                                        <td>
		                                            <span style="position: relative; top: -8px"
		                                                  class="ranknum n5">5</span>
		                                            <input type="hidden" name="productId" value="29474">
		                                            <input type="hidden" name="saleStatus" value="ON_SALE">
		                           
		                              <span class="bx">- 0</span>
		                                                
		                                                
		                                                
		                                            
		                                        </td>
		                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/moon_info08081715.jpg"
		                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
		                                        </td>
		                                        <td class="tl tx"><a class="detail_link" href="javascript:;">NEW 달을품은슈퍼맨</a></td>
		                                        <td class="ff_tahoma">2.77 %</td>
		                                        <td class="tl ff_tahoma">2019.08.30 ~ 2019.10.20</td>
		                                        <td class="tl desc_vt">드림아트센터 2관</td>
		                                        <td>
		                                            <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
		                                        </td>
		                                    </tr>
		                                
		                            
		                                
		                                    <tr>
		                                        <td>
		                                            <span style="position: relative; top: -8px"
		                                                  class="ranknum n6">6</span>
		                                            <input type="hidden" name="productId" value="29439">
		                                            <input type="hidden" name="saleStatus" value="ON_SALE">
		                                            
		                   
		                                            
		                                                <span class="bx">- 0</span>
		                                                
		                                                
		                                                
		                                            
		                                        </td>
		                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_1/bea_0722.jpg"
		                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
		                                        </td>
		                                        <td class="tl tx"><a class="detail_link" href="javascript:;">연극 <비BEA> </a></td>
		                                        <td class="ff_tahoma">2.77 %</td>
		                                        <td class="tl ff_tahoma">2019.09.03 ~ 2019.10.03</td>
		                                        <td class="tl desc_vt">콘텐츠그라운드</td>
		                                        <td>
		                                            <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
		                                        </td>
		                                    </tr>
		                                
		                            
		                                
		                                    <tr>
		                                        <td>
		                                            <span style="position: relative; top: -8px"
		                                                  class="ranknum n7">7</span>
		                                            <input type="hidden" name="productId" value="29263">
		                                            <input type="hidden" name="saleStatus" value="ON_SALE">
		                                            
		                                                
		                          
		                                            
		                                                <span class="bx">- 0</span>
		                                                
		                                                
		                                                
		                                            
		                                        </td>
		                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_7/jyj_info0718_01.jpg"
		                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
		                                        </td>
		                                        <td class="tl tx"><a class="detail_link" href="javascript:;">2019 장윤정 라이브 콘서트 – 안동</a></td>
		                                        <td class="ff_tahoma">2.41 %</td>
		                                        <td class="tl ff_tahoma">2019.10.19 ~ 2019.10.19</td>
		                                        <td class="tl desc_vt">안동실내체육관</td>
		                                        <td>
		                                            <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
		                                        </td>
		                                    </tr>
		                                
		                            
		                                
		                                    <tr>
		                                        <td>
		                                            <span style="position: relative; top: -8px"
		                                                  class="ranknum n8">8</span>
		                                            <input type="hidden" name="productId" value="30104">
		                                            <input type="hidden" name="saleStatus" value="ON_SALE">
		                                            
		                                                
		                                  
		                                                
		                                                <em class="new">NEW</em>
		                                            
		                                        </td>
		                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/kkh_arirang_poster.JPG"
		                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
		                                        </td>
		                                        <td class="tl tx"><a class="detail_link" href="javascript:;">전통예술 <김경호와 함께하는 아리랑목동>-목포</a></td>
		                                        <td class="ff_tahoma">2.14 %</td>
		                                        <td class="tl ff_tahoma">2019.10.05 ~ 2019.10.05</td>
		                                        <td class="tl desc_vt">목포시민문화체육센터 대공연장</td>
		                                        <td>
		                                           <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
		                                        </td>
		                                    </tr>
		                                
		                            
		                                
		                                    <tr>
		                                        <td>
		                                            <span style="position: relative; top: -8px"
		                                                  class="ranknum n9">9</span>
		                                            <input type="hidden" name="productId" value="30080">
		                                            <input type="hidden" name="saleStatus" value="ON_SALE">
		                                            
		                                  
		                                                
		                                                <span class="bx down"><span
		                                                        class="sp"></span> 1</span>
		                                                
		                                            
		                                        </td>
		                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_4/PH_jangyunjung_poster.jpg"
		                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
		                                        </td>
		                                        <td class="tl tx"><a class="detail_link" href="javascript:;">2019 장윤정 라이브 콘서트 - 포항</a></td>
		                                        <td class="ff_tahoma">1.96 %</td>
		                                        <td class="tl ff_tahoma">2019.11.09 ~ 2019.11.09</td>
		                                        <td class="tl desc_vt">포항실내체육관</td>
		                                        <td>
		                                           <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
		                                        </td>
		                                    </tr>
		                                
		                            
		                                
		                                    <tr>
		                                        <td>
		                                            <span style="position: relative; top: -8px"
		                                                  class="ranknum n10">10</span>
		                                            <input type="hidden" name="productId" value="29689">
		                                            <input type="hidden" name="saleStatus" value="ON_SALE">
		                                            
		                                                
		                                  
		                                                
		                                                <span class="bx down"><span
		                                                        class="sp"></span> 1</span>
		                                                
		                                            
		                                        </td>
		                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_9/10_main_0809.jpg"
		                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
		                                        </td>
		                                        <td class="tl tx"><a class="detail_link" href="javascript:;">10CM X 윤딴딴 - 창원</a></td>
		                                        <td class="ff_tahoma">1.87 %</td>
		                                        <td class="tl ff_tahoma">2019.11.03 ~ 2019.11.03</td>
		                                        <td class="tl desc_vt">창원 성산아트홀 대극장</td>
		                                        <td>
		                                           <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
		                                        </td>
		                                    </tr>
		                                
		                            
		                            </tbody>
		                        </table>
		                    </div>
		                    <!-- //랭킹 테이블 -->
		                </div>
		      </div>
		      
		    </li>
		    
		    <li id="tab2" class="btnCon"> 
		    	<input type="radio" checked name="tabmenu" id="tabmenu2">
		      		<label for="tabmenu2" class="n_category">연극</label>
			      <div class="tabCon" >
			      <h3 class="blind">랭킹 집계 결과</h3>
			                <!-- 집계결과 -->
			                <div class="rslt_bx">
			                    <!-- 버튼 -->
			                    <div class="btn_lst">
			                        <!-- [D] 활성화시 a에 .on 추가-->
			                        <a href="/ranking/reserve/daily?categoryId=10" class="on">오늘</a>
			                        <span class="bar">l</span>
			                        <a href="/ranking/reserve/weekly?categoryId=10" >주간</a>
			                        <span class="bar">l</span>
			                        <a href="/ranking/reserve/monthly?categoryId=10" >월간</a>
			                        <span class="bar">l</span>
			                        <a href="/ranking/reserve/yearly?categoryId=10" >연간</a>
			                    </div>
			                    <!-- // 버튼 -->
			                    <!-- 랭킹 테이블 -->
			                    <div class="basic_tbl rank_tbl">
			                        <table>
			                            <caption>랭킹 집계 결과 목록</caption>
			                            <colgroup>
			                                <col style="width:65px">
			                                <col style="width:130px">
			                                <col style="width:282px">
			                                <col style="width:90px">
			                                <col style="width:100px">
			                                <col>
			                                <col style="width:150px">
			                            </colgroup>
			                            <thead>
			                            <tr>
			                                <th scope="col" style="width:padding-left: 10px; padding-right: 10px;">랭킹</th>
			                                <th scope="col" colspan="2">공연명</th>
			                                <th scope="col">예매율</th>
			                                <th scope="col">공연기간</th>
			                                <th scope="col">장소</th>
			                                <th scope="col">예매하기</th>
			                            </tr>
			                            </thead>
			                            <tbody>
			                            
			                                    <tr>
			                                        <td>
			                                            <span style="position: relative; top: -8px"
			                                                  class="ranknum n1">1</span>
			                                            <input type="hidden" name="productId" value="28807">
			                                            <input type="hidden" name="saleStatus" value="ON_SALE">
			                                            
			                                                
			                    
			                                                <span class="bx">- 0</span>
			                              
			                                        </td>
			                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/jl_main09101725.jpg"
			                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
			                                        </td>
			                                        <td class="tl tx"><a class="detail_link" href="javascript:;">뮤지컬 [정글라이프]</a></td>
			                                        <td class="ff_tahoma">27.03 %</td>
			                                        <td class="tl ff_tahoma">2019.08.10 ~ 2019.10.06</td>
			                                        <td class="tl desc_vt">고스트씨어터(구,다소니씨어터)</td>
			                                        <td>
			                                            <button type="button" class="btn btn-secondary" style="">예매하기</button>
			                                        </td>
			                                    </tr>
			                               
			                            
			                                
			                                    <tr>
			                                        <td>
			                                            <span style="position: relative; top: -8px"
			                                                  class="ranknum n2">2</span>
			                                            <input type="hidden" name="productId" value="30023">
			                                            <input type="hidden" name="saleStatus" value="ON_SALE">
			                                            
			               
			                                                <span class="bx">- 0</span>
			                                                
			                                                
			                                                
			                                            
			                                        </td>
			                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/worldballet_poster0905.jpg"
			                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
			                                        </td>
			                                        <td class="tl tx"><a class="detail_link" href="javascript:;">제28회 전국무용제 사전행사 [월드발레스타갈라공연]</a></td>
			                                        <td class="ff_tahoma">9.46 %</td>
			                                        <td class="tl ff_tahoma">2019.09.24 ~ 2019.09.24</td>
			                                        <td class="tl desc_vt">대구문화예술회관 팔공홀</td>
			                                        <td>
			                                           <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
			                                        </td>
			                                    </tr>
			                                
			                            
			                                
			                                    <tr>
			                                        <td>
			                                            <span style="position: relative; top: -8px"
			                                                  class="ranknum n3">3</span>
			                                            <input type="hidden" name="productId" value="29652">
			                                            <input type="hidden" name="saleStatus" value="ON_SALE">
			                                            
			                                                
			                                      
			                                                <span class="bx">- 0</span>
			                                                
			                                    
			                                        </td>
			                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_6/SPST_0905.jpg"
			                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
			                                        </td>
			                                        <td class="tl tx"><a class="detail_link" href="javascript:;">뮤지컬 <사랑했어요> (사랑의 가객 故김현식 뮤지컬) </a></td>
			                                        <td class="ff_tahoma">3.57 %</td>
			                                        <td class="tl ff_tahoma">2019.09.20 ~ 2019.10.27</td>
			                                        <td class="tl desc_vt">성남아트센터 오페라하우스</td>
			                                        <td>
			                                            <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
			                                        </td>
			                                    </tr>
			                                
			                            
			                                
			                                    <tr>
			                                        <td>
			                                            <span style="position: relative; top: -8px"
			                                                  class="ranknum n4">4</span>
			                                            <input type="hidden" name="productId" value="29717">
			                                            <input type="hidden" name="saleStatus" value="ON_SALE">
			                                      
			                                        <span class="bx">- 0</span>
			                           
			                                            
			                                        </td>
			                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_7/main0816.jpg"
			                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
			                                        </td>
			                                        <td class="tl tx"><a class="detail_link" href="javascript:;">창작가무극 <다윈 영의 악의 기원></a></td>
			                                        <td class="ff_tahoma">3.39 %</td>
			                                        <td class="tl ff_tahoma">2019.10.15 ~ 2019.10.27</td>
			                                        <td class="tl desc_vt">예술의전당 CJ토월극장</td>
			                                        <td>
			                                            <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
			                                        </td>
			                                    </tr>
			                                
			                            
			                                
			                                    <tr>
			                                        <td>
			                                            <span style="position: relative; top: -8px"
			                                                  class="ranknum n5">5</span>
			                                            <input type="hidden" name="productId" value="29474">
			                                            <input type="hidden" name="saleStatus" value="ON_SALE">
			                           
			                              <span class="bx">- 0</span>
			                                                
			                                                
			                                                
			                                            
			                                        </td>
			                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/moon_info08081715.jpg"
			                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
			                                        </td>
			                                        <td class="tl tx"><a class="detail_link" href="javascript:;">NEW 달을품은슈퍼맨</a></td>
			                                        <td class="ff_tahoma">2.77 %</td>
			                                        <td class="tl ff_tahoma">2019.08.30 ~ 2019.10.20</td>
			                                        <td class="tl desc_vt">드림아트센터 2관</td>
			                                        <td>
			                                            <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
			                                        </td>
			                                    </tr>
			                                
			                            
			                                
			                                    <tr>
			                                        <td>
			                                            <span style="position: relative; top: -8px"
			                                                  class="ranknum n6">6</span>
			                                            <input type="hidden" name="productId" value="29439">
			                                            <input type="hidden" name="saleStatus" value="ON_SALE">
			                                            
			                   
			                                            
			                                                <span class="bx">- 0</span>
			                                                
			                                                
			                                                
			                                            
			                                        </td>
			                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_1/bea_0722.jpg"
			                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
			                                        </td>
			                                        <td class="tl tx"><a class="detail_link" href="javascript:;">연극 <비BEA> </a></td>
			                                        <td class="ff_tahoma">2.77 %</td>
			                                        <td class="tl ff_tahoma">2019.09.03 ~ 2019.10.03</td>
			                                        <td class="tl desc_vt">콘텐츠그라운드</td>
			                                        <td>
			                                            <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
			                                        </td>
			                                    </tr>
			                                
			                            
			                                
			                                    <tr>
			                                        <td>
			                                            <span style="position: relative; top: -8px"
			                                                  class="ranknum n7">7</span>
			                                            <input type="hidden" name="productId" value="29263">
			                                            <input type="hidden" name="saleStatus" value="ON_SALE">
			                                            
			                                                
			                          
			                                            
			                                                <span class="bx">- 0</span>
			                                                
			                                                
			                                                
			                                            
			                                        </td>
			                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_7/jyj_info0718_01.jpg"
			                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
			                                        </td>
			                                        <td class="tl tx"><a class="detail_link" href="javascript:;">2019 장윤정 라이브 콘서트 – 안동</a></td>
			                                        <td class="ff_tahoma">2.41 %</td>
			                                        <td class="tl ff_tahoma">2019.10.19 ~ 2019.10.19</td>
			                                        <td class="tl desc_vt">안동실내체육관</td>
			                                        <td>
			                                            <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
			                                        </td>
			                                    </tr>
			                                
			                            
			                                
			                                    <tr>
			                                        <td>
			                                            <span style="position: relative; top: -8px"
			                                                  class="ranknum n8">8</span>
			                                            <input type="hidden" name="productId" value="30104">
			                                            <input type="hidden" name="saleStatus" value="ON_SALE">
			                                            
			                                                
			                                  
			                                                
			                                                <em class="new">NEW</em>
			                                            
			                                        </td>
			                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_5/kkh_arirang_poster.JPG"
			                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
			                                        </td>
			                                        <td class="tl tx"><a class="detail_link" href="javascript:;">전통예술 <김경호와 함께하는 아리랑목동>-목포</a></td>
			                                        <td class="ff_tahoma">2.14 %</td>
			                                        <td class="tl ff_tahoma">2019.10.05 ~ 2019.10.05</td>
			                                        <td class="tl desc_vt">목포시민문화체육센터 대공연장</td>
			                                        <td>
			                                           <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
			                                        </td>
			                                    </tr>
			                                
			                            
			                                
			                                    <tr>
			                                        <td>
			                                            <span style="position: relative; top: -8px"
			                                                  class="ranknum n9">9</span>
			                                            <input type="hidden" name="productId" value="30080">
			                                            <input type="hidden" name="saleStatus" value="ON_SALE">
			                                            
			                                  
			                                                
			                                                <span class="bx down"><span
			                                                        class="sp"></span> 1</span>
			                                                
			                                            
			                                        </td>
			                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_4/PH_jangyunjung_poster.jpg"
			                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
			                                        </td>
			                                        <td class="tl tx"><a class="detail_link" href="javascript:;">2019 장윤정 라이브 콘서트 - 포항</a></td>
			                                        <td class="ff_tahoma">1.96 %</td>
			                                        <td class="tl ff_tahoma">2019.11.09 ~ 2019.11.09</td>
			                                        <td class="tl desc_vt">포항실내체육관</td>
			                                        <td>
			                                           <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
			                                        </td>
			                                    </tr>
			                                
			                            
			                                
			                                    <tr>
			                                        <td>
			                                            <span style="position: relative; top: -8px"
			                                                  class="ranknum n10">10</span>
			                                            <input type="hidden" name="productId" value="29689">
			                                            <input type="hidden" name="saleStatus" value="ON_SALE">
			                                            
			                                                
			                                  
			                                                
			                                                <span class="bx down"><span
			                                                        class="sp"></span> 1</span>
			                                                
			                                            
			                                        </td>
			                                        <td class="img_box"><a class="detail_link" href="javascript:;"><img src="//image.toast.com/aaaaab/ticketlink/TKL_9/10_main_0809.jpg"
			                                                                                                            width="100px" height="122px" alt="공연 포스터"></a>
			                                        </td>
			                                        <td class="tl tx"><a class="detail_link" href="javascript:;">10CM X 윤딴딴 - 창원</a></td>
			                                        <td class="ff_tahoma">1.87 %</td>
			                                        <td class="tl ff_tahoma">2019.11.03 ~ 2019.11.03</td>
			                                        <td class="tl desc_vt">창원 성산아트홀 대극장</td>
			                                        <td>
			                                           <button type="button" class="btn btn-secondary" style="background-color: #8f01a3">예매하기</button>
			                                        </td>
			                                    </tr>
			                                
			                            
			                            </tbody>
			                        </table>
			                    </div>
		                    <!-- //랭킹 테이블 -->
		                </div>
		      	</div>
		      
		    </li>
		    
		   
		   
		   
		   
		   
		  </ul>
		</div>

                <!-- //집계결과 -->
            </div>
            <!-- //집계결과 컨텐츠 -->
        </div>
    </div>
   


</body>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>