
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>기본 예제</title>
<meta name="class-lists" content="jindo.StarRating"/>
<meta name="screenshots" content=""/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta name="description" content="가장 기본적인 사용 예제입니다.">
<style>
.starrating-background {
    background:transparent url(../resources/images/w_03.gif) repeat-x scroll 0 0;
    cursor:pointer;
    display:inline-block;
    height:19px;
    margin:0;
    width:90px;
    vertical-align:middle;
}

.starrating-background span {
    background:transparent url(../resources/images/w_01.gif) repeat-x scroll 0 0;
    cursor:pointer;
    display:inline-block;
    height:19px !important;
}

/* 대체텍스트 숨기기 */
.starrating-background em {position:absolute; top:0; left:0; width:0; height:0; overflow:hidden; visibility:hidden; font-size:0; line-height:0;}

</style>



<style type="text/css">
	.starrating-background { background:transparent url(../resources/images/w_03.gif) repeat-x scroll 0 0; cursor:pointer; display:inline-block; height:19px; margin:0; width:90px; vertical-align:middle; }
	.starrating-background span { background:transparent url(../resources/images/w_01.gif) repeat-x scroll 0 0; cursor:pointer;	display:inline-block; height:19px !important; }
	.starrating-background em {position:absolute; top:0; left:0; width:0; height:0; overflow:hidden; visibility:hidden; font-size:0; line-height:0;} /* 대체텍스트 숨기기 */

	
/* Common */ 
body,p,h1,h2,h3,h4,h5,h6,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,pre,input,textarea,button,select{margin:0;padding:0}
body,input,textarea,select,button,table{font-family:'돋움',dotum,applegothic,sans-serif;font-size:12px}
img,fieldset{border:0}
ul,ol{list-style:none}
em,address{font-style:normal}
a{text-decoration:none}
a:hover,a:active,a:focus{text-decoration:underline}

div.demo { margin:10px; }

.bg_blue { background-color:#0075c8; }
.bc_darkgray { background-color:#999; }
.bc_gray { background-color:#ccc; }
.bg_lightgray { background-color:#eee; }

</style>
</head>
<body>
	
<div class="demo">
	<div>
		<strong>평점주기 (10점 만점 1점 단위)</strong>
		<br/>별을 클릭하세요
	</div>
	<div class="starrating-background" id="star_rating">
		<span><em>평점 4점</em></span>
	</div>
	<span id="score"></span>
</div>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.js"></script> --%>

<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/resources/js/jindo2.ns.js"></script>
<script type="text/javascript"  charset="utf-8"
	src="${pageContext.request.contextPath }/resources/js//jindo.Component.js"></script>
<script type="text/javascript"  charset="utf-8"
	src="${pageContext.request.contextPath }/resources/js/jindo.UIComponent.js"></script>
<script type="text/javascript"  charset="utf-8"
	src="${pageContext.request.contextPath}/resources/js/jindo.StarRating.js"></script>
<script type="text/javascript">
	var oStarRating = new jindo.StarRating(jindo.$("#star_rating"), {
		nStep : 0.5,
		nMaxValue : 5,
		nDefaultValue : 0,
		bSnap : true
	}).attach({
		set : function(oCustomEvent) {
			jindo.$("score").innerHTML = oCustomEvent.nValue;
		}
	});
</script>
</body>
</html>
