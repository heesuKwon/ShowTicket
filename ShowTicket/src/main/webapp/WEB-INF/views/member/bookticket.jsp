<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bookticket.css">
 <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>   
<<<<<<< HEAD
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bookticket.css">
 <style>
nav-pills .nav-link {border-radius: 0;}
=======
<style>
.nav-pills .nav-link {border-radius: 0;}
>>>>>>> refs/remotes/origin/seulgi
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
     	 		<label for="seat"><span>10</span>석</label>
     	 		<br />
     	 		<label for="r" id="r" style="padding-right: 16px;">R석</label>
     	 		<label for="price" style="margin-left: 26px;">80,000원</label>
     	 		<label for="seat"><span>10</span>석</label>
     	 		<br />
     	 		<label for="s" id="s" >S석</label>
     	 		<label for="price" style="margin-left: 44px;">80,000원</label>
     	 		<label for="seat"><span>10</span>석</label>
     	 		<br />
     	 		<label for="e" id="e" style="padding-right: 18px;">일반석</label>
     	 		<label for="price">50,000원</label>
     	 		<label for="seat"><span>10</span>석</label>
     	 		<br />
     	 		
     	 	</div>
     	 	
     	 	<div id="r_seat">
     	 		<h5>선택좌석</h5>
     	 	
     	 	
     	 	</div>
  
<<<<<<< HEAD
     	 	<div class="t_btndiv">
            <input type="button" value="이전단계" class="t_button1"/>
            <input type="button" value="결제하기" class="t_button2"/>
       		</div>
=======
     	 	
     	 	<div class="t_btndiv">
            <input type="button" value="이전단계" class="t_button1"/>
            <input type="button" value="결제하기" class="t_button2"/>
        </div>

     
>>>>>>> refs/remotes/origin/seulgi
     	 	
     	 	
     	</div>
    
    </div>
    
    </body>