<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>animate</title>
</head>
<body>
	<div>
		<input type="text" id = "pgaeX" value="" placeholder = "x좌표"/>
		<input type="text" id = "pgaeY" value="" placeholder = "Y좌표"/>
	</div>
	
	<div style="width:1000px; height : 800px; border:1px solid #ccc;" id="contentsArea">
		<div id="box" style = "width:100px; height :100px; background:#ccc;"></div>
	</div>
</body>
</html>


<script src="http://code.jquery.com/jquery-3.6.0.js"></script>


<script>
$('#contentsArea').bind('click', function(event){
	console.log(event);
	
	$('#pageX').val(event.pageX);
	$('#pagey').val(event.pageY);
});

var x = 0;
var y = 0;
/* 예제) 마우스 커서를 찍으면 해당 좌표로 박스가 이동하도록 작성 */
$('#contentsArea').bind('click', function(event){
	x = event.offsetX;
	y = event.offsetY;
	
	$('#box').animate({left:x+"px", top:y+"px"}, 1000,"linear", function() {
		
	});
});
 
 
</script>


