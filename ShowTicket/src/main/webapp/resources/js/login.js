var openWin = function(sURL, sWindowName, w, h, sScroll, reSize, status) {
        // 화면 중앙으로 Popup 띄우기. 스크롤바는 옵션.
        // ex)
        //      openWin("test.asp", "winTest", 400, 300);           ☞ 스크롤바 없음
        //      openWin("test.asp", "winTest", 400, 300, "yes");    ☞ 스크롤바 있음
        //      openWin("test.asp", "winTest", 400, 300, "auto");   ☞ 스크롤바 자동
 
            //var _sWindowName = typeof(sWindowName) != "undefined" ? sWindowName : "";
 
            var x = (screen.width - w) / 2;
            var y = (screen.height - h) / 2;
 
            if (sScroll==null) sScroll = "no";
        if (screen.width == 800 && screen.height== 600 ) sScroll = "yes"; // 해상도 800*600일 때 스크롤 생기도록 함
 
            var sOption = "";
            sOption = sOption + "toolbar=no, channelmode=no, location=no, directories=no, menubar=no";
            sOption = sOption + ", scrollbars=" + sScroll + ", resizable=" + reSize + ", status=" + status +", left=" + x + ", top=" + y + ", width=" + w + ", height=" + h;
 
            var win = window.open(sURL, sWindowName, sOption);
 
            try {
                win.focus();
            } catch(e) {}
 
            return win;
        };

//    function login(nextURL) {
//   		openWin($("#domainMenu").val()+"/oauth/login.nhn?nextURL="+nextURL, "loginPopup", 630, 547, 'scrollbars=yes');
//    		
//    }
    
    function logout() {
    	location.href =$("#domainMenu").val()+"/auth/logout.nhn";
    }
    
    function memberJoin(nextURL) {
        openWin($("#domainMenu").val()+"/auth/join.nhn?nextURL="+nextURL, "memberJoinPopup", 630, 547, 'yes');
    }
    
    function findPaycoId(nextURL) {
        openWin($("#domainMenu").val()+"/oauth/findPaycoId.nhn?nextURL="+nextURL, "findPaycoId", 630, 547, 'yes');
    }
    
    function findPaycoPwd(nextURL) {
        openWin($("#domainMenu").val()+"/oauth/findPaycoPwd.nhn?nextURL="+nextURL, "findPaycoPwd", 630, 547, 'yes');
    }

