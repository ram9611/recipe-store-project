<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- 마이페이지 채팅 -->
	<meta charset="UTF-8">
	<title>요리를 즐겁게~ 만개의 레시피</title>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
	<link href="Recipe_CSS/Recipe_MyPage_Chatting.css" rel="stylesheet">
	<link href="Recipe_CSS/Public/Recipe_Header.css" rel="stylesheet"/>
	<link href="Recipe_CSS/Public/Recipe_Footer.css" rel="stylesheet"/>
	<link href="Recipe_CSS/Public/Recipe_MyPage_Profile.css" rel="stylesheet"/>
	<link href="Recipe_CSS/Public/Recipe_Right_Advertise.css" rel="stylesheet"/>
	<link href="Recipe_CSS/Public/Recipe_Body_Frame.css" rel="stylesheet"/>
	<link href="Recipe_CSS/Public/Recipe_MyPage_Header.css" rel="stylesheet"/>
	<link href="Recipe_CSS/Public/Recipe_MyPage_Profile_Change.css" rel="stylesheet"/>
	<link href="Recipe_CSS/Public/Recipe_MyPage_View_Follow.css" rel="stylesheet"/>
	<link href="slick-jw/slick_jw.css" rel="stylesheet"/>
	<link href="slick-jw/slick-theme_jw.css" rel="stylesheet"/>
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script src="js/Recipe_MyPage.js"></script>
	<script src="js/Recipe_Footer.js"></script>
	<script src="js/Member_Follow.js"></script>
	<script src="js/Recipe_Chatting.js"></script>
</head>
<body>
<!-- 페이지 최상단 -->
	<div id="div_header">
		<div id="div_header_inner">
			<div id="div_logo_image">
				<a href="https://www.10000recipe.com/index.html">
					<img src="https://recipe1.ezmember.co.kr/img/logo4.png"/>
				</a>
			</div>
			<div id="div_search_bar">
				<form id="searchRecipe">
					<div id="div_input_group">
						<input type="text" id="searchText"/>
						<span>
							<button id="search_button" type="button">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
				</form>
			</div>
			<div id="div_header_button">
				<div id="div_login_button" class="fl">
					<a href="">
						<img src="https://recipe1.ezmember.co.kr/img/ico_user.png"/>
					</a>
				</div>
				<div id="div_recipeWrite_button" class="fl">
					<a href="">
						<img src="https://recipe1.ezmember.co.kr/img/tmn_write.png"/>
					</a>
				</div>
				<div id="div_store_button" class="fl">
					<a href="">
						<img src="https://recipe1.ezmember.co.kr/img/tmn_store2.png"/>
					</a>
				</div>
				<div style="clear:both;"></div>
			</div>
		</div>
		<div id="div_partner1">
			<img src="https://recipe1.ezmember.co.kr/img/partners/banner_web1.png?v.2"/>
		</div>
		<div id="div_partner2">
			<img src="https://recipe1.ezmember.co.kr/img/partners/banner_web2.png?v.2"/>
		</div>
	</div>
<!-- /페이지 최상단 -->
<!-- 페이지 상단 메뉴바 -->
	<div id="div_menubar">
		<div id="div_menu_content">
			<div class="div_menu_button">
				<a href="#">추천</a>
			</div>
			<div class="div_menu_button">
				<a href="#">분류</a>
			</div>
			<div class="div_menu_button">
				<a href="#">랭킹</a>
			</div>
			<div class="div_menu_button">
				<a href="#">매거진</a>
			</div>
			<div class="div_menu_button">
				<a href="#">더보기
					<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span>
				</a>
			</div>
			<div style="clear:both;"></div>
		</div>
	</div>
<!-- /페이지 상단 메뉴바 -->
<!------------ header ------------>
	<div id="div_content_outer">
		<div id="div_content_left" class="fl">
<!-- 마이페이지 헤더 -->
			<div id="div_mypage_header">
				<div class="div_mypage_header_button">
					<a href="#">
						<span class="glyphicon glyphicon-cutlery"></span>
						레시피
					</a>
				</div>
				<div class="div_mypage_header_button">
					<a href="#">
						<span class="glyphicon glyphicon-star"></span>
						요리후기
					</a>
				</div>
				<div class="div_mypage_header_button">
					<a href="#">
						<span class="glyphicon glyphicon-user"></span>
						쉐프
					</a>
				</div>
			</div>
<!-- /마이페이지 헤더 -->
<!-- 메인컨텐츠(채팅) -->
			<div id="div_mypage_chatting_panel">
<!-- 채팅 왼쪽(채팅방 목록) -->
				<div id="div_chatting_list">
					<div id="div_chatting_list_header">
						<ul id="ul_alarm_header">
							<li class="on">
								<button id="button_all_chat">
									<span>
										<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-chat-fill" viewBox="0 0 16 16">
										  <path d="M8 15c4.418 0 8-3.134 8-7s-3.582-7-8-7-8 3.134-8 7c0 1.76.743 3.37 1.97 4.6-.097 1.016-.417 2.13-.771 2.966-.079.186.074.394.273.362 2.256-.37 3.597-.938 4.18-1.234A9.06 9.06 0 0 0 8 15z"/>
										</svg>
										<strong class="chat_alarm_text">전체</strong>
									</span>
								</button>
							</li>
							<li>
								<button id="button_not_read_chat">
									<span>
										<span class="count_not_read">0</span>
										<strong class="chat_alarm_text">안읽음</strong>
									</span>
								</button>
							</li>
						</ul>
						<div id="div_chat_search_bar">
							<input type="text" id="input_search_chat" placeholder="검색어 입력"/>
							<button id="button_search">
								<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
								  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
								</svg>
							</button>
							<label for="input_search_chat" class="blind">
								대화방 이름 검색
								<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
								  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
								</svg>
							</label>
						</div>
					</div>
					<div id="div_chatting_list_body">
						<ul id="chat_list">
							<li class="on">
								<div class="div_chat_button">
									<div class="div_chat_info">
										<div class="div_chat_thumbnail">
											<img src="https://shop-phinf.pstatic.net/20160308_192/talk_1457421259636xMxxS_JPEG/mosaga1Dir.jpeg?type=f164"/>
										</div>
										<div class="div_chat_info_text">
											<div class="div_chat_name">
												<strong class="chat_name">구글 번역기</strong>
												<span class="chat_date">어제</span>
											</div>
											<div class="div_chat_text">
												<p class="message">취업하고싶어요.</p>
											</div>
										</div>
									</div>
								<div class="div_line"></div>
								</div>
							</li>
							<li>
								<div class="div_chat_button">
									<div class="div_chat_info">
										<div class="div_chat_thumbnail">
											<img src="https://shop-phinf.pstatic.net/20170811_121/talk_1502425541720DWPMd_PNG/img.png?type=f164"/>
										</div>
										<div class="div_chat_info_text">
											<div class="div_chat_name">
												<strong class="chat_name">네이버회원</strong>
												<span class="chat_date">10월 21일</span>
											</div>
											<div class="div_chat_text">
												<p class="message">[보안기능] 새로운 환경에서 로그인 되었습니다.</p>
											</div>
										</div>
									</div>
								<div class="div_line"></div>
								</div>
							</li>
						</ul>
					</div>
					<div id="div_chatting_list_footer">
						<div id="div_add_chatroom">
							<button class="button_add">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
								  <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z"/>
								</svg>
							</button>
						</div>
						<div id="div_delete">
							<button class="button_delete">
								<span>
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3-fill" viewBox="0 0 16 16">
										<path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5Zm-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5ZM4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5Z"/>
									</svg>
								</span>
							</button>
						</div>
					</div>
				</div>
<!-- /채팅 왼쪽(채팅방 목록) -->
<!-- 채팅방 생성 modal -->
				<!-- 1:1채팅일 때 -->
				<div id="div_create_chatroom" style="display:none;">
					<div id="div_create_chatroom_area">
						<div id="div_create_chatroom_box">
								<div class="div_create_chatroom_header">
									<div class="green_box">채팅 유형</div>
									<div class="div_select_chat green_box">1:1 채팅</div>
									<div class="div_select_chat green_box">단체 채팅</div>
								</div>
								<div class="div_create_chatroom_body">
									<div class="div_create_chatroom_body_left">
										<div class="green_box">채팅 대상</div>
									</div>
									<div class="div_create_chatroom_body_right">
										<input type="text" placeholder="유저 아이디" class="green_box" value="" readonly/>
										<div class="div_select_user green_box">유저 선택</div>
									</div>
								</div>
								<div class="div_create_chatroom_footer">
									<button class="button_create_room green_box">생성하기</button>
									<button class="button_cancel_room green_box">취소</button>
								</div>
						</div>
					</div>
				</div>
				<!-- /1:1채팅일 때 -->
				<!-- 단체채팅일 때 -->
				<div id="div_create_chatroom">
					<div id="div_create_chatroom_area">
						<div id="div_create_chatroom_box">
								<div class="div_create_chatroom_header">
									<div class="green_box">채팅 유형</div>
									<div class="div_select_chat green_box">1:1 채팅</div>
									<div class="div_select_chat green_box">단체 채팅</div>
								</div>
								<div class="div_create_chatroom_body">
									<div class="div_create_chatroom_body_left">
										<div class="green_box">채팅 대상</div>
									</div>
									<div class="div_create_chatroom_body_right">
										<input type="text" placeholder="유저 아이디" class="green_box" value="" readonly/>
										<div class="div_select_user green_box">유저 선택</div>
									</div>
								</div>
								<div class="div_create_chatroom_footer">
									<button class="button_create_room green_box">생성하기</button>
									<button class="button_cancel_room green_box">취소</button>
								</div>
						</div>
					</div>
				</div>
				<!-- /단체채팅일 때 -->
<!-- /채팅방 생성 modal -->
<!-- 채팅 오른쪽(채팅방) -->
				<div id="div_chatting_room">
<!-- 채팅방 더보기(설정) -->
					<div id="div_chatting_drawer">
						<div id="div_chatting_drawer_empty"></div>
						<div id="div_chatting_drawer_area">
							<div id="div_chatting_drawer_header">
								<button class="button_close">
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
									  <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z"/>
									</svg>
								</button>
								<!-- 방장아니면 숨겨져있어야함 -->
								<div id="div_chatting_info_more">
									<button class="button_setting">
										<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
										  <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
										  <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
										</svg>
									</button>
								</div>
							</div>
							<div id="div_chatting_drawer_content">
								
							</div>
						</div>
					</div>
<!-- /채팅방 더보기(설정) -->
					<div id="div_chatting_room_header">
						<div id="div_chatting_thumbnail">
							<img src="https://shop-phinf.pstatic.net/20160308_192/talk_1457421259636xMxxS_JPEG/mosaga1Dir.jpeg?type=f164"/>
						</div>
						<div id="div_chatting_title">
							<strong id="chatting_title">채팅방 제목</strong>
							<span id="chatting_user_cnt">3</span>
						</div>
						<div id="div_chatting_header_right">
							<button type="button" class="button_more">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
								  <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
								</svg>
							</button>
						</div>
					</div>
					<div id="div_chatting_room_body">
						<div id="div_chatting_room_content">
							<div class="div_msg_system">
								<span class="span_msg_system">보관 기간 이내의 메시지만 볼 수 있어요.</span>
							</div>
							<div class="div_msg_date">
								<span class="span_msg_date">12.5. (화)</span>
							</div>
							<div class="div_msg_item">
								<div class="div_msg_chat">
									<div class="div_msg_chat_content">
										<div class="div_msg_chat_text">
											<p class="p_msg_chat_text">
												<span class="span_msg_text">안녕하세요</span>
											</p>
										</div>
										<div class="div_msg_chat_info">
											<span class="span_reading_count">0</span>
											<div class="div_msg_chat_info_more">
												<span class="span_info_writing_time">오전 11:44</span>
												<div class="div_msg_chat_button">
													<div class="div_msg_button is_show">
														<button type="button" title="답장하기" class="button_chat_reply">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
															  <path d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z"/>
															</svg>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="div_msg_item">
								<div class="div_msg_chat">
									<div class="div_msg_chat_content">
										<div class="div_msg_chat_text">
											<p class="p_msg_chat_text">
												<span class="span_msg_text">안녕하세요</span>
											</p>
										</div>
										<div class="div_msg_chat_info">
											<span class="span_reading_count">0</span>
											<div class="div_msg_chat_info_more">
												<span class="span_info_writing_time">오전 11:44</span>
												<div class="div_msg_chat_button">
													<div class="div_msg_button is_show">
														<button type="button" title="답장하기" class="button_chat_reply">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
															  <path d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z"/>
															</svg>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="div_msg_item others_msg">
								<div class="div_msg_profile">
									<button type="button" class="button_profile">
										<img src="https://ntalk.pstatic.net/chat/static/img/placeholder_profile_24x24.5f70d832.svg"/>
									</button>
								</div>
								<div class="div_msg_chat">
									<div class="div_msg_nickname">
										<span class="span_nickname">홍이</span>
									</div>
									<div class="div_msg_chat_content others_msg">
										<div class="div_msg_chat_text">
											<p class="p_msg_chat_text">
												<span class="span_msg_text others_msg">안녕하세요</span>
											</p>
										</div>
										<div class="div_msg_chat_info others_msg">
											<span class="span_reading_count count0">0</span>
											<div class="div_msg_chat_info_more other_msg">
												<span class="span_info_writing_time">오전 11:44</span>
												<div class="div_msg_chat_button">
													<div class="div_msg_button">
														<button type="button" title="답장하기" class="button_chat_reply">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
															  <path d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z"/>
															</svg>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="div_msg_item others_msg">
								<div class="div_msg_profile">
									<button type="button" class="button_profile">
										<img src="https://ntalk.pstatic.net/chat/static/img/placeholder_profile_24x24.5f70d832.svg"/>
									</button>
								</div>
								<div class="div_msg_chat">
									<div class="div_msg_nickname">
										<span class="span_nickname">홍이</span>
									</div>
									<div class="div_msg_chat_content others_msg">
										<div class="div_msg_chat_text">
											<p class="p_msg_chat_text">
												<span class="span_msg_text others_msg">안녕하세요</span>
											</p>
										</div>
										<div class="div_msg_chat_info others_msg">
											<span class="span_reading_count count0">0</span>
											<div class="div_msg_chat_info_more other_msg">
												<span class="span_info_writing_time">오전 11:44</span>
												<div class="div_msg_chat_button">
													<div class="div_msg_button">
														<button type="button" title="답장하기" class="button_chat_reply">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
															  <path d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z"/>
															</svg>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="div_msg_item">
								<div class="div_msg_chat">
									<div class="div_msg_chat_content">
										<div class="div_msg_chat_text">
											<p class="p_msg_chat_text">
												<span class="span_msg_text">안녕하세요</span>
											</p>
										</div>
										<div class="div_msg_chat_info">
											<span class="span_reading_count">0</span>
											<div class="div_msg_chat_info_more">
												<span class="span_info_writing_time">오전 11:44</span>
												<div class="div_msg_chat_button">
													<div class="div_msg_button is_show">
														<button type="button" title="답장하기" class="button_chat_reply">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
															  <path d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z"/>
															</svg>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="div_msg_item">
								<div class="div_msg_chat">
									<div class="div_msg_chat_content">
										<div class="div_msg_chat_text">
											<p class="p_msg_chat_text">
												<span class="span_msg_text">안녕하세요</span>
											</p>
										</div>
										<div class="div_msg_chat_info">
											<span class="span_reading_count">0</span>
											<div class="div_msg_chat_info_more">
												<span class="span_info_writing_time">오전 11:44</span>
												<div class="div_msg_chat_button">
													<div class="div_msg_button is_show">
														<button type="button" title="답장하기" class="button_chat_reply">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
															  <path d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z"/>
															</svg>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="div_msg_date">
								<span class="span_msg_date">12.11. (월)</span>
							</div>
							<div class="div_msg_item others_msg">
								<div class="div_msg_profile">
									<button type="button" class="button_profile">
										<img src="https://ntalk.pstatic.net/chat/static/img/placeholder_profile_24x24.5f70d832.svg"/>
									</button>
								</div>
								<div class="div_msg_chat">
									<div class="div_msg_nickname">
										<span class="span_nickname">홍이</span>
									</div>
									<div class="div_msg_chat_content others_msg">
										<div class="div_msg_chat_text">
											<p class="p_msg_chat_text">
												<span class="span_msg_text others_msg">안녕하세요</span>
											</p>
										</div>
										<div class="div_msg_chat_info others_msg">
											<span class="span_reading_count count0">0</span>
											<div class="div_msg_chat_info_more other_msg">
												<span class="span_info_writing_time">오전 11:44</span>
												<div class="div_msg_chat_button">
													<div class="div_msg_button">
														<button type="button" title="답장하기" class="button_chat_reply">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
															  <path d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z"/>
															</svg>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="div_msg_item others_msg">
								<div class="div_msg_profile">
									<button type="button" class="button_profile">
										<img src="https://ntalk.pstatic.net/chat/static/img/placeholder_profile_24x24.5f70d832.svg"/>
									</button>
								</div>
								<div class="div_msg_chat">
									<div class="div_msg_nickname">
										<span class="span_nickname">홍삼</span>
									</div>
									<div class="div_msg_chat_content others_msg">
										<div class="div_msg_chat_text">
											<p class="p_msg_chat_text">
												<span class="span_msg_text others_msg">안녕하세요</span>
											</p>
										</div>
										<div class="div_msg_chat_info others_msg">
											<span class="span_reading_count count0">0</span>
											<div class="div_msg_chat_info_more other_msg">
												<span class="span_info_writing_time">오전 11:44</span>
												<div class="div_msg_chat_button">
													<div class="div_msg_button">
														<button type="button" title="답장하기" class="button_chat_reply">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
															  <path d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z"/>
															</svg>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="div_msg_item">
								<div class="div_msg_chat">
									<div class="div_msg_chat_content">
										<div class="div_msg_chat_text">
											<p class="p_msg_chat_text">
												<span class="span_msg_text">안녕하세요</span>
											</p>
										</div>
										<div class="div_msg_chat_info">
											<span class="span_reading_count">0</span>
											<div class="div_msg_chat_info_more">
												<span class="span_info_writing_time">오전 11:44</span>
												<div class="div_msg_chat_button">
													<div class="div_msg_button is_show">
														<button type="button" title="답장하기" class="button_chat_reply">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
															  <path d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z"/>
															</svg>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="div_msg_item">
								<div class="div_msg_chat">
									<div class="div_msg_chat_content">
										<div class="div_msg_chat_text">
											<p class="p_msg_chat_text">
												<span class="span_msg_text">안녕하세요</span>
											</p>
										</div>
										<div class="div_msg_chat_info">
											<span class="span_reading_count">0</span>
											<div class="div_msg_chat_info_more">
												<span class="span_info_writing_time">오전 11:44</span>
												<div class="div_msg_chat_button">
													<div class="div_msg_button is_show">
														<button type="button" title="답장하기" class="button_chat_reply">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
															  <path d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z"/>
															</svg>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="div_msg_item others_msg">
								<div class="div_msg_profile">
									<button type="button" class="button_profile">
										<img src="https://ntalk.pstatic.net/chat/static/img/placeholder_profile_24x24.5f70d832.svg"/>
									</button>
								</div>
								<div class="div_msg_chat">
									<div class="div_msg_nickname">
										<span class="span_nickname">홍이</span>
									</div>
									<div class="div_msg_chat_content others_msg">
										<div class="div_msg_chat_text">
											<p class="p_msg_chat_text">
												<span class="span_msg_text others_msg">안녕하세요</span>
											</p>
										</div>
										<div class="div_msg_chat_info others_msg">
											<span class="span_reading_count count0">0</span>
											<div class="div_msg_chat_info_more other_msg">
												<span class="span_info_writing_time">오전 11:44</span>
												<div class="div_msg_chat_button">
													<div class="div_msg_button">
														<button type="button" title="답장하기" class="button_chat_reply">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
															  <path d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z"/>
															</svg>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="div_msg_item others_msg">
								<div class="div_msg_profile">
									<button type="button" class="button_profile">
										<img src="https://ntalk.pstatic.net/chat/static/img/placeholder_profile_24x24.5f70d832.svg"/>
									</button>
								</div>
								<div class="div_msg_chat">
									<div class="div_msg_nickname">
										<span class="span_nickname">홍이</span>
									</div>
									<div class="div_msg_chat_content others_msg">
										<div class="div_msg_chat_text">
											<p class="p_msg_chat_text">
												<span class="span_msg_text others_msg">안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요</span>
											</p>
										</div>
										<div class="div_msg_chat_info others_msg">
											<span class="span_reading_count count0">0</span>
											<div class="div_msg_chat_info_more other_msg">
												<span class="span_info_writing_time">오전 11:44</span>
												<div class="div_msg_chat_button">
													<div class="div_msg_button">
														<button type="button" title="답장하기" class="button_chat_reply">
															<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
															  <path d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z"/>
															</svg>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="div_chatting_room_input">
							<div id="div_chat_input_wrap">
								<div class="div_pre_input_area">
									<div class="div_my_profile_thumbnail">
										<img src="https://recipe1.ezmember.co.kr/cache/rpf/2023/10/11/e1d6d17cfed1532dd786a37875ab91a01.jpg"/>
									</div>
								</div>
								<div class="div_input_area">
									<textarea class="textarea_input"  placeholder="작성할 내용을 입력하세요."></textarea>
								</div>
							</div>
							<div id="div_post_input_wrap">
								<div class="div_post_input_button">
									<button type="button" class="button_picture">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-image" viewBox="0 0 16 16">
										  <path d="M6.002 5.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
										  <path d="M2.002 1a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2h-12zm12 1a1 1 0 0 1 1 1v6.5l-3.777-1.947a.5.5 0 0 0-.577.093l-3.71 3.71-2.66-1.772a.5.5 0 0 0-.63.062L1.002 12V3a1 1 0 0 1 1-1h12z"/>
										</svg>
									</button>
								</div>
								<button type="button" class="button_send">보내기</button>
							</div>
						</div>
					</div>
				</div>
<!-- /채팅 오른쪽(채팅방) -->
			</div>
<!-- /메인컨텐츠(채팅) -->
		</div>
		<div id="div_content_right" class="fl">
<!-- 프로필사진과 자기소개 변경창 -->
			<div id="div_profile_change" class="div_mypage_extra">
				<div id="div_profile_change_area" class="div_mypage_extra_area">
					<div id="div_profile_change_box" class="div_mypage_extra_box">
						<div id="div_change_box_header" class="div_mypage_extra_box_title">
							<h4 class="h4_box_header_title">프로필 사진 / 자기소개 편집</h4>
							<button type="button" class="button_box_close">
								<img src="https://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"/>
							</button>
						</div>
						<div id="div_change_box_body" class="div_mypage_extra_box_body">
							<div id="div_img_change_box">
								<img id="profile_img_preview"src="https://recipe1.ezmember.co.kr/cache/rpf/2023/10/11/f1e2b589eb0307d68ed4331c43fafc55.jpg"/>
								<div id="div_img_change_box_button">
									<a>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/2023/btn_pic.png" alt="사진첩"/>
									</a>
									<a>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/2023/btn_del.png" alt="휴지통"/>
									</a>
								</div>
							</div>
							<div id="div_text_change_box">
								<div id="div_text_input">
									<input type="text" id="input_self_intro" name="self_intro" placeholder="자기소개를 100자 이내로 작성해 주세요."/>
									<a>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/2022/icon_close2.png" alt="삭제"/>
									</a>
								</div>
								<div id="div_change_confirm">
									<button type="button">취소</button>
									<button type="button">저장</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- /프로필사진과 자기소개 변경창 -->
<!-- 팔로워 팔로잉 보여주는 창 -->
			<div id="div_view_following" class="div_mypage_extra">
				<div id="div_view_following_area" class="div_mypage_extra_area">
					<div id="div_view_following_box" class="div_mypage_extra_box">
						<div id="div_view_following_header" class="div_mypage_extra_box_title">
							<h4 class="h4_box_header_title" id="view_follow_uid">ljw님의 친구</h4>
							<button type="button" class="button_box_close">
								<img src="https://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"/>
							</button>
						</div>
						<div id="div_view_following_body" class="div_mypage_extra_box_body">
							<ul class="ul_follow_list">
								<li class="li_follow_user">
									<a>
										<img src="https://recipe1.ezmember.co.kr/cache/rpf/2023/09/10/9c755b29130b18be5992f6bc9f0a8bba1.jpg"/>
										청담거사
									</a>
									<button type="button" class="btn_follow_user">삭제</button>
								</li>
								<li class="li_follow_user">
									<a>
										<img src="https://recipe1.ezmember.co.kr/cache/rpf/2023/09/10/9c755b29130b18be5992f6bc9f0a8bba1.jpg"/>
										청담거사
									</a>
									<button type="button" class="btn_follow_user">삭제</button>
								</li>
								<li class="li_follow_user">
									<a>
										<img src="https://recipe1.ezmember.co.kr/cache/rpf/2023/09/10/9c755b29130b18be5992f6bc9f0a8bba1.jpg"/>
										청담거사
									</a>
									<button type="button" class="btn_follow_user">삭제</button>
								</li>
								<li class="li_follow_user">
									<a>
										<img src="https://recipe1.ezmember.co.kr/cache/rpf/2023/09/10/9c755b29130b18be5992f6bc9f0a8bba1.jpg"/>
										청담거사
									</a>
									<button type="button" class="btn_follow_user">삭제</button>
								</li>
								<li class="li_follow_user">
									<a>
										<img src="https://recipe1.ezmember.co.kr/cache/rpf/2023/09/10/9c755b29130b18be5992f6bc9f0a8bba1.jpg"/>
										청담거사
									</a>
									<button type="button" class="btn_follow_user">삭제</button>
								</li>
								<li class="li_follow_user">
									<a>
										<img src="https://recipe1.ezmember.co.kr/cache/rpf/2023/09/10/9c755b29130b18be5992f6bc9f0a8bba1.jpg"/>
										청담거사
									</a>
									<button type="button" class="btn_follow_user">삭제</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 팔로잉 완성하고 일단은 팔로워 하나 더 만들어두기 -->
			<div id="div_view_follower" class="div_mypage_extra">
				<div id="div_view_follower_area" class="div_mypage_extra_area">
					<div id="div_view_follower_box" class="div_mypage_extra_box">
						<div id="div_view_follower_header" class="div_mypage_extra_box_title">
							<h4 class="h4_box_header_title" id="view_follow_uid">ljw님을 따르는 친구</h4>
							<button type="button" class="button_box_close">
								<img src="https://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"/>
							</button>
						</div>
						<div id="div_view_follower_body" class="div_mypage_extra_box_body">
							<ul class="ul_follow_list">
								<li class="li_follow_user">
									<a>
										<img src="https://recipe1.ezmember.co.kr/cache/rpf/2023/09/10/9c755b29130b18be5992f6bc9f0a8bba1.jpg"/>
										청담거사
									</a>
									<button type="button" class="btn_follow_user">삭제</button>
								</li>
								<li class="li_follow_user">
									<a>
										<img src="https://recipe1.ezmember.co.kr/cache/rpf/2023/09/10/9c755b29130b18be5992f6bc9f0a8bba1.jpg"/>
										청담거사
									</a>
									<button type="button" class="btn_follow_user">삭제</button>
								</li>
								<li class="li_follow_user">
									<a>
										<img src="https://recipe1.ezmember.co.kr/cache/rpf/2023/09/10/9c755b29130b18be5992f6bc9f0a8bba1.jpg"/>
										청담거사
									</a>
									<button type="button" class="btn_follow_user">삭제</button>
								</li>
								<li class="li_follow_user">
									<a>
										<img src="https://recipe1.ezmember.co.kr/cache/rpf/2023/09/10/9c755b29130b18be5992f6bc9f0a8bba1.jpg"/>
										청담거사
									</a>
									<button type="button" class="btn_follow_user">삭제</button>
								</li>
								<li class="li_follow_user">
									<a>
										<img src="https://recipe1.ezmember.co.kr/cache/rpf/2023/09/10/9c755b29130b18be5992f6bc9f0a8bba1.jpg"/>
										청담거사
									</a>
									<button type="button" class="btn_follow_user">삭제</button>
								</li>
								<li class="li_follow_user">
									<a>
										<img src="https://recipe1.ezmember.co.kr/cache/rpf/2023/09/10/9c755b29130b18be5992f6bc9f0a8bba1.jpg"/>
										청담거사
									</a>
									<button type="button" class="btn_follow_user">삭제</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
<!-- /팔로워 팔로잉 보여주는 창 -->
<!-- 프로필 -->
			<div id="div_profile_panel">
				<div id="div_profile_background"></div>
				<div id="div_profile_body">
					<div id="div_profile_img">
						<a id="a_profile_img">
							<img src="https://recipe1.ezmember.co.kr/cache/rpf/2023/10/11/e1d6d17cfed1532dd786a37875ab91a01.jpg"/>
						</a>
						<a id="a_change_profile_img">
							<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_camera2.png" alt="사진변경"/>
						</a>
					</div>
					<div id="div_profile_user_name">
						<b>ljw</b>
					</div>
					<div id="div_profile_user_introduce">
						<span class="glyphicon glyphicon-pencil"></span>
						<a href="#">
							<u>자기소개를 등록할 수 있습니다.</u>
						</a>
					</div>
					<div id="div_profile_figures">
						<a href="#">
							총조회
							<b>0</b>
						</a>
						<span>·</span>
						<a href="#">
							팔로워
							<b>1</b>
						</a>
						<span>·</span>
						<a href="#">
							팔로잉
							<b>103</b>
						</a>
					</div>
				</div>
			</div>
<!-- /프로필 -->
			<div class="blank_space"></div>
<!-- 사이트 자체 광고 -->
			<div class="advertisement">
				<a href="#">
					<img src="https://recipe1.ezmember.co.kr/cache/rpe/2023/11/10/7082137c2850ee4529a1fbf6dbef597e1.jpg"/>
				</a>
			</div>
			<div class="advertisement">
				<a href="#">
					<img src="https://recipe1.ezmember.co.kr/cache/rpe/2023/10/30/fced5774b69326a935e9f8885eb714ea1.jpg"/>
				</a>
			</div>
			<div class="advertisement">
				<a href="#">
					<img src="https://recipe1.ezmember.co.kr/cache/shop/2023/11/06/ace207f7d4a96271e21bea459c7e3ff9.jpg"/>
				</a>
			</div>
			<div class="advertisement">
				<a href="#">
					<img src="https://recipe1.ezmember.co.kr/cache/shop/2023/11/23/b0f1fa801ac2ba6e631318df934e5c95.jpg"/>
				</a>
			</div>
			<div class="advertisement">
				<a href="#">
					<img src="https://recipe1.ezmember.co.kr/cache/shop/2023/11/20/b21b9c6dc74284e648ea0c67d22b3c9e.jpg"/>
				</a>
			</div>
			<div class="advertisement">
				<a href="#">
					<img src="https://recipe1.ezmember.co.kr/cache/shop/2021/07/09/f0705fbc1e6c357c8f07817cddfe614e.jpg"/>
				</a>
			</div>
<!-- /사이트 자체 광고 -->
<!-- 스토어 베스트상품 -->
			<div id="div_store_panel">
				<div id="div_store_best">
					<div id="div_store_title">
						<b>만개스토어
							<span>BEST</span>
						</b>
						<a href="#">더보기 &gt;</a>
						<div style="clear:both;"></div>
					</div>
					<div id="div_store_body">
						<div class="div_product">
							<a href="#">
								<div class="div_product_img" style="background:url(https://recipe1.ezmember.co.kr/cache/data/goods/23/02/09/1000034404/1000034404_list_077.jpg) center no-repeat; background-size:cover; height:305px;"></div>
								<div class="div_product_text">
									<p class="product_title">Samsung 삼성 공기청정기 AX90T7020WBD</p>
									<p class="product_price">499,000<small>원</small></p>
									<p class="product_star">
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2.png"/>
										<span>(10)</span>
									</p>
								</div>
							</a>
						</div>
					</div>
					<div id="div_store_body">
						<div class="div_product">
							<a href="#">
								<div class="div_product_img" style="background:url(https://recipe1.ezmember.co.kr/cache/data/goods/23/10/41/1000040809/1000040809_list_022.jpg) center no-repeat; background-size:cover; height:305px;"></div>
								<div class="div_product_text">
									<p class="product_title">[15%할인쿠폰] 르젠 IH 인덕션 가열식 가습기 5세대 (LPL-IH600S / LPL-IH650S / LPL-IH650G)</p>
									<p class="product_price">289,000<small>원</small></p>
									<p class="product_star">
									</p>
								</div>
							</a>
						</div>
					</div>
					<div id="div_store_body">
						<div class="div_product">
							<a href="#">
								<div class="div_product_img" style="background:url(https://recipe1.ezmember.co.kr/cache/data/goods/23/11/45/1000041358/1000041358_list_070.jpg) center no-repeat; background-size:cover; height:305px;"></div>
								<div class="div_product_text">
									<p class="product_title">한일 이지필 글라스 가열식 가습기 3.5L HGSP-3500R</p>
									<p class="product_price">219,000<small>원</small></p>
									<p class="product_star">
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<span>(1)</span>
									</p>
								</div>
							</a>
						</div>
					</div>
					<div id="div_store_body">
						<div class="div_product">
							<a href="#">
								<div class="div_product_img" style="background:url(https://recipe1.ezmember.co.kr/cache/data/goods/22/09/38/1000030593/1000030593_list_032.jpg) center no-repeat; background-size:cover; height:305px;"></div>
								<div class="div_product_text">
									<p class="product_title">[단독특가] 슈맥스 100% 그래핀 탄소매트(국내최초 그래핀 원단 사용/전자파,라돈 불검출/EMF 인증)</p>
									<p class="product_price">99,000<small>원</small></p>
									<p class="product_star">
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2.png"/>
										<span>(14)</span>
									</p>
								</div>
							</a>
						</div>
					</div>
					<div id="div_store_body">
						<div class="div_product">
							<a href="#">
								<div class="div_product_img" style="background:url(https://recipe1.ezmember.co.kr/cache/data/goods/23/06/24/1000037511/1000037511_list_028.jpg) center no-repeat; background-size:cover; height:305px;"></div>
								<div class="div_product_text">
									<p class="product_title">필립스 전기면도기 S5000시리즈 쉐이브앤고 S5466/17</p>
									<p class="product_price">82,000<small>원</small></p>
									<p class="product_star">
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2.png"/>
										<span>(17)</span>
									</p>
								</div>
							</a>
						</div>
					</div>
					<div id="div_store_body">
						<div class="div_product">
							<a href="#">
								<div class="div_product_img" style="background:url(https://recipe1.ezmember.co.kr/cache/data/goods/23/11/46/1000041438/1000041438_list_032.jpg) center no-repeat; background-size:cover; height:305px;"></div>
								<div class="div_product_text">
									<p class="product_title">트루쿡 국내생산 IH 세라믹 인덕션 후라이팬&냄비 쿡웨어 모음전</p>
									<p class="product_price">19,900<small>원</small></p>
									<p class="product_star">
									</p>
								</div>
							</a>
						</div>
					</div>
					<div id="div_store_body">
						<div class="div_product">
							<a href="#">
								<div class="div_product_img" style="background:url(https://recipe1.ezmember.co.kr/cache/data/goods/21/09/36/1000022698/1000022698_list_010.jpg) center no-repeat; background-size:cover; height:305px;"></div>
								<div class="div_product_text">
									<p class="product_title">[케어팟] 스테인리스 초음파 가습기 4L MS031S2</p>
									<p class="product_price">149,000<small>원</small></p>
									<p class="product_star">
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2.png"/>
										<span>(32)</span>
									</p>
								</div>
							</a>
						</div>
					</div>
					<div id="div_store_body">
						<div class="div_product">
							<a href="#">
								<div class="div_product_img" style="background:url(https://recipe1.ezmember.co.kr/cache/data/goods/21/02/08/1000016877/1000016877_list_070.jpg) center no-repeat; background-size:cover; height:305px;"></div>
								<div class="div_product_text">
									<p class="product_title">몽블랑 에펠 커트러리 모음전 (5color)</p>
									<p class="product_price">2,900<small>원</small></p>
									<p class="product_star">
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png"/>
										<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2.png"/>
										<span>(18)</span>
									</p>
								</div>
							</a>
						</div>
					</div>
					<div id="div_store_more">
						<button type="button" id="store_more_button">더보기 +</button>
					</div>
				</div>
			</div>
		</div>
		<div style="border-top: 1px solid #e6e6e6; clear:both;"></div>
<!-- /스토어 베스트상품 -->
	</div>
<!------------ body ------------>
<!-- 페이지 하단 최근 본 레시피 -->
	<div id="div_recent_recipe_panel">
		<div id="div_recent_recipe_content">
			<h3>최근 본 레시피</h3>
			<div id="div_recent_recipe_body">
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2019/04/14/67b39b7159fa14c51042fe0674e7399f1_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>기름 없이 볶아 다이어트에 좋은 중국식 청경채 돼지...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2018/09/30/16fc5e69d9c7624353361f4a65f4752a1_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>실패는없다!백종원 냉국레시피!...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2018/10/07/da4e0452ac3bd20bb0528f4abc1211881_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>꿀마늘 닭강정(아이들 단골메뉴 찜♡♡)...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2019/01/22/209d1b0860d71c45978f804721f107f71_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>아이들이 좋아하는 초간단 간식, 퐁크러쉬 쉐이크 레...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2019/05/21/52ec68320e673157a36e0bdce94f89561_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>에어프라이어 소시지 피자...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2015/05/05/f898a7e9e03e179c2c6b7ad65fd946321_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>차돌박이 파스타 </div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2019/04/14/67b39b7159fa14c51042fe0674e7399f1_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>기름 없이 볶아 다이어트에 좋은 중국식 청경채 돼지...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2018/09/30/16fc5e69d9c7624353361f4a65f4752a1_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>실패는없다!백종원 냉국레시피!...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2018/10/07/da4e0452ac3bd20bb0528f4abc1211881_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>꿀마늘 닭강정(아이들 단골메뉴 찜♡♡)...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2019/01/22/209d1b0860d71c45978f804721f107f71_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>아이들이 좋아하는 초간단 간식, 퐁크러쉬 쉐이크 레...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2019/05/21/52ec68320e673157a36e0bdce94f89561_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>에어프라이어 소시지 피자...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2015/05/05/f898a7e9e03e179c2c6b7ad65fd946321_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>차돌박이 파스타 </div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2019/04/14/67b39b7159fa14c51042fe0674e7399f1_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>기름 없이 볶아 다이어트에 좋은 중국식 청경채 돼지...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2018/09/30/16fc5e69d9c7624353361f4a65f4752a1_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>실패는없다!백종원 냉국레시피!...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2018/10/07/da4e0452ac3bd20bb0528f4abc1211881_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>꿀마늘 닭강정(아이들 단골메뉴 찜♡♡)...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2019/01/22/209d1b0860d71c45978f804721f107f71_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>아이들이 좋아하는 초간단 간식, 퐁크러쉬 쉐이크 레...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2019/05/21/52ec68320e673157a36e0bdce94f89561_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>에어프라이어 소시지 피자...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2015/05/05/f898a7e9e03e179c2c6b7ad65fd946321_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>차돌박이 파스타 </div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2019/04/14/67b39b7159fa14c51042fe0674e7399f1_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>기름 없이 볶아 다이어트에 좋은 중국식 청경채 돼지...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2018/09/30/16fc5e69d9c7624353361f4a65f4752a1_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>실패는없다!백종원 냉국레시피!...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2018/10/07/da4e0452ac3bd20bb0528f4abc1211881_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>꿀마늘 닭강정(아이들 단골메뉴 찜♡♡)...</div>
						</div>
					</a>
				</div>
				<div class="recent_recipe">
					<a class="rr_recipe_thumbnail">
						<img src="https://recipe1.ezmember.co.kr/cache/recipe/2019/01/22/209d1b0860d71c45978f804721f107f71_m.jpg" class="rr_recipe_thumbnail_img"/>
						<div class="rr_recipe_title">
							<div>아이들이 좋아하는 초간단 간식, 퐁크러쉬 쉐이크 레...</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
<!-- /페이지 하단 최근 본 레시피 -->
<!-- footer 흰색배경부분 -->
	<div id="footer1">
		<div id="footer1_panel">
			<div id="footer1_content1">
				<p class="f_content1_link">
					<a>회사소개</a>
					<span>|</span>
					<a>광고문의</a>
					<span>|</span>
					<a>개인정보처리방침</a>
					<span>|</span>
					<a>이용약관</a>
					<span>|</span>
					<a>고객센터</a>
				</p>
				<p class="f_content1_info">
					대표 : 이인경 / E : help@10000recipe.com / F : 02) 323-5049 <br/>
					서울 금천구 가산동 371-50 에이스하이엔드타워 3차 1106-1호 <br/>
					문의전화(운영시간 평일 10:00~18:00)<br/>
					쇼핑문의(만개스토어) : 02-6953-4433<br/>
					서비스 이용문의 : 070-4896-6416 
				</p>
				<p class="f_content1_info">
					(주)만개의레시피 / 사업자등록번호 291-81-02485 / 통신판매업신고 2022-서울금천-3089 / 벤처기업확인 / <a href="#" target="_self" style="color:#999; font-size:13px">사업자정보확인</a> <br>
					서울지방중소기업청 제 031134233-1-01643호
				</p>
				<p class="f_content1_info">
					Copyright <b style="font-size:13px;">만개의레시피</b> Inc. All Rights Reserved
				</p>
			</div>
			<div id="footer1_content2">
				<a id="app_download">
					<img src="https://recipe1.ezmember.co.kr/img/btm_app2.gif" alt="app다운로드"/>
				</a>
				<div id="banner_sns">
					<a>
						<img src="https://recipe1.ezmember.co.kr/img/btm_sns_1.gif" alt="페이스북"/>
					</a>
					<a>
						<img src="https://recipe1.ezmember.co.kr/img/btm_sns_2.gif" alt="인스타그램"/>
					</a>
					<a>
						<img src="https://recipe1.ezmember.co.kr/img/btm_sns_3.gif" alt="유튜브"/>
					</a>
					<a>
						<img src="https://recipe1.ezmember.co.kr/img/btm_sns_4_1.gif" alt="네이버블로그"/>
					</a>
					<a>
						<img src="https://recipe1.ezmember.co.kr/img/btm_sns_5.gif" alt="네이버포스트"/>
					</a>
					<a>
						<img src="https://recipe1.ezmember.co.kr/img/btm_sns_6.gif" alt="카카오TV"/>
					</a>
					<a>
						<img src="https://recipe1.ezmember.co.kr/img/btm_sns_7.gif" alt="카카오스토리"/>
					</a>
				</div>
			</div>
			<div id="footer1_content3">
				<textarea id="f_customer_send" name="cs_txt" placeholder="불편사항이나 제안사항이 있으신가요?
만개의레시피에 전하고 싶은 의견을 남겨주세요."></textarea>
				<button type="button" id="f_send_cs_button">의견제출</button>
				<p id="f_cs_notice">
					개별회신을 원하시면 <a href="#" style="text-decoration:underline; color:#666; font-size:13px">여기</a>에 문의하세요.
				</p>
			</div>
		</div>
	</div>
<!-- /footer 흰색배경부분 -->
<!-- footer 녹색배경부분 -->
	<div id="footer2">
		<div id="footer2_panel">
			<div id="f2_logo">
				<img src="https://recipe1.ezmember.co.kr/img/logo6.png"/>
			</div>
			<div id="f2_all_count">
				<div class="div_count_box">
					<a href="#">
						<span style="background: url(//recipe1.ezmember.co.kr/img/btm_icon1.png) center no-repeat;"></span>
						제휴업체수
					</a>
					<b>575</b>
				</div>
				<div class="div_count_box">
					<a href="#">
						<span style="background: url(//recipe1.ezmember.co.kr/img/btm_icon2.png) center no-repeat;"></span>
						총 쉐프수
					</a>
					<b>3,970</b>
				</div>
				<div class="div_count_box">
					<a href="#">
						<span style="background: url(//recipe1.ezmember.co.kr/img/btm_icon3.png) center no-repeat;"></span>
						총 레시피수
					</a>
					<b>210,881</b>
				</div>
				<div class="div_count_box">
					<a>
						<span style="background: url(//recipe1.ezmember.co.kr/img/btm_icon4.png) center no-repeat;"></span>
						월 방문자수
					</a>
					<b>5,140,000</b>
				</div>
				<div class="div_count_box">
					<a>
						<span style="background: url(//recipe1.ezmember.co.kr/img/btm_icon5.png) center no-repeat;"></span>
						총 레시피 조회수
					</a>
					<b>2,875,362,521</b>
				</div>
			</div>
			<div id="f2_send_mail">
				<a>
					<img src="https://recipe1.ezmember.co.kr/img/btm_img2.png"/>
				</a>
			</div>
		</div>
<!-- /footer 녹색배경부분 -->
<!-- 페이지 최하단 since -->
		<div id="footer2_Since">
			<img src="https://recipe1.ezmember.co.kr/img/btm_since.png"/>
		</div>
	</div>
<!-- /페이지 최하단 since -->

<!-- slider -->
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script src="slick-jw/slick_jw.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(function() {
			$("#div_recent_recipe_body").slick({
				infinite: false,
				slidesToShow: 6,
				slidesToScroll: 6
			});
		})
	</script>
<!------------ footer ------------>
</body>
</html>