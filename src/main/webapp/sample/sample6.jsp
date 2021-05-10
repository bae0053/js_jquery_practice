<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style ="width:100px; height:100px; background:#000;" id = "content">
		
	</div>
	<input type="button" class="btn" value="yellow" w="200px" h="300px" onclick="fn_change($(this));"/>
	<input type="button" class="btn" value="red" w="150px" h="200px" onclick="fn_change($(this));"/>
	<input type="button" class="btn" value="blue" w="500px" h="1000px" onclick="fn_change($(this));"/>
</body>
</html>

<script src="http://code.jquery.com/jquery-3.6.0.js"></script>

<script>
/*
 * 3가지 버튼 클릭시 content를 해당 색상으로 변경하고 사이즈를 w,h에 설정된 값으로 변경하세요
 */

 function fn_change(cbtn) {
	console.log($(event.target).val());
	$('#content').css('background', cbtn.val());
	$('#content').css('width', cbtn.attr('w'));
	$('#content').css('height', cbtn.attr('h'));
	
}
</script>
