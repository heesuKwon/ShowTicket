<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle"/>
</jsp:include>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/contents.css">

<style>
div#b-container{border-radius: 10px;width: 80%;margin-left: 10%;height: 700px; border: 2px solid #8f01a3;margin-top: 2%; }
#txt_st{text-align: center;}
#txt_st>span{color:#8f01a3}
table#tbl_info{border-collapse: collapse;width: 100%;text-align: center;font-size: 17px;}
div#content{margin-left: 5%; margin-top: 3%; font-family: 'Gothic A1', sans-serif; font-size: 15px;font-weight: bold; }
h4 strong {color:#8f01a3;}
</style>
	
	<div id="container" class="event_cont">
        <div class="inner">
            <h2 class="blind">이벤트</h2>
            
            <ul class="nav nav-pills nav-justified">
				<li class="nav-item"><a class="nav-link nav-font default" href="${pageContext.request.contextPath}/event/eventList.do">진행중인 이벤트</a></li>
				<li class="nav-item"><a class="nav-link nav-font default" href="${pageContext.request.contextPath}/event/endEventList.do">종료된 이벤트</a></li>
				<li class="nav-item"><a class="nav-link nav-font select" href="${pageContext.request.contextPath}/event/prizewinner.do">당첨자 발표</a></li>
				<li class="nav-item"><a class="nav-link nav-font default" href="${pageContext.request.contextPath}/coupon/coupon.do">쿠폰</a></li>
			</ul>
			 <h2 id="txt_st"><strong><span>SHOWTICKET</span>과 함께하는 이벤트 당첨자 발표</strong></h2>
			<div id="b-container">
		
				  <table id="tbl_info" style="border-radius: 10px;">
                        <caption>당첨자 정보</caption>
                        <colgroup>
                            <col style="width: 80px">
                            <col style="width: 130px">
                            <col style="width:100px">
                        </colgroup>
                  
                        <tr style="background:#D8D8D8; border-radius: 3px;">
                            <th scope="col">번호</th>
                            <th scope="col">분류</th>
                            <th scope="col">제목</th>
                            <th scope="col">기간</th>
                        </tr>
                    
						<tr>
							<td>번호</td>
							<td>분류</td>
							<td>제목</td>
							<td>기간</td>
						</tr>
				
				</table>
		
				<div id="content">
				
				안녕하세요. SHOW 티켓입니다.
				<br /><br /><br />
				<strong>연극 &lt; &gt; 2차 기대평 초대 이벤트</strong>에 참여해주신 모든 분들께 진심으로 감사드립니다. <br />
				당첨되신 모든 분께 축하의 말씀 드리며,<br /> 안내되는 경품 수령에 대한 공지를 꼭! 확인 해주시기 바랍니다. <br />
				<br /><br /><br />
				
				<h4><strong>1. 경품 내용</strong></h4>
				
				이벤트 상세 날짜   timeman 9월 10일 공연 2쌍 (1인 2매)
				
				<br /><br /><br />
				
				<h4><strong>2. 경품수령방법</strong></h4>
				
				초대 관람 당일, 공연시작 30분전까지 공연장 매표소에 오셔서 <br />
				회원님의 성함과 아이디를 말씀하여 주시면 입장하실 수 있습니다. <br />
				본인 여부를 확인하여야 티켓을 배부할 수 있으므로, <br />
				반드시 신분증을 지참하고 오시기 바랍니다. <br />
				
				※ 초대티켓은 당첨회원 본인만 수령 가능하며, 양도 불가합니다.
				<br /><br /><br />
				<h4><strong>3. 당첨자 확인 * Ctrl + F로 검색하시면, 편리합니다.</strong></h4>
				
				
				권*수 / dvm***
				박*영 / pingu***
						
				</div>
		
		
			</div>
			
					

        </div>
    </div>
	

		

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>