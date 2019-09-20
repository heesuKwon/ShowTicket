<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
#footer img{
	position: absolute;
	left: 20%;
    width: 200px;
}
</style>
<div id="footer">
    <img src="${pageContext.request.contextPath}/resources/images/showticket_logo_gray.png" alt="로고">
    <div class="inner">
        <div class="f_menu">
            <a href="javascript:;"
               onclick="window.open('http://www.ticketlink.co.kr/introduction/company','회사소개','width=1400, height=1000, scrollbars=yes')">회사소개</a><span>|</span>
            <a href="http://www.ticketlink.co.kr/terms/personalInformation" class="personal">개인정보 처리방침</a><span>|</span>
            <a href="http://www.ticketlink.co.kr/terms/use">이용약관</a><span>|</span>
            <a href="http://www.ticketlink.co.kr/help/main">고객센터</a><span>|</span>
            <a href="http://www.ticketlink.co.kr/help/partner">티켓판매안내</a><span>|</span>
            <a href="http://www.ticketlink.co.kr/advertisement">광고안내</a>
        </div>
        <address>주소 : <em class="lspacing0">13487</em> 경기도 성남시 분당구 대왕판교로645번길 16 NHN 플레이뮤지엄<span>|</span> 대표이사 : 고영준 <span>|</span> 사업자등록번호 :
            <em class="lspacing0">144-81-25090</em></address>
        <p class="co_info">
            <em class="lspacing0">1588-7890</em> <span>|</span> <a href="mailto:membership@ticketlink"
                                                                   class="lspacing0">membership@ticketlink.co.kr</a> <span>|</span> 통신판매업 신고번호 : 제 <em
                class="lspacing0">2015</em>-경기성남-<em class="lspacing0">0661</em>호 <a
                href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1448125090" target="_blank"
                class="co_check">사업자정보확인</a><span>|</span> 개인정보보호 책임자 : 최지혜
        </p>
        <p class="copy">Copyright &copy; NHN Ticketlink Corporation. All rights reserved.</p>
    </div>
</div>
</body>
</html>