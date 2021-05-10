<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width:1000px;height: 500px; border: 1px solid #ccc;" id = "contentsArea">
	<div id = "div1" style="width: 100px; height: 100px; background: red; position: absolute; left:50px;top:50px;"></div>
</div>
<input type = "button" id = "btn1" value="시작"/>
<textarea id="xy" style="width:1000px;height: 300px"></textarea>
</body>
</html>

<script src="http://code.jquery.com/jquery-3.6.0.js"></script>

<script type="text/javascript">

/* contentsArea에 마우스를 찍으면 좌표가 입력되고 시작버튼을 누르면 좌표를 누른 위치로 순차적으로 이동 후 역순으로 제자리로 이동하는 코드 작성*/

var x_arr = new Array();
var y_arr = new Array();


$('#contentsArea').bind('click', function(event){
	x_arr.push(event.pageX);
	y_arr.push(event.pageY);
	
	$('#xy').append("(" + event.pageX + "," + event.pageY + ")");
	
});

$('#btn1').bind('click', function() {
	
	var length = x_arr.length;

	for (var i = 0; i < length; i++) {
		$('#div1').animate({left:x_arr[i], top:y_arr[i]}, 1000, "linear");
	}
	x_arr.unshift($('#div1').css('left'));
	y_arr.unshift($('#div1').css('top'));

	for (var i = length; i > -1 ; i--) {
		$('#div1').animate({left:x_arr[i-1], top:y_arr[i-1]}, 1000, "linear");
	}
	
	x_arr=[];
	y_arr=[];
	$('#xy').empty();

});

</script>