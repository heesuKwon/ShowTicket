<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />

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


	
	$.ajax({
		url:'${pageContext.request.contextPath}/',
		success: function(data){
			var html=""; 
		 	$("show_list").html("");
			html+="<td><span style='position:relateive; top:-8px;' class='ranknum n1'>순위번호<span>"; //순위번호
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
	});
	
	




</script>

<div id="container" class="ranking_wrap">
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
							<colgroup>
								<col style="width: 65px">
								<col style="width: 130px">
								<col style="width: 282px">
								<col style="width: 90px">
								<col style="width: 100px">
								<col>
								<col style="width: 150px">
							</colgroup>
							<thead>
								<tr>
									<th scope="col"
										style="width: padding-left: 10px; padding-right: 10px;">랭킹</th>
									<th scope="col" colspan="2">공연명</th>
									<th scope="col">예매율</th>
									<th scope="col">공연기간</th>
									<th scope="col">장소</th>
									<th scope="col">예매하기</th>
								</tr>
							</thead>
							<tbody>
								<!-- 여기 show_list -->
								<tr class="show_list" id="show_list">
									<td>
										<span style="position: relative; top: -8px; color:black;"class="ranknum n1">1</span> 
										<input type="hidden"name="productId" value="28807">
										<input type="hidden"name="saleStatus" value="ON_SALE"> 
										
									</td>
									<td class="img_box">
									<a class="detail_link"href="javascript:;">
										<img src="//image.toast.com/aaaaab/ticketlink/TKL_5/jl_main09101725.jpg"
												width="100px" height="122px" alt="공연 포스터">
									</a>
									</td>
									<td class="tl tx">
										<a class="detail_link" href="javascript:;">뮤지컬 [정글라이프]</a>
									</td>
									<td class="ff_tahoma">27.03 %</td>
									<td class="tl ff_tahoma">2019.08.10 ~ 2019.10.06</td>
									<td class="tl desc_vt">고스트씨어터(구,다소니씨어터)</td>
									<td>
										<button type="button" class="btn btn-secondary" style="">예매하기</button>
									</td>
								</tr>
								<tr class="show_list" id="show_list">
									<td>
										<span style="position: relative; top: -8px; color:black;"class="ranknum n1">1</span> 
										<input type="hidden"name="productId" value="28807">
										<input type="hidden"name="saleStatus" value="ON_SALE"> 
										
									</td>
									<td class="img_box">
									<a class="detail_link"href="javascript:;">
										<img src="//image.toast.com/aaaaab/ticketlink/TKL_5/jl_main09101725.jpg"
												width="100px" height="122px" alt="공연 포스터">
									</a>
									</td>
									<td class="tl tx">
										<a class="detail_link" href="javascript:;">뮤지컬 [정글라이프]</a>
									</td>
									<td class="ff_tahoma">27.03 %</td>
									<td class="tl ff_tahoma">2019.08.10 ~ 2019.10.06</td>
									<td class="tl desc_vt">고스트씨어터(구,다소니씨어터)</td>
									<td>
										<button type="button" class="btn btn-secondary" style="">예매하기</button>
									</td>
								</tr>



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