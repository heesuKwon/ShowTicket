<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/contents.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/event.css">
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle" />
</jsp:include>
<style>
input {border: none; }
::-webkit-input-placeholder { text-align:right;pointer-events: none; }
#inputText{width:100px;    display: contents;}
.enrollText{width:180px;}
::-webkit-scrollbar-thumb {background-color:#8f01a3;border-radius: 10px;}
div.search{    display: inline-block;  margin-bottom: 23px;}
div#showList-box{width:98%; height:200px; overflow:auto;}
</style>
<script>
$(()=>{
	$("#okbutton").click(function(){  //확인 버튼 클릭시 체크된 row의 값을 가져온다 
		var Data =new Array(); //(0,1)
		var rowData= new Array(); 
		var tdArr = new Array(); 
		var chkbox = $("input[name=chk_yn]:checked");

		chkbox.each(function(i){
			var tr =  chkbox.parent().parent().eq(i); 
			
			var td = tr.children();  

		
		 	Data.push(tr.eq(0));
			var showId = td.eq(0).text(); 
			var genre = td.eq(1).text(); 
			var showName = td.eq(2).text(); 
			var startDate = td.eq(3).text(); 
			var endDate = td.eq(4).text(); 
			var status = td.eq(5).text(); 
			var dicaYN = td.eq(6).text();  //할인 유무
	
			tdArr.push(showId); 
			tdArr.push(genre);
			tdArr.push(showName);
			tdArr.push(startDate);
			tdArr.push(endDate);
			tdArr.push(status);
			tdArr.push(dicaYN);
			
			rowData.push(tdArr);
			
			
		});
	
		for(var i=0; i<Data.length; i++){
		var html=""; 
		

		var contain= "<br/><div class='search'><form action='${pageContext.request.contextPath}/event/insertAddSale.do'><img id='photo' src='//image.toast.com/aaaaab/ticketlink/TKL_1/bea_0722.jpg'width='100px' height='122px'>"; 
		contain +="<table class='ListTable' id='detail' style='position:relative;'>";
		contain+="<tr><th id='service'>공연아이디</th>";
		contain+="<th id='genre'>종류</th>"; 
		contain+="<th id='title'>공연명</th>"; 
		contain+="<th id='start'>공연 시작일</th>";
		contain+="<th id='finish'>공연 종료일</th>";
		contain+="<th>공연 상태</th>";
		contain+="</tr>";

		contain+="<tr>";
		contain+="<td id='showId'><input  name='showId' value='"+tdArr[0]+"' readonly='readonly'></td>";
		contain+="<td id='showGenre'><input  name='showGenre' value='"+tdArr[1]+"' readonly='readonly'></td>";
		contain+="<td id='showName'><input  name='showName' value='"+tdArr[2]+"' readonly='readonly'></td>";
		contain+="<td id='showStart'><input  name='start' value='"+tdArr[3]+"' readonly='readonly'></td>";
		contain+="<td id='showEnd'><input  name='finish' value='"+tdArr[4]+"' readonly='readonly'></td>";
		contain+="<td id='sale_yn'><input  name='sale_yn' value='"+tdArr[5]+"' readonly='readonly'></td>";
		contain+="</tr>";
		
		contain+="</table><br/><br/><br/>";
		contain+="<div id='enroll'><h2 class='small-title'>할인률</h2>"; 
		contain+="<input type='number' class='enrollText' name='disCountRate' placeholder='%'><br/><h2 class='small-title'>할인기간</h2>";
		contain+="<input type='Date' class='enrollText'name='disCountStartDate' ><h2 id='inputText'>~</h2><input type='Date' name='disCountEndDate' class='enrollText'>";
		contain+="</div><button type='submit' class='btn btn-secondary' id='changebutton'>작성완료</button>";
		contain+="</div>";
		contain+="</form></div>";
		
		html+=contain;
		$("div#searchC").append(html);
		}
		
		
		
	});
});

</script>

<style>

</style>

<div id="container" class="event_cont">
	<div class="inner" style="width:970px;">
		<ul class="nav nav-pills nav-justified">
			<li class="nav-item" style="width: 40%"><a
				class="nav-link nav-font default">특가할인 목록</a></li>
			<li class="nav-item" style="width: 40%"><a
				class="nav-link nav-font select">특가할인 추가</a></li>
		</ul>
		<h2 class="title scrolltbody">공연목록</h2>
		
		
		<table class="ListTable" style="width:932px;" border="0" >
		<tr>
			<th>공연 ID</th>
			<th>종류</th>
			<th>공연명</th>
			<th>공연시작일</th>
			<th>공연종료일</th>
			<th>공연상태</th>
			<th>할인선택</th>
		</tr>
		</table>
		<div id="showList-box">
	
		
			<table class="ListTable scrolltable" id="showList" width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>1000001</td>
					<td>뮤지컬</td>
					<td>BEA</td>
					<td>2019.09.03</td>
					<td>2019.10.03</td>
					<td>Y</td>
					<td><input type="checkbox" name="chk_yn" id="chk_yn"></td>
				</tr>
				<tr>
					<td>2000000</td>
					<td>뮤지컬</td>
					<td>BEA</td>
					<td>2019.09.03</td>
					<td>2019.10.03</td>
					<td>Y</td>
					<td><input type="checkbox" name="chk_yn" id="chk_yn"></td>
				</tr>
				
			</table>
		</div>
		<button type="button" class="btn btn-secondary" id="okbutton">확인</button>
		<button type="button" class="btn btn-secondary" id="goList">목록으로</button>
		
		
		<h2 class="title">특가할인</h2>
		<div id="searchC" style="width: 100%; height: 100%;">
			
		</div>
		
	</div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>