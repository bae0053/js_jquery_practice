<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax</title>
</head>
<body>
	<div>
		<input type="button" id = "btn1" value = "tab1" num="1">
		<input type="button" id = "btn2" value = "tab2" num="2">
		<input type="button" id = "btn3" value = "tab3" num="3">
	</div>
	
	<div id = "contentsArea1" class = "content"></div>
	<div id = "contentsArea2" class = "content"></div>
	<div id = "contentsArea3" class = "content"></div>
</body>
</html>


<script src="http://code.jquery.com/jquery-3.6.0.js"></script>

<script type="text/javascript">
/* 예제) 페이지 로딩시 해당 탭의 페이지를 contentsArea에 넣고, 1번째 페이지만 보이도록 작성
 * 		탭을 클릭하면 해당탭의 내용만 보여지게 작성
 *		탭별로 sample13_1,sample13_2,sample13_3 jsp 파일을 만들어 사용
 */
 
 $(document).ready(function() {
	 fn_getpage('./sample13_1.jsp', '1');
	 fn_getpage('./sample13_2.jsp', '2');
	 fn_getpage('./sample13_3.jsp', '3');
	 fn_view(1)
 });
 
function fn_getpage(url, num) {
	$.ajax({
		url :url,
		type : 'post',					// get, post
		dataType : 'html',				// html, json
		success : function (data) {
			$('#contentsArea' + num).html(data);
		},
		error : function () {
			alert("오류");	
		}
	})
}

function fn_view(num) {
		$('.content').hide();
		$('#contentsArea' + num).show();
	}

$('input[type="button"]').bind('click',function() {
	fn_view($(this).attr('num'));
})
</script>