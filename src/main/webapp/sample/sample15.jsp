<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
</head>
<body>
<style>
tr {width : 200px;}
input[type="text"] {width :100%;}
input[type="button"] {width:25%; border: 0px;}
</style>
	<table>
	<tr>
		<td>
			<input type = "text" id = "monitor">
		</td>
	</tr>
	<tr>
		<td>
			<input type = "text" id = "result">
		</td>
	</tr>
	<tr>
		<td>
			<input type = "button" value = "7">
			<input type = "button" value = "8">
			<input type = "button" value = "9">
			<input type = "button" value = "+" id ="plus" class = "oper">
		</td>
	</tr>
	<tr>
		<td>
			<input type = "button" value = "4">
			<input type = "button" value = "5">
			<input type = "button" value = "6">
			<input type = "button" value = "-" id ="minus"class = "oper">
		</td>
	</tr>
	<tr>
		<td>
			<input type = "button" value = "1">
			<input type = "button" value = "2">
			<input type = "button" value = "3">
			<input type = "button" value = "*" id ="muti"class = "oper">
		</td>
	</tr>
	<tr>
		<td>
			<input type = "button" value = "0">
			<input type = "button" value = "C" id = "clear">
			<input type = "button" value = "=" id ="equl">
			<input type = "button" value = "/" id ="devide"class = "oper">
		</td>
	</tr>
	
	</table>
</body>
</html>

<script src="http://code.jquery.com/jquery-3.6.0.js"></script>

<script type="text/javascript">

/* 계산기  */

$("input[type=button]").bind('click', function () {
	var token = $('#monitor').val()
	if ($(this).attr("id") == "clear") {
		$('#monitor').val("");
		$('#result').val("");
		}
	else if ($(this).attr("id") == "equl") {
		if (check(token)) {
			alert("식을 완성해주세요");
		}
		else {
			$('#result').val(eval(token));
		}
		
	}
	else {
		if ($(this).attr('class') == "oper" && check(token)) {}
		else {
			 
			token = token + $(this).val();
			$('#monitor').val(token);
		}

	}
})
// 연속으로 연산자가 두개 나오는지 판별
function check(str) {
	var length = str.length;
	if (str.charAt(length-1) == "+" ||
			str.charAt(length-1) == "-" ||
			str.charAt(length-1) == "*" ||
			str.charAt(length-1) == "/") {return true;}
}

</script>

