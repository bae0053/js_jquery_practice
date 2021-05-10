<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날자, interval</title>
</head>
<body>
	<div id="interval"></div>
	<div id = "clock"></div>
</body>
</html>

<script src="http://code.jquery.com/jquery-3.6.0.js"></script>

<script type="text/javascript">
$(document).ready(function (){
	//fn_interval();
	fn_clock();
});

var cnt = 0;
function fn_interval() {
	var interval = setInterval(function() {
		cnt++;
		if (cnt > 10) {
			clearInterval(interval);
		}
		$('#interval').append("안녕");	
	}, 1000)
}


function fn_clock() {
	var interval = setInterval(function() {
		fn_getdt();
	})
}

function fn_getdt() {
	var dt = new Date();
	var hour = dt.getHours();
	var min =  dt.getMinutes();
	var sec = dt.getSeconds();
	
	if (hour < 10) {hour = "0"+hour}
	if (min < 10) {min = "0"+min}
	if (sec < 10) {sec = "0"+sec}
	
	
	$('#clock').html(hour + ":" + min +":" + sec);
}
</script>