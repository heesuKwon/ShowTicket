function setTodayViewProduct(){
    var productList = decodeURIComponent(readCookie("TODAY_VIEW_PRODUCT")).split(",");
    if (productList.length > 0) {
        drawTodayViewProductBanner(productList.length-1);
    }
}

function drawTodayViewProductBanner(index) {
    var todayViewProductBannerList = decodeURIComponent(readCookie("TODAY_VIEW_PRODUCT")).split(",")
    var todayViewProductBanner = todayViewProductBannerList[index];
    if (todayViewProductBanner == "null" || todayViewProductBanner == null || todayViewProductBanner == "undefined") {
        $("#today_view").css("display","none");
    } else {
        if (todayViewProductBannerList.length == 1) {
            $(".today_button").css("margin-bottom","13px");
            $("#buttons").css("display", "none");
        } else {
            $(".today_button").css("margin-bottom","0px");
            $("#buttons").css("display", "block");
        }
        var productId = todayViewProductBanner.split("AND")[0];
        var imageUrl = todayViewProductBanner.split("AND")[1];
        var li = '<li id="todayViewProduct_'+index+'"><a href="/product/'+productId+'"><img src="'+imageUrl+'" width="72" height="88" alt=""></a></li>';
        $("#today_cont").html(li);
        $("#today_view").css("display","block");
    }
}

function todayViewProductBannerPrev() {
    var prevIndex = Number($("li[id*=todayViewProduct_]").prop("id").split("todayViewProduct_")[1]) - 1;
    if ( prevIndex < 0 ) {
        prevIndex = (decodeURIComponent(readCookie("TODAY_VIEW_PRODUCT")).split(",").length - 1)
    }
    drawTodayViewProductBanner(prevIndex);
}

function todayViewProductBannerNext() {
    var nextIndex = Number($("li[id*=todayViewProduct_]").prop("id").split("todayViewProduct_")[1]) + 1;
    nextIndex = nextIndex > (decodeURIComponent(readCookie("TODAY_VIEW_PRODUCT")).split(",").length - 1) ? 0 : nextIndex;
    drawTodayViewProductBanner(nextIndex);
}

function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
}
