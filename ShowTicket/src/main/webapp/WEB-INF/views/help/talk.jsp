<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${param.pageTitle}</title>
<!-- WebSocket:sock.js CDN -->	
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.3.0/sockjs.js"></script>	

<!-- WebSocket: stomp.js CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.js"></script>
<!-- bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
	
<style>
#msgInput{
  position:fixed; 
  left:0px; 
  bottom:0px; 
  height:60px; 
  width:100%; 
  color: white; 
}

</style>
</head>

<body>
	<div>
    	<ul class="list-group list-group-flush" id="data"></ul>
	</div>
	<div id="msgInput">
		<div class="input-group mb-3">
			<input type="text" id="message" class="form-control" placeholder="Message">
			<div class="input-group-append">
			    <button id="sendBtn" class="btn btn-outline-secondary" type="button">Send</button>
			</div>
			</div>
	</div>
	
<script type="text/javascript">
$(document).ready(function(){
	$("#sendBtn").click(function(){
		sendMessage();
	});
	$("#message").keydown(function(key){
		if(key.keyCode == 13){
			sendMessage();
		}
	})
	
	//window focus이벤트핸들러 등록
	$(window).on("focus", function(){
		//console.log("focus");
		lastCheck();
	})
	
	
}); 
	

//웹소켓 선언
//1. 최초 웹소켓 생성 url /stomp
let socket = new SockJS('<c:url value="/stomp" />');
let stompClient = Stomp.over(socket);

//connection 형성되면 콜백함수 호출
stompClient.connect({},function(frame){
	console.log("connected stomp over sockjs");
	console.log(frame);
	
	//사용자확인
	lastCheck();
	
	//stomp : 구독 개념으로 세션 관리. 핸들러 메소드의 @SendTo어노테이션과 상응
	
	stompClient.subscribe('/chat/${chatId}', function(message) {
		console.log("receive from /subscribe/stomp/abcde :", message);
		let messsageBody = JSON.parse(message.body);
		$("#data").append("<li class=\"list-group-item\">"+messsageBody.memberId+" : "+messsageBody.msg+ "</li>");
	});
	
});

function sendMessage(){
	
	let data = {
			chatId : "${chatId}",
			memeberId : "${memberId}",
			msg : $("#message").val(),
			time : new Date().getTime(),
			type : "MESSAGE"
	}
	console.log("${memberId}");
	
	//테스트용 /hello
	//stompClient.send("<c:url value='/hello' />", {}, JSON.stringify(data));
	
	//채팅메세지: 1:1채팅을 위해 고유한 chatId를 서버측에서 발급해 관리한다.
	stompClient.send('<c:url value="/chat/${chatId}" />', {}, JSON.stringify(data));
	
	$("#message").val('');
}

/*
 * 윈도우가 활성화 되었을때, chatroom테이블의 lastcheck(number)컬럼을 갱신한다.
 * 안읽은 메세지 읽음 처리
 */ 
function lastCheck(){
	let data = {
			chatId : "${chatId}",
			memberId : "${memberId}",
			time : new Date().getTime()
	}
	
	stompClient.send('<c:url value="/lastCheck" />', {}, JSON.stringify(data));
}

</script>	


</body>
</html>