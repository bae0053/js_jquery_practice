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
		<input type="text" id="text" placeholder = "입력하세요"/>
		<input type="button" value="입력체크" onclick="fn_check();"/>
	</div>
</body>
</html>

<script type="text/javascript">
	function fn_check() {
		var check = document.getElementById('text').value; 
		if(check == "") {
			alert("입력해주세요");
		}
		else {
			alert("저장되었습니다.");
		}
	}
</script>