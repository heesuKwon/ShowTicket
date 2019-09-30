<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Calendar"%>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/contents.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/area.css"/>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/ranking.css">
<script>
$(()=>{
	$(".nav-item").on({
		mouseover : function(){
			$(this).on('mouseleave');
			$(this).css("cursor", "pointer");
			$(this).children().removeClass("default").addClass("select");
		},
		mouseleave : function(){
			 $(this).on('mouseleave');
			 $(this).children().removeClass("select").addClass("default");
		},
		click: function(){
			$(this).off('mouseleave')
			$(".nav-link").removeClass("select").addClass("default");
			$(this).children().removeClass("default").addClass("select");
			
		
		}
	})
});
</script>
<script>

	/* $.ajax({
		url:'${pageContext.request.contextPath}/',
		success: function(data){
			var html=""; 
		 	$("show_list").html("");
			html+="<td><span style='position:relateive; top:-8px;' class='ranknum n1'><span>"; //순위번호
			html+="<input type='hidden'name='productId' value='208807'>"; //value값에다 공연 아이디 
			html+="<input type='hidden'name='saleStatus' value='ON_SALE'>"; //value값에 할인 유무
			html+="</td>";
			html+="<td class='img_box'> <a class='detail_link' href='javascript:;'>";
			html+="<img src='//image.toast.com/aaaaab/ticketlink/TKL_5/jl_main09101725.jpg'"
					+"width='100px' height='122px' alt='공연 포스터'>";  //src에 공연 포스터 
			html+="</a>"
			html+="</td>";
			html+="<td class='tl tx'>";
			html+="<a class='detail_link' href='javascript:;'>뮤지컬 제목</a>"; //뮤지컬 제목
			html+="</td>"; 
			html+="<td class='ff_tahoma'>예매율</td>"; //예매율
			html+="<td class='tl ff_tahoma'>공연기간~공연기간</td>"; //공연기간
			html+="<td class='tl desc_vt'>공연장소</td>";	//공연장소	
			html+="<td><button type='button' class='btn btn-secondary'>예매하기</button><td>";
			
			$("#show_list").html(html);
		
		},
		error: function(jqxhr, textStatus, errorThrown){
			console.log("ajax처리실패!");
			console.log(jqxhr, textStatus, errorThrown);
		},
		complete: function(){
			//실행이 정상 혹은 에러를 발생시켜도 
			//마지막에 반드시 처리되는 함수.
			console.log("complete!!!!!!");		
		}
	}); */

	$(()=>{

		$("ul > li > div").click((e)=>{

				$(".nav-pills .nav-link.select").attr('class', 'nav-link nav-font default');
				$(e.target).attr('class','nav-link select nav-font');
				
				type = $(e.target).html();

	        	$(".title").html(type);

				getList();

		});

		
	});
	function getList(){
		<%
		SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd");
		Calendar cal = Calendar.getInstance();
		cal.add(cal.DATE,-1);
		%>
		var yesterday = <%date.format(cal.getTime());%>
		var url1 = "http://kopis.or.kr/openApi/restful/boxoffice?service=3127d89913494563a0e9684779988063&ststype=day&date="+yesterday+"&catecode=AAAB";
		
		var param={url1:url1}
		
		$.ajax({
			url:'${pageContext.request.contextPath}/ranking/rankAjax.do',
			data:param,
			success: function(data){
				var html=""; 
			 	$("show_list").html("");
			 	if(data.length>0){
				html+="<td><span style='position:relateive; top:-8px;' class='ranknum n1'>1<span>"; //순위번호
				html+="<input type='hidden'name='productId' value='208807'>"; //value값에다 공연 아이디 
				html+="<input type='hidden'name='saleStatus' value='ON_SALE'>"; //value값에 할인 유무
				html+="</td>";
				html+="<td class='img_box'> <a class='detail_link' href='javascript:;'>";
				html+="<img src='http://www.kopis.or.kr/"+data[i].poster+"
						+"width='100px' height='122px' alt='공연 포스터'>";  //src에 공연 포스터 
				html+="</a>"
				html+="</td>";
				html+="<td class='tl tx'>";
				html+="<a class='detail_link' href='javascript:;'>"+data[i].prfnm+"</a>"; //뮤지컬 제목
				html+="</td>"; 
				html+="<td class='tl ff_tahoma'>"+data[i].prfpd+"</td>"; //공연기간
				html+="<td class='tl desc_vt'>"+data[i].prfplcnm+"</td>";	//공연장소	
				html+="<td><button type='button' class='btn btn-secondary'>예매하기</button><td>";
				
				$("#show_list").html(html);
			
			},
			error: function(jqxhr, textStatus, errorThrown){
				console.log("ajax처리실패!");
				console.log(jqxhr, textStatus, errorThrown);
			},
			complete: function(){
				//실행이 정상 혹은 에러를 발생시켜도 
				//마지막에 반드시 처리되는 함수.
				console.log("complete!!!!!!");		
			}
		
	}
	
	
</script>
<% int i = 0;%>
<div id="container" class="ranking_wrap" style="margin-bottom:10%;">
	<div class="inner" style="padding-top: 0px;">
		<h2 class="blind">
			<span> 랭킹 </span>
		</h2>
		<ul class="rank_bx">
			<li><strong>집계기간</strong>
				<p>
					<span style="color: #4b12b5">2019년 09월 16일 (월) ~ 21:34 현재</span>
					(1시간 단위로 업데이트 됩니다) <br> 당일 오전의 경우 판매 비중이 낮으므로 오전 10:30 이전까지는
					전일 24시간의 집계 현황을 알려드립니다.
				</p>
			</li>
			<li><strong>집계대상</strong>
				<p>
					<span class="color_black">티켓링크 인터넷예매, 모바일웹예매, 모바일앱예매, 전화예매</span>
					(결제 완료/예매 매수 기준)
				</p>
			</li>
		</ul>

		<!-- 집계결과 컨텐츠 -->
		<div class="rank_con">

			<ul class="nav nav-pills nav-justified"
				style="margin-top: 30px; margin-bottom: 20px;">
				<li class="nav-item"><div class="nav-link select nav-font">뮤지컬</div></li>
				<li class="nav-item"><div class="nav-link default nav-font">연극</div></li>
			</ul>

			<div class="tabCon">
				<h3 class="blind">랭킹 집계 결과</h3>
				<!-- 집계결과 -->
				<div class="rslt_bx">
					<!-- 버튼 -->
					<div class="btn_lst">
						<!-- [D] 활성화시 a에 .on 추가-->
						<a href="/ranking/reserve/daily?categoryId=10" class="on">오늘</a>
						<span class="bar">l</span>
						<a href="/ranking/reserve/weekly?categoryId=10">주간</a> 
						<span class="bar">l</span> 
						<a href="/ranking/reserve/monthly?categoryId=10">월간</a>
						<span class="bar">l</span> 
						<a href="/ranking/reserve/yearly?categoryId=10">연간</a>
					</div>
					<!-- // 버튼 -->
					<!-- 랭킹 테이블 -->
					<div class="basic_tbl rank_tbl">
						<table>
							<caption>랭킹 집계 결과 목록</caption>
							
							<thead>
								<tr>
									<th style="width: 65px; padding-left: 10px; padding-right: 10px;">랭킹</th>
									<th style="width: 130px">포스터</th>
									<th style="width: 282px">공연명</th>
									<th style="width: 80px">기간</th>
									<th style="width: 110px">장소</th>
									<th style="width: 150px">예매하기</th>
								</tr>
							</thead>
							<tbody>
								<!-- 여기 show_list -->
								<c:forEach items="${dayBoxList }" var="map" begin="0" end="9">
								<tr class="show_list" id="show_list">
									<td style="width: 65px">
										<span style="position: relative; top: -8px; color:black;"class="ranknum n1"><%=++i %></span> 
										<input type="hidden"name="productId" value="28807">
										<input type="hidden"name="saleStatus" value="ON_SALE"> 
										
									</td>
									<td class="img_box" style="width: 130px">
									<a class="detail_link"href="javascript:;">
										<img src="http://www.kopis.or.kr/${map.poster }"
												width="100px" height="122px" alt="공연 포스터">
									</a>
									</td>
									<td style="width: 282px">
										<a class="detail_link" href="javascript:;">${map.prfnm }</a>
									</td>
									<td style="width: 80px;word-break:break-all;">${map.prfpd }</td>
									<td style="width: 110px">${map.prfplcnm }</td>
									<td>
										<button type="button" class="btn btn-secondary" style="">예매하기</button>
									</td>
								</tr>
								</c:forEach>
								
							</tbody>
						</table>

					</div>

					<!-- //집계결과 -->
				</div>
				<!-- rslt_bxEND -->

			</div>
		</div>
	</div>
</div>
<!-- container -->




</body>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>