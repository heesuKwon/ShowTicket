var optionStr = '?quality=720p&title=false&portrait=false&byline=false';

var iframe = $('#player');
iframe.attr('src', $("#spot_shortLink_0").val() + optionStr);
var player = new Vimeo.Player(iframe);

$("#spot_next").on("click", function () {
	var nextIndex = (Number($("#PlayerContainer").attr("class").split("movie ")[1]) + 1) % $("#spot_length").val();
	drawTicketSpotVideo(nextIndex);
});

$("#spot_prev").on("click", function () {
	var prevIndex = (Number($("#PlayerContainer").attr("class").split("movie ")[1]) - 1);
	if (prevIndex == -1) {
		prevIndex = ($("#spot_length").val() - 1);
	}
	drawTicketSpotVideo(prevIndex);
});

function drawTicketSpotVideo (index) {
	$("#PlayerContainer").removeClass($("#PlayerContainer").attr("class").split("movie ")[1]);
	$("#PlayerContainer").addClass(String(index));
	player.loadVideo($("#spot_shortLink_" + index).val().split('/').pop())
		.then(function () {
			// success callback
		}, function (e) {
			console.log('[Video load error] ', e);
		});


	$(".go_reserve").text($("#spot_product_name_" + index).val());
	$(".go_reserve").attr("href", $("#spot_bannerUrl_" + index).val());

}