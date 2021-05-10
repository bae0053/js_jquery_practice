<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<input type="text" class = "test" id="text" placeholder = "입력하세요"/>
		<input type="text" class = "test" id="text2" placeholder = "입력하세요"/>
		<input type="button" value="입력체크" onclick="fn_check();"/>
	</div>
	<div>
		<div id="content">
			콘텐츠 내용
		</div>
		<input type="button" value = "변경" onclick="fn_change();"/>
		<input type="button" value = "추가" onclick="fn_add();"/>
		<input type="button" value = "반복" onclick="fn_print();"/>
	</div>
</body>
</html>

<script src="http://code.jquery.com/jquery-3.6.0.js"></script>

	
<script>
	function fn_check() {
		var check = $('#text').val();
		if(check == "") {
			alert("입력해주세요");
		}
		else {
			alert(check + " 저장되었습니다.");
		}
		//$('.test').val(check + "...");
		//$('input').val("input태그");
		//alert($('#text').attr("type"));
		$('#text').attr('type','button');
		$('#text').val("입력체크2");
		$('#text').attr('onclick','fn_check2();');
	}
	
	function fn_check2() {
		alert("버튼으로 변경되었습니다.");
	}
	
	function fn_change() {
		$('#content').html("<a href='http://www.naver.com'>"+$('#content').html()+"</a>");
	}
	function fn_add() {
		$('#content').append("추가 내용");
	}
	function fn_print() {
		var cnt = 0;
		$('.test').each(function () {
			if($(this).attr("id") == "text2") {
				alert("값이 바뀌었네요");
			}
				
			cnt++;
		});
		alert(cnt);
	}
</script>