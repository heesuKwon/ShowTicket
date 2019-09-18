<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<jsp:include page="/WEB-INF/views/common/header.jsp" >
	<jsp:param value="" name="pageTitle" />
</jsp:include>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/coupon.css">

  <div id="container">
        <div class="inner">
            <h2 class="title">쿠폰</h2><!-- [D]  1 depth의 값을 h2로 뿌려줍니다 -->
            <button class="btn btn-primary btn-sm" id="couponAdd">추가</button>
            <div class="coupon_main" style="clear:both;">
               <div class="coupon_lst_wrap">
<!--                     <table class="coupon_lst"> -->
                    <!-- n%3으로 조건을 줘서 채우면 될 것이다. -->
                    <table id="couponlist" style="margin:0 auto;">

                       <tr>
                       		<td>
	             				<div class="couponWrap">
	                       			<div class="coupon">
									     <h2 class="couponTitle">생일축하5000원할인</h2>
									     <div class="couponMore">
									      <p class="couponExpire">기간 60일</p>
									      <p class="couponDetail">전 공연 대상</p>
	 								      	</div>
	 								      	<div class="couponDown">
									      		<p>쿠폰다운</p>     			
	                       					</div>      			
	                       		</div>
	                       		</div>
                       		</td>
                       	
                       			<td>
	             <div class="couponWrap">
	                       			<div class="coupon">
									     <h2 class="couponTitle">긴쿠폰이름이문제가되지않았으면좋겠다.</h2>
									     <div class="couponMore">
									      <p class="couponExpire">기간 60일</p>
									      <p class="couponDetail">전 공연 대상</p>
	 								      	</div>
	 								      	<div class="couponDown">
									      		<p>쿠폰다운</p>     			
	                       					</div>      			
	                       		</div>
	                       		</div>
                       		</td>
                       	
                      
                       			<td>
	             <div class="couponWrap">
	                       			<div class="coupon">
									     <h2 class="couponTitle">생일축하5000원할인</h2>
									     <div class="couponMore">
									      <p class="couponExpire">기간 60일</p>
									      <p class="couponDetail">전 공연 대상</p>
	 								      	</div>
	 								      	<div class="couponDown">
									      		<p>쿠폰다운</p>     			
	                       					</div>      			
	                       		</div>
	                       			</div>
                       		</td>
                       	
                       			
                       	
         
                       </tr>
                       
                        <tr>
       
                       		<td>
	             <div class="couponWrap">
	                       			<div class="coupon">
									     <h2 class="couponTitle">생일축하5000원할인</h2>
									     <div class="couponMore">
									      <p class="couponExpire">기간 60일</p>
									      <p class="couponDetail">전 공연 대상</p>
	 								      	</div>
	 								      	<div class="couponDown">
									      		<p>쿠폰다운</p>     			
	                       					</div>    	</div>  			
	                       		</div>
                       		</td>
                       			<td>
	             
	                       			<div class="couponWrap">
	                       			<div class="coupon">
									     <h2 class="couponTitle">생일축하5000원할인</h2>
									     <div class="couponMore">
									      <p class="couponExpire">기간 60일</p>
									      <p class="couponDetail">전 공연 대상</p>
	 								      	</div>
	 								      	<div class="couponDown">
									      		<p>쿠폰다운</p>     			
	                       					</div>      			
	                       		</div>	</div>
                       		</td>
                       	<td>
	             <div class="couponWrap">
	                       			<div class="coupon">
									     <h2 class="couponTitle">생일축하5000원할인</h2>
									     <div class="couponMore">
									      <p class="couponExpire">기간 60일</p>
									      <p class="couponDetail">전 공연 대상</p>
	 								      	</div>
	 								      	<div class="couponDown">
									      		<p>쿠폰다운</p>     			
	                       					</div>      			
	                       		</div>	</div>
                       		</td>
                       	
         
                       </tr>
           
                    </table>
                </div>

  <div class="notice_wrap">
                    <strong class="tit">쿠폰 발급 주의 사항</strong>
                    <ul>
                        <li>쿠폰은 사용 조건에 따라 사용이 제한될 수 있습니다. 쿠폰 사용 조건을 반드시 확인해주세요.</li>
                        <li>예매 시, 쿠폰다운 받은 쿠폰을 선택하면 결제 금액에서 할인이 적용됩니다.(쿠폰을 쿠폰다운 받지 않았거나, 쿠폰 사용 조건에 해당하지 않는 예매라면 쿠폰 선택이 불가할 수 있습니다.)</li>
                        <li>쿠폰 발급 조건에 따라 ID당 쿠폰다운 받을 수 있는 횟수가 정해져 있습니다. 발급받은 쿠폰을 사용할 수 있는 최대 매수도 쿠폰에 따라 상이하니 발급 전 사용조건을 확인해주세요.</li>
                        <li>예매 취소 시, 취소수수료 부과는 쿠폰을 적용하지 않은 티켓금액 기준입니다.</li>
                        <li>쿠폰을 사용해서 예매할 경우 티켓의 일부만 취소하는 부분취소는 불가합니다. 티켓 부분취소를 원하실 경우 전체취소 후 다시 예매해주셔야 합니다.<br>단, 이 경우 기존의 좌석을 유지할 수 없을 수도 있습니다.</li>
                        <li>쿠폰을 사용한 예매를 전체취소 하실 경우 쿠폰이 복구되어 재사용 가능합니다. 단, 특정쿠폰 및 쿠폰유효기간이 지난 쿠폰일 경우는 복구되지 않을 수 있습니다.</li>
                    </ul>
<!--                 </div> -->
                <!-- [D] 쿠폰 레이어 -->
                <div class="ly_pop_wrap" style="display:none">
                    <div class="dim"></div>
                    <!-- [D] 할인금액 : 추가 없음
                               예매수수료 무료 : coupon_type2 추가
                                할인율 : coupon_type3 추가 -->
                </div>
                <!-- // 쿠폰 레이어 -->
            </div>
        </div>
    </div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" ></jsp:include>