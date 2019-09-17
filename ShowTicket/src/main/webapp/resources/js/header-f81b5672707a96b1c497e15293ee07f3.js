// gnb js -->

// member check js -->

var menuDomain = $("#domainMenu").val();
//var viewTicketlinkId = $("#viewTicketlinkId").val();

var loginMobilePopupObj = null;
var isMobile = false;
if (location.hostname.indexOf('m.ticketlink.co.kr') > -1) {
	isMobile = true;
}

function memberCommonCheck (next, callbackFunc, selfRedirect) {
	var returnURL = '/main/main';
	var logined = false;

	var hostname = '';

	if (location.hostname.indexOf('sports.ticketlink.co.kr') > -1) {
		hostname = menuDomain;
	}
	$.ajax({
		async: false,
		url: hostname + "/auth/check",
		data: {
			'returnURL': returnURL,
			'nextURL': next
		},
		dataType: 'jsonp',
		//	jsonpCallback: "callBack",

		success: function (data) {
			if (isMobile && loginMobilePopupObj != null) {
				try {
					loginMobilePopupObj.close();
				} catch (err) {
					//console.log(err);
				}
			}
			if (data.result == "OK") {
				var strArray = "";
				if ($.trim(next) != "") {
					strArray = next.split("/");
					//상품일 경우 
					if (strArray.length >= 3 && strArray[1] == "product") {
						logined = true;
					} else if (strArray[3] == "event") {
						logined = true;
					} else if (strArray[3] == "coupon") {
						logined = true;
					} else if (strArray[3] == "product") {
						logined = true;
					}
					else {
						logined = true;
						location.href = next;
					}
				}
				logined = true;
				if (typeof(callbackFunc) != "undefined") {
					window[callbackFunc](next);
				}
			} else if (data.result == "NO_LOGIN") {
				if (!(typeof next === "undefined")) {
					next = encodeURIComponent(next);
				}
				loginMobilePopupObj = window.open(hostname + '/auth/login?nextURL=' + next + (selfRedirect ? '&selfRedirect=Y' : ''), 'login', 'width=420, height=550');
			} else if (data.result == "NO_PROVISION") {
				alert("제3자 약관 동의 필요합니다.");
				loginMobilePopupObj = window.open(hostname + '/auth/provision', 'login', 'width=420, height=547');
			} else if (data.result == "NO_CERTIFY") {
				alert("티켓링크의 일부 서비스가 전자상거래 법으로 인해, 본인인증을 필요로 합니다.");
				loginMobilePopupObj = window.open(hostname + "/auth/identification?nextURL=" + next, 'login', 'width=420, height=547');
			} else if (data.result == "STOP") {
				loginMobilePopupObj = window.open(hostname + '/login/unserviceability.nhn?memberNo=', 'login', 'width=420, height=547');
			} else if (data.result == "SLEEP") {
				alert("휴면 회원입니다");
				loginMobilePopupObj = window.open(hostname + '/auth/sleep', 'login', 'width=420, height=547');
			}
		},
		error: function (xhr) {
			alert('실패 - ', xhr);
		}
	});
	return logined;
}

//function callBack(a){
//	//var logined = false;
//	var nextURL = document.URL;
//	var memberfilter = new Array();
//	memberfilter[0] = "result";
//	var obj = a;
//	var obj2 = a;
//	if ( navigator.userAgent.toLowerCase().indexOf('msie 8') == -1 ) {
//		var jsonText =JSON.stringify(a, "result");
//		var jsonTextNextURL =JSON.stringify(a, "nextURL");
//		obj = JSON.parse(jsonText);
//		obj2 = JSON.parse(jsonTextNextURL);
//	}
//	//alert(obj2.nextURL);
//	var next = obj2.nextURL;
//	
//	if(obj.result =="NO_LOGIN"){
//		alert("로그인이 필요합니다.");
//		window.open(menuDomain + '/oauth/login.nhn?nextURL='+nextURL, 'login', '630, 547');
//	}else if(obj.result =="NO_PROVISION"){
//		alert("제3자 약관 동의 필요합니다.");
//		window.open(menuDomain + '/memberJoin/provision.nhn', 'login', '630, 547');
//	}else if(obj.result =="NO_CERTIFY"){
//		alert("티켓링크의 일부 서비스가 전자상거래 법으로 인해, 본인인증을 필요로 합니다.");
//		window.open(menuDomain + "/memberJoin/userCertify.nhn?returnURL="+nextURL, 'login', '630, 547');
//	}else if(obj.result =="OK"){
//		//alert(next); 
//		if(next != null){
//			document.location.href = next;
//		} else {
//			logined = true;
//		}
//	}else if(obj.result =="NO_PAYCO"){
//		alert("회원전환이 필요합니다.");
//		openWin(menuDomain + '/memberTrans/paycoChange.nhn', 'login', '630, 547', 'scrollbars=yes');
//	}
//	//return logined;
//}

// Menu js -->
function menuAct (menuNum) {
	if (menuNum > 0) {
		$("#menu" + menuNum).addClass("over");
		$("#submenu" + menuNum).css("display", "block");
	} else {
		$("#menu" + Math.abs(menuNum)).removeClass("over");
		$("#submenu" + Math.abs(menuNum)).css("display", "none");
	}
}

function subMenuAct (menuNum, subNum) {
	$("[id^=smenu" + menuNum + "]").attr("class", "");
	if (subNum > 0) {
		$("#smenu" + menuNum + subNum).attr("class", "s_over");
	}
}

$(function () {
	var currentUrl = document.location.href;
	if (currentUrl.indexOf('sports.') > -1) {
		if (currentUrl.indexOf('/baseball') > -1) {
			$("#smenu21").attr("class", "s_over");
			$("#smenu21").attr('id', 'nosmenu21');
		} else if (currentUrl.indexOf('/football') > -1) {
			$("#smenu22").attr("class", "s_over");
			$("#smenu22").attr('id', 'nosmenu22');
		} else if (currentUrl.indexOf('/basketball') > -1) {
			$("#smenu23").attr("class", "s_over");
			$("#smenu23").attr('id', 'nosmenu23');
		} else if (currentUrl.indexOf('/volleyball') > -1) {
			$("#smenu24").attr("class", "s_over");
			$("#smenu24").attr('id', 'nosmenu24');
		} else if (currentUrl.indexOf('/esports') > -1) {
			$("#smenu25").attr("class", "s_over");
			$("#smenu25").attr('id', 'nosmenu25');
		} else if (currentUrl.indexOf('/hsbaseball') > -1) {
			$("#smenu26").attr("class", "s_over");
			$("#smenu26").attr('id', 'nosmenu26');
		} else if (currentUrl.indexOf('/tennis') > -1) {
			$("#smenu27").attr("class", "s_over");
			$("#smenu27").attr('id', 'nosmenu27');
		} else if (currentUrl.indexOf('/other') > -1) {
			$("#smenu68").attr("class", "s_over");
			$("#smenu68").attr('id', 'nosmenu68');
		} else {
			$("#smenu299").attr("class", "s_over");
			$("#smenu299").attr('id', 'nosmenu299');
		}
	}

	var menuList = $("[id^=menu]");
	menuList.each(function () {
		var hasClassOn = $(this).attr("class").indexOf(" on") === -1;
		var menuNum = parseInt(this.id.substring(4));

		if (hasClassOn && menuNum >= 2 && menuNum <= 4) {
			$(this).mouseover(function () {
				menuAct(menuNum);
			});
			$(this).mouseout(function () {
				menuAct(menuNum * -1);
			});
		}
	});

	var smenuList = $("[id^=smenu]");
	smenuList.each(function () {
		var id = $(this).attr("id");
		var menuNum = id.substring(5, 6);
		var subNum = id.substring(6);
		$(this).mouseover(function () {
			subMenuAct(menuNum, subNum);
		});
		$(this).mouseout(function () {
			subMenuAct(menuNum, subNum * -1);
		});
	});
});

// dmc check
if ($("#Float4703").length == 0) {
	setTimeout(function () {
			$(".promo_ban.v2").css("display", "none");
		}, 1000
	);
}
// Notice js -->

var timerNotice = null;
var noticeNo = 0;
var noticeCnt = $("#noticeCnt").val() - 1;

function rollingNotice () {
	changeNotice();
	setTimeNotice();
}

function changeNotice () {
	noticeNo++;
	if (noticeNo > noticeCnt) {
		noticeNo = 0;
	}
	$("[id^=headerNotice]").css("display", "none");
	$("#headerNotice" + noticeNo).css("display", "");
}

function setTimeNotice () {
	timerNotice = setTimeout(function () {
			rollingNotice();
		}, 3000
	);
}

setTimeNotice();

function closeTopBanner () {
	$("#top_banner").css("display", "none");
}

$(document).ready(function () {
	$("#loginBtn").click(function () { // 로그인
		var nextURL = document.URL;
		memberCommonCheck(nextURL);
	});
	$("#logoutBtn").click(function () {
		logout();
	});
	$("#joinBtn").click(function () { // 회원가입
		var nextURL = document.URL;
		memberJoin(nextURL);
	});
	$("#reserve").click(function () { // 예매확인/취소
		memberCommonCheck(menuDomain + '/my/reserve/list');
	});
	$("#reserveLogin").click(function () { // 예매확인/취소
		memberCommonCheck(menuDomain + '/my/reserve/list');
	});
	$("#reserveLoginId").click(function () { // 예매확인/취소
		memberCommonCheck(menuDomain + '/my/memberInfo/info');
	});
	$("#help_lmeu4").click(function () { // 1:1상담
		memberCommonCheck(menuDomain + '/help/consult');
	});
	$("#hlink2").click(function () { // 1:1상담
		memberCommonCheck(menuDomain + '/help/consult/insert');
	});
	$("#mypurple").click(function () { // purple
		memberCommonCheck(menuDomain + '/purple/mypurple');
	});

	var cookieId = getCookie('VIEW_TKLINK_ID');
	var cookieIsPaycoVip = getCookie('TKLINK_PAYCO_VIP_FLAG');
	cookieId = cookieId.replace(/"/gi, '');

	if (cookieId != null && cookieId != '') {
		$('#login').attr('style', 'display:none');
		$('#logout').attr('style', '');
		if (cookieIsPaycoVip === 'true') {
			$('#paycoVipIcon').show();
		}
		if (isMobile) {
			$('#mobileUserId').html(cookieId + '님');
		}
	} else {
		$('#login').attr('style', '');
		$('#logout').attr('style', 'display:none');
	}

	onCloseIfOutOfSelectHeader();

});

// 쿠키 가져오기
function getCookie (cName) {
	cName = cName + '=';
	var cookieData = document.cookie;
	var start = cookieData.indexOf(cName);
	var cValue = '';
	if (start != -1) {
		start += cName.length;
		var end = cookieData.indexOf(';', start);
		if (end == -1)
			end = cookieData.length;
		cValue = cookieData.substring(start, end);
	}
	var ret = unescape(cValue);

	return ret;
}

function onCloseIfOutOfSelectHeader () {
	$(document).on("click", function (e) {
		if ($(e.target).parents("span[name='localeHeader']").size() == 0) {
			$("a[name='localeHeaderButton']").removeClass("open");
			$("ul[name='localeHeaderList']").css("display", "none");
		}
	});
}

function openLanguageList () {
	$("a[name='localeHeaderButton']").addClass("open");
	$("ul[name='localeHeaderList']").css("display", "block");
}
