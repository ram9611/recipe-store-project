<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script>
		function timer() {
			let time = 10; // 인증만료시간(3분)
			
			let timer = setInterval(function() {
				time--;
				let min = Math.floor(time / 60);
				let sec = time - min*60;
				$("#div_phone_timer").css("display", "block");
				$("#div_phone_timer").text("인증번호 만료시간 : " + min + "분 " + sec + "초")
				if(time == 0) {
					clearInterval(timer);
					$("#div_phone_timer").text('시간 만료');
				}
			}, 1000);
		}
		
		timer();
	</script>
</head>
<body>
	<h1>timer</h1>
	<div class="timer">
		<div id="div_phone_timer">3분 0초</div>
	</div>
</body>
</html>