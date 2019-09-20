<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/coupon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/contents.css">
 <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>   
 <style>
 body{ background: lightgray;}
 #container{margin:0 auto;margin-left: 7px; width:900px; height: 600px;}
.nav-pills .nav-link.select{
    color: #fff;
    background-color: #8f01a3;
}
.nav-pills .nav-font{
	font-family: 'Gothic A1', sans-serif;
	font: 15px ;
	font-weight:bold;
	padding: .7rem 1rem;
	border-radius: 0;
}

.nav-pills .nav-link.default{
	color: #8f01a3;
    border-left: 1px solid #8f01a3;
}

.nav-pills .nav-item:first-child .nav-link.default{
	color: #8f01a3;
	border: none;
}

.nav-pills{
	border: 1px solid #8f01a3;
    border-radius: .25rem;
}

.btn-color{
	background-color: #8f01a3;
	border: 1px solid #8f01a3;
}

.btn-color:hover{
	background-color: white;
	border: 1px solid #8f01a3;
	color: #8f01a3;
}
.inner{ width: 850px; margin-left: 15px;}
#seatBimg{margin-top: 30px; width: 480px;}
#seatSimg{width:120px;}
#seatgdimg{top: 105px;left: 610;position: absolute;}
#seatgd{ position: absolute; top: 235px;width: 352px; height: 300px;left: 515px;}
#center-image{width: 200px; margin-left: 15px; margin-top: 5px;}
#seatgd h5{font-weight: bold; position: absolute;}
#seatinner{ top: 245px; margin-left: 115px; width: 236px; height: 300px;}
#seatinner label#vip {font-size: 18;font-weight: bold;}
#seatinner label#r {font-size: 18;font-weight: bold;}
#seatinner label#s {font-size: 18;font-weight: bold;}
#seatinner label#e {font-size: 18;font-weight: bold;}
#r_seat{border: 1px solid; top: 140px; width: 300px; height: 160px; position: absolute;  margin-left: 0px;}
div#btng button#dropM {margin-left: 50px; margin-right: 0px; width: 68px; background-color: #8f01a3;border: 1px solid #8f01a3;}
div#btng button#dropM:hover {background-color: white;border: 1px solid #8f01a3;color: #8f01a3; font-weight: bold;}
  
</style>
    
    <body>
    	
    <div id="container">
    <img src="${pageContext.request.contextPath }/resources/images/showticket_logo.png" id="center-image" alt="스프링로고" />
    
       	<div class="inner">
       	
	       <ul class="nav nav-pills nav-justified">
					<li class="nav-item"><a class="nav-link nav-font select" href="">좌석선택</a></li>
					<li class="nav-item"><a class="nav-link nav-font default" href="">할인/매수선택</a></li>
					<li class="nav-item"><a class="nav-link nav-font default" href="">예매확인</a></li>
					<li class="nav-item"><a class="nav-link nav-font default" href="">결제</a></li>
				</ul>
	       	
       		<img id="seatBimg" src="${pageContext.request.contextPath }/resources/images/예비좌석.jfif" alt="" />
	       
      	 </div>

       <div id="seatgdimg">
       		<img id="seatSimg" src="${pageContext.request.contextPath }/resources/images/예비좌석.jfif" alt="" />
       </div>
     	<div id="seatgd">
     		<h5>좌석 등급</h5>
     	 	<div id="seatinner">
     	 		<label for="vip" id="vip">VIP석</label>
     	 		<label for="price" style="margin-left: 25px;">80,000원</label>
     	 		<input type="checkbox" aria-label="Checkbox for following text input" class="sg vip" id="vip" style="height: 20px;width: 20px;">
     	 		<br />
     	 		<label for="r" id="r" style="padding-right: 16px;">R석</label>
     	 		<label for="price" style="margin-left: 26px;">80,000원</label>
     	 		<input type="checkbox" aria-label="Checkbox for following text input" class="sg r" id="r" style="height: 20px;width: 20px;">
     	 		<br />
     	 		<label for="s" id="s" >S석</label>
     	 		<label for="price" style="margin-left: 44px;">80,000원</label>
     	 		<input type="checkbox" aria-label="Checkbox for following text input" class="sg s" id="s" style="height: 20px;width: 20px;">
     	 		<br />
     	 		<label for="e" id="e" style="padding-right: 18px;">일반석</label>
     	 		<label for="price">50,000원</label>
     	 		<input type="checkbox" aria-label="Checkbox for following text input" class="sg e" id="e" style="height: 20px;width: 20px;">
     	 		<br />
     	 		
     	 	</div>
     	 	
     	 	<div id="r_seat">
     	 		<h5>선택좌석</h5>
     	 	
     	 	
     	 	</div>
  
     	 	<div id="btng">
     	 	<button type="button" id="dropM" class="btn btn-secondary btn-sm">이전</button>
     	 	<button type="button" id="dropM" class="btn btn-secondary btn-sm">다음</button>
     	 	
     	 	</div>
     	 	
     	 	
     	</div>
    
    </div>
    
    </body>