$(function() {
	// 페이지 로딩 시 현재 열려있는 채팅방의 스크롤이 맨 아래에서 시작
	// 추후에 선택한 채팅방의 스크롤을 맨 아래에서 시작하게하는 기능으로 확장
	document.getElementById("div_chatting_room_content").scrollTop = document.getElementById("div_chatting_room_content").scrollHeight;
	
	$(".button_add").on("click", function() {
		$("#div_create_chatroom").css("display", "block");
	})
	$(".button_cancel_room").on("click", function() {
		$("#div_create_chatroom").css("display", "none");
	})
});