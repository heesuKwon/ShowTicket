<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8" />
<jsp:include page="/WEB-INF/views/common/header.jsp" >
	<jsp:param value="" name="pageTitle" />
</jsp:include>
<style>
#announce tr, th{
	text-align: center;
}
	
</style>
  <section id="board-container" class="container">
	<h2 class="title" style="display:inline">이벤트 당첨자 발표</h2>
	<button style="float:right; margin:10px; width:50px; height:30px;">작성</button>
	<table id="announce" class="table table-hover" style="clear:both">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
			<tr>
				<td>3</th>
				<td>[기대평 ] 맘마미아 당첨자 발표</th>
				<td>2019.02.22</th>
				<td>1</th>
			</tr>
			<tr>
				<td>2</th>
				<td>[관람후기 ] (2019 대구 대백프라자) 전래 인형극 “용궁이야기” 당첨자 발표</th>
				<td>2019.02.27</th>
				<td>20</th>
			</tr>
			<tr>
				<td>1</th>
				<td>[기대평] 가장무도 당첨자 발표</th>
				<td>2019.03.04</th>
				<td>10</th>
			</tr>
	</table>
</section> 
<jsp:include page="/WEB-INF/views/common/footer.jsp" ></jsp:include>