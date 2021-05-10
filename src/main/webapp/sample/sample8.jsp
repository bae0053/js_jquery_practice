<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="button" class = "btn" id="btn_minus" value="-"/>
	<input type="text" id="size" value="12"/>
	<input type="button" class = "btn" id="btn_plus" value="+"/>
	<div id="content" style ="font-size:12px;">
		Hello World
	</div>
</body>
</html>

<script src="http://code.jquery.com/jquery-3.6.0.js"></script>

<script>
// 예제) 플러스 마이너스 버튼 클릭시 size안에 text도 변경되고 content의 텍스트가 해당 사지즈로 변경되게 작성
// size안의 내용 변경시 content 사이즈 변경
// isNan() = 숫자일때 false 아니면 true 반환하는 함수를 이용해 숫자만 입력하도록 작성


$('.btn').bind('click', function() {
	var size = $('#size').val();
	
	if ($(this).val() == "+") {
		size+=1;
		
	}
	else if($(this).val() == "-") {
		size-=1;
		
	}
	$('#size').val(size);
	$('#content').css("font-size",size+"px");
});

$('#size').bind('change', function (){
	var size = $('#size').val();
	
	if (!isNaN(size)){
		$('#size').val(parseInt(size));
		$('#content').css("font-size",size+"px");
	}
	else {
		alert("숫자만 입력해주세요!");
		$('#size').val("12");
	}
	
});

</script>