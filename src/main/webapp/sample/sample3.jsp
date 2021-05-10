<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문</title>
</head>
<body>

</body>
</html>

<script type="text/javascript">
function fn_sample1(){
	var money = prompt("돈 얼마?");
	if(money > 5000) {
		alert("부자");
	}else if (money > 3000) {
		alert("평범");
	}else {
		alert("호우");
	}
}

function fn_sample2() {
	for(var i = 0; i < 10; i++) {
		if (i%2==0) {
			document.write(i+1);
			document.write("<br>");
		}
	}
}

/*
 * 에제) 구구단 출력 (2~9단) 각 단사이에는 한 줄씩 비울 것
 */

function ex1() {
	 for(var i=2; i<10; i++) {
		 for (var j=1; j<10; j++) {
			 document.write(i + "X" + j + "=" + (i*j));
			 document.write("<br>");
		 }
		 document.write("<br>");
	 }
}
 
 
/*
 * 예제2) 단 입력받아 출력
 */
function ex2() {
	 var dan = prompt("몇 단 출력?");
	 if (dan < 10 && dan > 1){
		 for (var j=1; j<10; j++) {
			 document.write(dan + " X " + j + " = " + (dan*j));
			 document.write("<br>");
		 }
	 }
	 else {
		 alert("2~9의 수를 입력해주세요");
	 }
}
 

 function fn_sample4(grade) {
	 switch (grade) {
		 case 1:
			 alert("1학년");
			 break;
		 case 2:
			 alert("2학년");
			 break;
		 default :
			 alert("호우");
			 break;
	 }
 }
/*
 * 예제) 네이버, 다음, 구글 중 즐겨 쓰는 포털은? 값을 입력받아 해당 사이트로 이동
 */

function ex3() {
	 var portal = prompt("네이버, 다음, 구글 중 즐겨 쓰는 포털은?");
	 switch (portal) {
		case "네이버" :
		case "naver" :
		case "NAVER" :
			 location.href = "http://naver.com";
			 break;
		case "다음":
		case "daum" :
		case "DAUM" :
			 location.href = "http://daum.net";
			 break;
		case "구글" :
		case "google" :
		case "GOOGLE" :
			 location.href = "http://google.com";
			 break;
		default :
			 alert("네이버, 다음, 구글 중 하나를 선택하세요");
			 break;
	 }
 }
//fn_sample1();

//fn_sample2();

//ex1();
//ex2();
//fn_sample4(1);
ex3();
</script>
