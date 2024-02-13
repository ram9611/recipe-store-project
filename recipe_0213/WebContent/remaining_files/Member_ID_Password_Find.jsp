<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>요리를 즐겁게~ 만개의 레시피</title>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link href="Member_CSS/Member_ID_Password_Find.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
</head>
<body>
	<div id="div_header">
		<a href="https://www.10000recipe.com/">
			<img src="https://recipe1.ezmember.co.kr/img/logo3.png"/>
		</a>
	</div>
	<div id="div_content">
		<h2>아이디 / 비밀번호 찾기</h2>
		<div id="div_panel">
			<input type="text" id="id_email" placeholder="이메일"/>
			<div></div>
			<button type="button" id="send_mail">안내 메일 발송</button>
			<p id="div_help_block">* 개인정보 도용방지를 위해 아이디/비밀번호 찾기 안내를 회원 가입시 입력했던 메일로 발송합니다.</p>
			<p id="div_help_block">* 홈페이지에서 회원가입을 하신 회원의 아이디/비밀번호 찾기만 가능합니다.</p>
		</div>
	</div>
</body>
</html>