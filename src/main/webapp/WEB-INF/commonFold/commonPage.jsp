<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/medCommon.css"/>
<script type="text/javascript">
var timerAdmin = setTimeout('test()',1740000);
$(document).click(function(){
	clearTimeout(timerAdmin);
	timerAdmin = setTimeout('test()',1740000);
});

function test() {
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();
	var popupLft = ($(window).width() / 2)
			- ($(".detail-box.inner").width() / 2);
	// Set height and width to mask to fill up the
	// whole screen

	$('#popup-mask').css({
		'width' : maskWidth,
		'height' : maskHeight
	}).show().fadeTo("slow", 0.8);
	$(".detail-box133").css({
		"visibility" : "visible",
		"left" : popupLft
	});
}
</script>
<title>Insert title here</title>
</head>
<body>
<div id="popup-mask" style="width: 1350px;
    height: 690px;
    display: none;
    opacity: 0.8;"></div>
    
    <div class="detail-box inner detail-box133" id="detailsBox"
	style="width: 554px; visibility: none; left: 368.5px;">
	<div class="detailbox-model-name">
		<span class="title top">Alert !</span>
	</div>
	<div class="detail-content">
		<div class="address-box">
			<p class="time">
				<span id="error_variant_msg">Your session expiring in 30
					seconds please refresh page to avoid session expiry.</span>
			</p>
			<br />
			<div style="float: right;">
				<span class="btnWrap" onclick="javascript:window.location.reload()"><span
					class="btnbgRight"><span
						style="color: rgb(255, 255, 255); line-height: 24px;"
						class="btnTxt">Refresh</span></span></span>
			</div>
		</div>
		<br>
	</div>
	<span style="display: block; clear: both"></span>
	<!-- <p class="resp-text">Your contact details have been emailed to the dealer.</p> -->
</div>


</body>
</html>