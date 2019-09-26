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
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
	<div id="msgInput">
		<div class="input-group mb-3">
  		<input type="text" class="form-control" placeholder="Recipient's username" aria-describedby="button-addon2">
  		<div class="input-group-append">
    	<button class="btn btn-outline-secondary" type="button" id="button-addon2">Enter</button>
  		</div>
		</div>
	
	</div>
</body>
</html>