<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/index.css">




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

<script type="text/javascript"> 

imgslide(); //페이지가 로딩될때 함수를 실행합니다

function imgslide(){

  $val = $("#slide").attr("val"); //현재 이미지 번호를 가져옵니다

  $mx = $("#slide").attr("mx"); //총 이미지 개수를 가져옵니다

	$("#img"+$val).hide(); //현재 이미지를 사라지게 합니다.

	if( $val == $mx ){ $val = 1; } //현재이미지가 마지막 번호라면 1번으로 되돌립니다.

	else{ $val++; } //마지막 번호가 아니라면 카운트를 증가시켜줍니다

	$("#img"+$val).fadeIn(500); //변경된 번호의 이미지영역을 나타나게 합니다.괄호 안에 숫자는 페이드인 되는 시간을 나타냅니다.

	$("#slide").attr('val',$val); //변경된 이미지영역의 번호를 부여합니다.

	setTimeout('imgslide()',5000); //1초 뒤에 다시 함수를 호출합니다.(숫자값 1000당 1초)

}

</script>
<script type="text/javascript"
	src="/resources/js/rollingBigBanner-58d236f0d65bde4d59ea071b32b5c0ca.js"></script>
<script type="text/javascript">
var index=0;
window.onload = function(){
	slideShow();
	change();
}
function slideShow(){
	var i;
	var x = document.getElementsByClassName("mySlides");
	for(i=0; i<x.length;i++){
		x[i].style.display="none";
	}
	index++;
	if(index>x.length){
		index=1;
	}
	x[index-1].style.display = "block";
	setTimeout(slideShow,4000);
	
}
function change(){
	 
        $(".rankingItem on>a").hover(function(){
            $(".rangkingImg").attr('src',"${pageContext.request.contextPath }/resources/images/plus.png");
        });

}

</script>

<div class="w3-content w3-section" style="max-width: 500px"></div>
<div class="top_area">
	<div class="submain_topban">
		<div class="submain_goods" style="width: 990px; margin: auto;">
			<img class="mySlides"
				src="//image.toast.com/aaaaab/ticketlink/TKL_7/공연전시_메인_990x280_드라큘라.jpg"
				width="990" height="280"> <img class="mySlides"
				src="//image.toast.com/aaaaab/ticketlink/TKL_3/공연전시_메인_990x280_친정엄마_v3.jpg"
				width="990" height="280"> <img class="mySlides"
				src="//image.toast.com/aaaaab/ticketlink/TKL_7/공연전시_메인_990x280_사랑의가객_1.jpg"
				width="990" height="280"> <img class="mySlides"
				src="//image.toast.com/aaaaab/ticketlink/TKL_5/공연전시_메인_990x280_다윈영의-악의기원.jpg"
				width="990" height="280"> <img class="mySlides"
				src="//image.toast.com/aaaaab/ticketlink/TKL_7/공연전시_메인_990x280_에드거앨런포.jpg"
				width="990" height="280"> <img class="mySlides"
				src="//image.toast.com/aaaaab/ticketlink/TKL_3/공연전시_메인_990x280_정글라이프.jpg"
				width="990" height="280"> <img class="mySlides"
				src="//image.toast.com/aaaaab/ticketlink/TKL_7/공연전시_메인_990x280_NEW-달을품은슈퍼맨.jpg"
				width="990" height="280"> <img class="mySlides"
				src="//image.toast.com/aaaaab/ticketlink/TKL_3/공연전시_메인_990x280_시티오브엔젤.jpg"
				width="990" height="280">
		</div>
		<!-- 슬릭 END -->

		<div class="inner">

			<div class="maintop_new open_spot">
				<div class="maintop_left">
					<div class="header">
						<a href="${pageContext.request.contextPath }/">
							<h2 class="title">
								티켓오픈 <img
									src="${pageContext.request.contextPath }/resources/images/plus.png"
									alt="더보기" style="width: 30px;" />
							</h2>
						</a>
					</div>
					<div class="maintop_cont">
						<ul>
							<li class="first"></li>
							<c:forEach items="${list }" var="n">
								<li class='rankingItem on' data-productid="28807"
									data-url="//image.toast.com/aaaaab/ticketlink/TKL_5/jl_main09101725.jpg"><a
									href="/product/28807" style="color: #585858;">${n.noticeTitle }</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<div class="maintop_new real_ranking">
				<div class="maintop_left">
					<div class="header">
						<a href="${pageContext.request.contextPath }/">
							<h2 class="title">
								일간 랭킹 <img
									src="${pageContext.request.contextPath }/resources/images/plus.png"
									alt="더보기" style="width: 30px;" />
							</h2>
						</a>
					</div>
					<div class="maintop_cont">

						<ul id="concertRankingListUl">
							<c:forEach items="${BoxlistT}" var="map" begin="0" end="0">
								<li class="first"><a class="rangkingImgLink"
									href="/product/28807"> <img class="rangkingImg"
										src="http://www.kopis.or.kr/${map.poster }" width="180"
										height="218" alt="">
								</a></li>
							</c:forEach>
							<!-- [D] 활성될 때 on 클래스 추가 -->
							<c:forEach items="${BoxlistT}" var="map" begin="0" end="30"
								step="7">
								<li class='rankingItem on' data-productid="28807"
									data-url="http://www.kopis.or.kr/${map.poster }"><a
									href="/product/28807" style="color: #585858;">${map.prfnm }&nbsp;&nbsp;-&nbsp;&nbsp;${map.prfpd }</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="maintop_right slide_wrap">

					<div class="slide_ctrl" style="display: none;">
						<!-- [D] 이전페이지 없을 경우 off 클래스, disabled="disabled" 추가 -->
						<button type="button" id="prev_btn" class="prev">이전</button>
						<!-- [D] 다음페이지 없을 경우 off 클래스 추가 -->
						<button type="button" id="next_btn" class="next off">다음</button>
					</div>
				</div>
			</div>
		</div>

		<div class="section_best">
			<div class="inner">
				<a href="${pageContext.request.contextPath }/">
					<h2 class="title">
						베스트뮤지컬 <img
							src="${pageContext.request.contextPath }/resources/images/plus.png"
							alt="더보기" style="width: 30px;" />
					</h2>
				</a>
				<div class="suggest_wrap">
					<ul class="best_list">
						<c:forEach items="${BoxlistM}" var="map" begin="0" end="3">
							<li><a href="http://www.ticketlink.co.kr/product/29652">
									<p>
										<img src="http://www.kopis.or.kr/${map.poster }">
									</p>
									<div class="list_info">
										<strong class="elp">${map.prfnm }</strong>
										<dl>
											<dt>기간</dt>
											<dd>${map.prfpd }</dd>
											<dt>장소</dt>
											<dd>${map.area }</dd>
										</dl>
									</div>
							</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>

		<div class="section_best">
			<div class="inner">
				<a href="${pageContext.request.contextPath }/">
					<h2 class="title">
						베스트 연극 <img
							src="${pageContext.request.contextPath }/resources/images/plus.png"
							alt="더보기" style="width: 35px; height: 35px;" />
					</h2>
				</a>
				<ul class="best_list">
					<c:forEach items="${BoxlistP}" var="map" begin="0" end="3">
						<li><a href="http://www.ticketlink.co.kr/product/29652">
								<p>
									<img src="http://www.kopis.or.kr/${map.poster }">
								</p>
								<div class="list_info">
									<strong class="elp">${map.prfnm }</strong>
									<dl>
										<dt>기간</dt>
										<dd>${map.prfpd }</dd>
										<dt>장소</dt>
										<dd>${map.area }</dd>
									</dl>
								</div>
						</a></li>
					</c:forEach>
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
