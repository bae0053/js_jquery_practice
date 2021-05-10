<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경고문, 페이지 이동</title>
</head>
<body>

</body>
</html>

<script type="text/javascript">
function fn_message(msg) {
	alert(msg);   /* 웹페이지에서 알림창이 뜨게하는 명령어 */
}

function fn_message2(msg1, msg2) {
	var result = confirm("처음 오신건가요?");  /* 확인과 취소에 따라 다른 동작을 할 때 사용 */
	if (result) {
		alert(msg1);
	}
	else {
		alert(msg2);
	}
}

function fn_message3() {
	var msg = prompt("이름을 입력해주세요."); /* 입력을 받을 때 사용 */ 
	if (msg) {
		alert("당신의 이름은" + msg + "입니다.");	
	}
}

function fn_link(url) {
	location.href = url;  /* url을 이동시킬때 사용 */
}

/*
 * 예제) prompt에서 "이동하실 URL을 입력하세요." 메세지와 함께 url을 입력받아 예 클릭시 이동하는 스크립트 작성
 */
 
function ex1() {
	 var url = prompt("이동하실  URL을 입력하세요");
	 if(url){
		 location.href = "http://" + url;
	 }
 }

//fn_message("안녕하세요");

//fn_message2("처음 뵙겠습니다","간만이군요");

//fn_message3();

//fn_link("http://naver.com");

ex1();

</script>