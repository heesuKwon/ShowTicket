<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/member.css">
	

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle" />
</jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(()=>{


$("#memberDelete").click(function() {
	var bool = confirm("정말로 탈퇴하시겠습니까?");
	if (bool) {
		var id = $("#memberId").val();
		location.href = "${pageContext.request.contextPath}/member/memberDelete.do?memberId="+id;
	}
});
});
</script>


<div id="container">
	<jsp:include page="/WEB-INF/views/common/memberViewnav.jsp">
		<jsp:param value="마이 페이지" name="pageTitle" />
	</jsp:include>

	<br>

	<form id="memberFrm"action="memberUpdate.do" method="post" onsubmit="return validate();">
		<h3>회원정보 수정</h3>
		<br />
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" class="form-control" id="memberId" value="delete" required disabled></td>
			</tr>


				<tr>
					<th>비밀번호</th>
					<td>
						<button type="button" class="btn btn-secondary"
							onclick="location.href='${pageContext.request.contextPath}/member/passwordUpdate.do'">
							비밀번호변경</button>
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" class="form-control" name="memberName"
						id="memberName" required></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="tel" class="form-control"
						placeholder="(-없이)01012345678" name="phone" id="phone"
						maxlength="11" required></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" class="form-control"
						placeholder="abc@naver.com" name="email" id="email"> <input
						type="checkbox" /><label id="check">정보수신동의</label></td>
				</tr>


<<<<<<< HEAD
				<!-- 		<tr>
					<th>회원등급 </th>
					<td>
						<div class="form-check form-check-inline">
							<input type="checkbox" class="form-check-input" name="grade" id="admin" value="관리자"><label class="form-check-label" for="admin">운동</label>&nbsp;
							<input type="checkbox" class="form-check-input" name="grade" id="general" value="일반"><label class="form-check-label" for="general">등산</label>&nbsp;
							<input type="checkbox" class="form-check-input" name="grade" id="supporter" value="서포터"><label class="form-check-label" for="supporter">등산</label>&nbsp;
						 </div>
					</td>
				</tr> -->
			</table>
			<br /> <br />
			<button class="btn btn-outline-success my-2 my-sm-0" type="button"
				onclick="location.href='${pageContext.request.contextPath}/member/memberUpdateEnd.do'">회원정보
				수정</button>
		</form>
	</div>
=======
			<!-- 		<tr>
				<th>회원등급 </th>
				<td>
					<div class="form-check form-check-inline">
						<input type="checkbox" class="form-check-input" name="grade" id="admin" value="관리자"><label class="form-check-label" for="admin">운동</label>&nbsp;
						<input type="checkbox" class="form-check-input" name="grade" id="general" value="일반"><label class="form-check-label" for="general">등산</label>&nbsp;
						<input type="checkbox" class="form-check-input" name="grade" id="supporter" value="서포터"><label class="form-check-label" for="supporter">등산</label>&nbsp;
					 </div>
				</td>
			</tr> -->
		</table>
		<br /> <br />
		<button class="btn btn-outline-success my-2 my-sm-0" type="button"
			onclick="location.href='${pageContext.request.contextPath}/member/memberUpdateEnd.do'">회원정보
			수정</button>
		<button class="btn btn-outline-success my-2 my-sm-0" type="button" id="memberDelete"
			    <%-- onclick="location.href='${pageContext.request.contextPath}/member/memberDelete.do?memberId=delete'" --%>>회원정보
			탈퇴</button>
	</form>
		<%-- <button class="btn btn-outline-success my-2 my-sm-0" type="button" id="memberDelete"
			    onclick="location.href='${pageContext.request.contextPath}/member/memberDelete.do?memberId=delete'">회원정보
			비밀번호찾기팝업</button> --%>
			
>>>>>>> branch 'master' of https://github.com/heesuKwon/ShowTicket.git
</div>
<%-- <script>
$(()=>{
	//테이블의 열을 클릭시 해당 게시물로 이동
	$("td").click((e)=>{		
		var dmNo = $(e.target).parents("tr").children("td").children("input[name=dmNo]").val();
		console.log("넘버"+dmNo);
		var url = "<%=request.getContextPath()%>/board/dm/DMSendView?dmNo="+dmNo;
	    var title = "DMWrite";
	    var status =  "left=500px, top=200px, width=473px, height=442px";
		var popup = window.open(url,title,status);
	
	});
});

</script> --%>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
