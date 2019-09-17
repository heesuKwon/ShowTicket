timerBigBanner = null;
bigBannerCnt = $("#bigBannerCnt").val() - 1;
bigBannerNo = /vip/i.test(window.location.pathname) ? Math.floor(Math.random() * bigBannerCnt) : 0;
bigBannerTime = /concert/i.test(window.location.pathname) || /exhibition/i.test(window.location.pathname) ? 3000 : 6000;

function rollingAuto (type) {
	clearTimeout(timerBigBanner);
	changeBigBanner(type);
	setTimeBigBanner();
}

function selectBanner (index) {
	bigBannerNo = index;
	rollingAuto(index);
}


function changeBigBanner (type) {
	if (type === "next") {
		bigBannerNo++;
		if (bigBannerNo > bigBannerCnt) {
			bigBannerNo = 0;
		}
	} else if (type === "prev") {
		bigBannerNo--;
		if (bigBannerNo < 0) {
			bigBannerNo = bigBannerCnt;
		}
	}
	$("[id^=bigBanImage_]").css('display', 'none');
	$("#bigBanImage_" + bigBannerNo).css('display', 'block');
	$("[id^=bigBanPage_]").removeClass("on");
	$("#bigBanPage_" + bigBannerNo).addClass("on");
	$("[id^=dummy_bg_]").removeClass("on");
	$("#dummy_bg_" + bigBannerNo).addClass("on");

	if (window.location.href.indexOf('vip/main') > -1) {
		$("span.now")[0].innerText = bigBannerNo + 1;
		var otherType = type === "next" ? "prev" : "next";
		$(".btn_" + type).addClass("on");
		$(".btn_" + otherType).removeClass("on");
		$("[id^=lst_discount]").addClass("blind");
		$("#lst_discount" + bigBannerNo).removeClass("blind");
	}
}

function initBigBanner () {
	if (window.location.href.indexOf('vip/main') > -1) {
		$("span.now")[0].innerText = bigBannerNo + 1;
		$("[id^=lst_discount]").addClass("blind");
		$("#lst_discount" + bigBannerNo).removeClass("blind");
	}

	$("#bigBanImage_" + bigBannerNo).css('display', 'block');
	$("#bigBanPage_" + bigBannerNo).addClass("on");
	$("#dummy_bg_" + bigBannerNo).addClass("on");
}

function setTimeBigBanner () {
	timerBigBanner = setTimeout(function () {
			rollingAuto('next');
		}, bigBannerTime
	);
}

initBigBanner();
setTimeBigBanner();
