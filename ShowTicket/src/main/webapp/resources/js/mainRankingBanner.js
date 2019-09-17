function selectRanking(category) {
    $(".rankingTab").removeClass("on");
    if (category == "concert") {
        $("#concertTab").addClass("on");
        $("#concertRankingListUl").css("display","block");
        $("#exhibitionRankingListUl").css("display","none");
        $($("#concertRankingListUl").find("li").closest(".rankingItem")[0]).mouseover().mouseout();
    } else {
        $("#exhibitionTab").addClass("on");
        $("#concertRankingListUl").css("display","none");
        $("#exhibitionRankingListUl").css("display","block");
        $($("#exhibitionRankingListUl").find("li").closest(".rankingItem")[0]).mouseover().mouseout();
    }
}

function setTimeRankingBanner() {
    timerRankingBanner = setInterval(function() {
        rollRankingBanner();
    }, 5000);
}

function rollRankingBanner() {
    var nextObj = $(".rankingItem.on").next(".rankingItem");
    if (nextObj.length ==0 || nextObj == "" || nextObj == null) {
        if ($(".rankingTab.on").text() == 	"공연") {
            selectRanking("exhibition");
        } else {
            selectRanking("concert");
        }
    } else {
        nextObj.mouseover().mouseout();
    }
}

$(".rankingItem").hover(function() {
    clearInterval(timerRankingBanner);
    $(".rankingItem").removeClass( "on" );
    $(this).addClass("on");
    $(".rangkingImg").attr("src",$(this).data("url"));
    $(".rangkingImgLink").attr("href","/product/"+$(this).data("productid"));
}, function() {
    setTimeRankingBanner();
});

setTimeRankingBanner();