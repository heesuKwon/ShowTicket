function setTimeTodayBanner() {
    if($("#today_coupon > .maintop_cont").length < 1){
        return;
    }

    setInterval(function() {
        rollTodayBanner();
    }, 5000);
}

function rollTodayBanner() {
    if($("#today_coupon").hasClass("on")){
        clickRightButton();
    }else{
        clickLeftButton();
    }
}

function clickRightButton(){
    $("#today_coupon").removeClass("on");
    $("#today_recom").addClass("on");
    $("#next_btn").addClass("off");
    $("#prev_btn").removeClass("off");
}

function clickLeftButton(){
    $("#today_recom").removeClass("on");
    $("#today_coupon").addClass("on");
    $("#prev_btn").addClass("off");
    $("#next_btn").removeClass("off");
}

setTimeTodayBanner();
