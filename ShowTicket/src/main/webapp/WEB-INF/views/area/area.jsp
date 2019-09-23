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
<script>
var cpage = 2;

$(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
     if($(window).scrollTop() > $(document).height() - $(window).height()-100){
          getList(cpage);
          cpage++;   
     } 
});
 
function getList(page){
    $.ajax({
        url : '${pageContext.request.contextPath}/area/areaAjax.do',
        data : {"cpage" : cpage},
        success : function(data) {

            var html = "";
            
            if (cpage==1){ //페이지가 1일경우에만 id가 list인 html을 비운다.
                  $("#goods_list").html(""); 
            }
           
            
                if(data.length>0){
                	for(var i=0; i<data.length; i++){
	                	html+="<li><a href='http://www.ticketlink.co.kr/product/29767'>";
	                	html+="<p><img src="+data[i].poster+" alt=''></p>";
	                	html+="<div class='list_info'>";
	                	html+="<strong class='elp'>"+data[i].prfnm+"</strong>";
	                	html+="<dl>";
	                	html+="<dt>기간</dt>";
	                	html+="<dd>"+data[i].prfpdfrom+" ~ "+data[i].prfpdto+"</dd>";
	                	html+="<dt>장소</dt>";
	                	html+="<dd>"+data[i].fcltynm+"</dd>";
	                	html+="</dl>";
	                	html+="</div>";
	                	html+="</a>";
	                	html+="</li>";
                	}
                }
            
            html = html.replace(/%20/gi, " ");
            
            /*if (page==1){  //페이지가 1이 아닐경우 데이터를 붙힌다.
                $("#showListAll").html(html); 
            }else{*/
            	$("#goods_list").append(html); 
            /*}*/
       },error:function(e){
           if(e.status==300){
               alert("데이터를 가져오는데 실패하였습니다.");
           };
       }
    }); 
}


$(()=>{
	$(".nav-item").on({
		mouseover : function(){
			$(this).on('mouseleave');
			$(this).css("cursor", "pointer");
			$(this).children().removeClass("default").addClass("select");
		},
		mouseleave : function(){
			 $(this).children().removeClass("select").addClass("default");
		},
		click: function(){
			$(this).off('mouseleave')
			$(".nav-link").removeClass("select").addClass("default");
			$(this).children().removeClass("default").addClass("select");
			
			cpage=1;
			
			getAreaList(cpage);
		    cpage++;
			
			$(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
			     if($(window).scrollTop() > $(document).height() - $(window).height()-100){
			          getAreaList(cpage);
			          cpage++;   
			     } 
			});			
		}
	})
	

})





</script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/contents.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/area.css"/>

    <!-- container 시작 -->
    <div id="container" class="submain_front">
        <div class="inner submain_district">
            <h2 class="blind">공연</h2><!-- [D]  1 depth의 값을 h2로 뿌려줍니다 -->

			

<ul class="nav nav-pills nav-justified" style="margin-top: 30px; margin-bottom: 20px;">
	<li class="nav-item"><div class="nav-link select nav-font">전체</div></li>
	<li class="nav-item"><div class="nav-link default nav-font">서울</div></li>
	<li class="nav-item"><div class="nav-link default nav-font">경기</div></li>
	<li class="nav-item"><div class="nav-link default nav-font">대구/경북</div></li>
	<li class="nav-item"><div class="nav-link default nav-font">부산/경남</div></li>
	<li class="nav-item"><div class="nav-link default nav-font">광주/전라</div></li>
	<li class="nav-item"><div class="nav-link default nav-font">대전/충청</div></li>
	<li class="nav-item"><div class="nav-link default nav-font">강원</div></li>
	<li class="nav-item"><div class="nav-link default nav-font">제주</div></li>
</ul>
			
			<h2 class="title">전체</h2>
			
            <ul class="goods_list" id="goods_list">
               <c:forEach items="${concatList}" var="map">
	                <li><a href="http://www.ticketlink.co.kr/product/29767">
	                    <p><img src="${map.poster }" alt=""></p>
	                    <div class="list_info">
	                        <strong class="elp">${map.prfnm }</strong>
	                        <dl>
	                            <dt>기간</dt>
	                            <dd>${map.prfpdfrom } ~ ${map.prfpdto }</dd>
	                            <dt>장소</dt>
	                            <dd>${map.fcltynm }</dd>
	                        </dl>
	                    </div>
	                </a></li>
	               </c:forEach>   
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

/*	var page = 1;
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
				/* alert("오류가 발생했습니다. 관리자에게 문의하세요.");
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

	}*/

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
