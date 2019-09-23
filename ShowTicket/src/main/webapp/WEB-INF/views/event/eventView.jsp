<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="안녕 스프링	" name="pageTitle"/>
</jsp:include>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/contents.css">

<style>

dd.evt_cont>div>img{margin-left: 10%; margin-right: 10%; width: 80%;}
.evt_title h2 {font-size: 25px; margin-left: 10px;}
/* .evt_title */ h2 span{font-weight: bold; }
.evt_detail .evt_title span{color:#8f01a3;}
.nav-pills{width: 80%;margin-left: 10%; margin-top: 15px; margin-bottom: 15px;}
dd.evt_date{margin-left: 10px;}
div.rhr { border: 1px solid #e8e7e6; margin-top: 14px; margin-left: 0;margin-right: 10%; widows: 90%;}
dl.evt_detail{background: white;margin-left: 70px;margin-right: 70px; border-radius: 3px;}
dd.evt_date h6 span:first-child{color:#8f01a3;font-weight: bold;}
div.event_cont_box{background:#e8e7e6; }
div.container-t h2{ background-color:white; color:#393a3b; font-family: 'Gothic A1', sans-serif; font-weight: bold; font-size: 25px;  position: absolute;top: 142px; left: 200px;}
 div.container-t h2 span{color:#8f01a3;}
dd.evt_cont div div.inner{padding-left: 10px; padding-top: 10px; padding-bottom: 10px; padding-right: 10px; width: 930px;}
dd.evt_cont div div.inner h5{position: relative; text-align: center;} 
</style>

<body>

	   <ul class="nav nav-pills nav-justified">
				<li class="nav-item"><a class="nav-link nav-font select" href="${pageContext.request.contextPath}/event/eventList.do">진행중인 이벤트</a></li>
				<li class="nav-item"><a class="nav-link nav-font default" href="${pageContext.request.contextPath}/event/endEventList.do">종료된 이벤트</a></li>
				<li class="nav-item"><a class="nav-link nav-font default" href="${pageContext.request.contextPath}/event/prizewinner.do">당첨자 발표</a></li>
				<li class="nav-item"><a class="nav-link nav-font default" href="${pageContext.request.contextPath}/coupon/coupon.do">쿠폰</a></li>
			</ul>


		<div class="event_cont_box event_cont_box_v2">
                <dl class="evt_detail">
                   	<div class="evt_inner">
	                    <dd class="evt_title" id="eventTitle">
	                       <h2><span>[응모]</span>뮤지컬 <span>&lt;사랑했어요&gt;</span> 관람평 이벤트</h2> 
	                    </dd>
                  	</div>
                  	<style>
                  
                  	</style>
                    <div class="rhr"></div> <!-- 선 -->
	                    <dd class="evt_date">
	                    	<h6>
	                    		<span style="color:#8f01a3;">이벤트 기간 </span>
	                    		<span>2019.09.20~2019.10.04</span>
	                    	</h6>
	                        
	                    </dd>
	                    <div class="container-t">
	                    	<h2>Showticket과 뮤지컬<span>&lt;뮤지컬제목&gt;</span>가 함께하는 이벤트</h2>
	                    </div>
	                    <dd class="evt_cont">
	                       
	                        <div>
	                        	<img src="//image.toast.com/aaaaab/ticketlink/TKL_6/SPST_0905.jpg" alt="뮤지컬<사랑했어요>관람후기이벤트" border="0" usemap="#Map">
				                <div class="inner">
				                 		<h5><span>뮤지컬&lt;뮤지컬명&gt;</span>
										에 대한 기대평을 남겨주세요. <br />
										
										기대평을 남겨주신 분 중, 추첨을 통해 총 10명의 회원님께 <br />
										
										뮤지컬&lt;뮤지컬명&gt;공연 관람권을 드립니다. <br />
										
										*본 이벤트는 당사의운영 정책에 따라 진행되며 내부 사정에 의해 <br /> 
										
										별도의고지 없이 변경될 수 있습니다. <br />
				                 		</h5>
			          
				                </div>
				                <div class="rhr"></div> <!-- 선 -->
				  			</div>
				  			<div id="btnbox" style="width:60%; margin-left: 20%; margin-top: 20px; padding-bottom: 20px;" >
			                <button type="button" class="btn btn-secondary btn-lg btn-block">응모하기</button> 
				  			</div>
				  		
	                    </dd>
                </dl>
                  
                  
	     </div>
                
              




</body>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>