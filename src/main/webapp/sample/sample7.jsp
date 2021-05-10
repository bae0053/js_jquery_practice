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
	<input type="button" class="btn" value="yellow" w="200px" h="300px"/>
	<input type="button" class="btn" value="red" w="150px" h="200px"/>
	<input type="button" class="btn" value="blue" w="500px" h="1000px"/>
	
	<div>
		<select id="select" name="select">
			<option value="">====사이트를 선택하세요====</option>
			<option value="http://naver.com">네이버</option>
			<option value="http://google.com">구글</option>
			<option value="http://daum.net">다음</option>
		</select>
	</div>
	
</body>
</html>

<script src="http://code.jquery.com/jquery-3.6.0.js"></script>


<script>
/*
 click
 change
 hover
 mousedown
 mouseup
 mouseenter
 mouseleave
 mousemove
 scroll
 keypress
 keydown
 keyup
 */
$('.btn').bind('click', function() {
	$('#content').css('background', $(this).val());
	$('#content').css('width', $(this).attr('w'));
	$('#content').css('height',$(this).attr('h'));
});

$('#select').bind('change', function() {
	location.href = $(this).val();
});

</script>