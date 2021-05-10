<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애니메이션</title>
</head>
<body>
	<div>
		<div id="div1" style = "width : 100px; height : 100px; background : yellow;"></div>
		<input type="button" id="btn1" value = "hide"/>
		<input type="button" id="btn2" value = "show"/>
		<input type="button" id="btn3" value = "toggle"/>
	</div>
	
	<div>
		<div id="div2" style = "width : 100px; height : 100px; background : red;"></div>
		<input type="button" id="btn2_1" value = "fadeout"/>
		<input type="button" id="btn2_2" value = "fadein"/>
		<input type="button" id="btn2_3" value = "fadetoggle"/>
	</div>
	
	<div>
		<div id="div3" style = "width : 100px; height : 100px; background : blue;"></div>
		<input type="button" id="btn3_1" value = "slideup"/>
		<input type="button" id="btn3_2" value = "slidedown"/>
		<input type="button" id="btn3_3" value = "slidetoggle"/>
	</div>
	
	<div>
		<div id="div4" style = "width : 100px; height : 100px; background : green;"></div>
		<input type="button" id="btn4" value = "fadeto"/>

	</div>
	
	<div>
		<div id="div5" style = "width : 100px; height : 100px; background : orange;"></div>
		<input type="button" id="btn5" value = "twingkle"/>

	</div>
	
	<div>
		<div id="div6" style = "width : 100px; height : 100px; background : purple;"></div>
		<input type="button" id="btn6_1" value = "늘어남"/>
		<input type="button" id="btn6_2" value = "줄어듦"/>

	</div>
	
	<div>
		<div id="div7" style = "width : 100px; height : 100px; background : black;"></div>
		<input type="button" id="btn7_1" value = "좌"/>
		<input type="button" id="btn7_2" value = "우"/>
		<input type="button" id="btn7_3" value = "상"/>
		<input type="button" id="btn7_4" value = "하"/>

	</div>
</body>
</html>

<script src="http://code.jquery.com/jquery-3.6.0.js"></script>


<script>
/* 명령어 안에 인자는 동작이 일어나는 시간을 뜻함 */
$('#btn1').bind('click', function() {
	$('#div1').hide(1000);
});
$('#btn2').bind('click', function() {
	$('#div1').show(2000);
});
$('#btn3').bind('click', function() {
	$('#div1').toggle(500);
});

$('#btn2_1').bind('click', function() {
	$('#div2').fadeOut(1000);
});
$('#btn2_2').bind('click', function() {
	$('#div2').fadeIn(2000);
});
$('#btn2_3').bind('click', function() {
	$('#div2').fadeToggle(2500);
});

$('#btn3_1').bind('click', function() {
	$('#div3').slideUp(1000);
});
$('#btn3_2').bind('click', function() {
	$('#div3').slideDown(2000);
});
$('#btn3_3').bind('click', function() {
	$('#div3').slideToggle(2500);
});

$('#btn4').bind('click', function() {
	$('#div4').fadeTo(1000, 0.5, function() {
		alert("완료");
	});
});

$('#btn5').bind('click', function() {
	fn_hide();
	
});

function fn_hide() {
	$('#div5').fadeTo(500,0,function() {
		fn_show();
	});
}
function fn_show() {
	$('#div5').fadeTo(500,1,function() {
		fn_hide();
	});
}

$('#btn6_1').bind('click', function() {
	$('#div6').animate({width:'500px'}, 1000,'linear', function() {
		
	});
	
});

$('#btn6_2').bind('click', function() {
	$('#div6').animate({width:'100px'}, 1000,'linear', function() {
		
	});
	
});

var marginL = 0;
var marginT = 0;
$('#btn7_1').bind('click', function() {
	marginL -= 100;
	$('#div7').animate({marginLeft :marginL+"px"}, 1000,'linear', function() {
		
	});
	
});
$('#btn7_2').bind('click', function() {
	marginL += 100;
	$('#div7').animate({marginLeft :marginL+"px"}, 1000,'linear', function() {
		
	});
	
});
$('#btn7_3').bind('click', function() {
	marginT -= 100;
	$('#div7').animate({marginTop :marginT+"px"}, 1000,'linear', function() {
		
	});
	
});
$('#btn7_4').bind('click', function() {
	marginT += 100;
	$('#div7').animate({marginTop :marginT+"px"}, 1000,'linear', function() {
		
	});
	
});



</script>