<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bookticket.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/ticketing.css" />
<style type="text/css">
nav-pills .nav-link {
	border-radius: 0;
}

.SeatT {
	background-color:white;
	width :60px; 
	height :10px; 
	font-size:7pt;	
	clear: left;
    float: left;
	padding:0 10 0 0;
}
.SeatR {
	background-color:whitesmoke;
	width:10px;
	height:10px;
	margin:1px;
    padding:0 0 0 0;
    display:inline-block;
}
.SeatB {
	background-color:white;
	width:10px;
	height:1px;
	margin:1px;
    padding:0 0 0 0;
    display:inline-block;
}
.SeatN {
	width:10px;
	height:10px;
	margin:1px;
    padding:0 0 0 0;
    display:inline-block;
	cursor:pointer;
}

.SeatN_Daegu {
	width:30px;
	height:30px;
	margin:3px;
	padding:0 0 0 0;
    display:inline-block;
	cursor:pointer;
}


</style>
<script>
function SelectSeat(me, SeatGrade, Floor, RowNo, SeatNo, Block, SeatGradeName){
	 if (typeof me == "string") {
		me = document.getElementById(me);
	} 
	
	if(me.style.display == 'none'){
	me.style.display = 'block';	
	}
	else{
	me.style.display = 'none';	
	}
	var seatCnt = 0;
	var seatTotal = document.getElementById("ImgSeatCount").value;
	var html = "<h5>선택좌석</h5><br>";
	for(i = 1; i < seatTotal ; i++){
	  	var sid = "SID"+i;
	  	sid = document.getElementById(sid);
	  	if(sid.style.display == 'block'){
			html += sid.previousElementSibling.getAttribute("title");
	  		html += "<br/>";

			seatCnt++;
	  	}
	}
	html += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;총"+seatCnt+"좌석";	
	$("#r_seat").html(html);
//	for(i=0; i < parent.SeatBuffer.index; i++)
//	{
//		o = parent.SeatBuffer.Data[i];
//
//		if(o.SeatGrade != SeatGrade)
//		{
//			alert(o.SeatGradeName + "과 " + SeatGradeName + "을 동시에 선택하실 수 없습니다. 동일한 좌석등급으로 좌석을 선택해주세요");
//			return;
//		}
//	}

	
	var SeatInfo = me.getAttribute("SeatInfo");
	var RowIdx = me.getAttribute("RowIdx");
	var ColIdx = me.getAttribute("ColIdx");

	// 선택을 취소 하면 
	if ("Y" == me.value){	

		parent.fnSelectSeat("D", me, SeatGrade, Floor, RowNo, SeatNo, Block, SeatInfo);
	}else{

		parent.fnSelectSeat("A", me, SeatGrade, Floor, RowNo, SeatNo, Block, SeatInfo);
	}
}

function next(){
	$("#next").submit();
}
</script>
<body>
	<table width="100%" height="100%" cellpadding="0" cellspacing="0" id="TmgsTable" name="TmgsTable">
<tr>
	<td align="center" valign="middle">

		<style> 
			.stySelectSeat
			{
				position:absolute;
				z-index:3;
				CURSOR:pointer;
				border:#ffffff 0px solid;
				background-repeat:no-repeat;
			}
			 
			.stySeat
			{
				position:absolute;
				z-index:2;
				CURSOR:pointer;
				border:#ffffff 0px solid;
				background-repeat:no-repeat;
			} 
				
			.stySeatBase
			{
				position:absolute;
				display:none2;
			} 
		</style> 
		
		
		${html }
	
</td>
</tr>
</table>
	<div id="seatgdimg">
		<img id="seatSimg"
			src="${pageContext.request.contextPath }/resources/images/예비좌석.jfif"
			alt="" />
	</div>
	<div id="seatgd">
		<h6>좌석 등급</h6>
		<div id="seatinner">
			<label for="vip" id="vip">VIP석</label> <label for="price"
				style="margin-left: 25px;">80,000원</label> <label for="seat"><span>10</span>석</label>
			<br /> <label for="r" id="r" style="padding-right: 16px;">R석</label>
			<label for="price" style="margin-left: 26px;">80,000원</label> <label
				for="seat"><span>10</span>석</label> <br /> <label for="s" id="s">S석</label>
			<label for="price" style="margin-left: 44px;">80,000원</label> <label
				for="seat"><span>10</span>석</label> <br /> <label for="e" id="e"
				style="padding-right: 18px;">일반석</label> <label for="price">50,000원</label>
			<label for="seat"><span>10</span>석</label> <br />

		</div>

		<div id="r_seat">

		</div>
	
		
		<form name="nextFrm" action="${pageContext.request.contextPath}/ticketing/ticketingPoint.do" id="next" method="post">
			<input type="hidden" name="playId" value="${mas.id}" />
			<input type="hidden" name="selectDate" value="${selectDate}" />
			<input type="hidden" name="selectTime" value="${selectTime}" />
			<!--  -->
		</form>
		<div class="t_btndiv">
			<input type="button" value="이전단계" class="t_button1" /> 
			<input type="button" value="다음단계" class="t_button2" onclick="next();"/>
		</div>


	</div>

</body>


