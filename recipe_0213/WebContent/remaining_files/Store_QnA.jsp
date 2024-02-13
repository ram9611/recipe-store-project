<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- 만개스토어 1:1문의 게시글 페이지(돋보기 이미지 자꾸 엑박뜸) -->
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="Store_CSS/Store_Header.css" type="text/css"/>
	<link rel="stylesheet" href="Store_CSS/Store_Footer.css" type="text/css"/>
	<link rel="stylesheet" href="Store_CSS/Store_Right_Scroll.css" type="text/css"/>
	<link rel="stylesheet" href="Store_CSS/Store_QnA.css" type="text/css"/>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/scroll_fixed.js"></script>
</head>
<body>
	<div class="header_top">
		<div class="header_top_cont">
			<div class="logo">
				<img src = "https://recipe1.ezmember.co.kr/img/store/logo_store.png"/>
			</div>
			<ul class="first_nav">
				<li><a href="#">로그인</a></li>
				<li><a href="#">회원가입</a></li>
				<li><a href="#">마이페이지</a></li>
				<li><a href="#">장바구니</a></li>
				<li><a href="#">고객센터</a></li>
			</ul>
		</div>
	</div>
	<div class="header_mn">
		<div class="header_mn_cont">
			<div class="total_category">
				<div class="private">
					<a href="#"><img src = 'https://recipe1.ezmember.co.kr/img/store/icon_cate_all.png'/></a>
				</div>
				<a href="#">전체카테고리</a>
			</div>
			<ul>
				<li><a href="#">스토어홈</a></li>	
				<li><a href="#">베스트</a></li>	
				<li><a href="#">핫딜</a></li>	
				<li><a href="#">신상</a></li>	
				<li><a href="#">기획전</a></li>	
				<li><a href="#">브랜드</a></li>	
			</ul>
			<div class="recipe">
				<img src = "https://recipe1.ezmember.co.kr/img/store/logo_rcp.png"/>
			</div>
			<div class="search">
				<form>
					<span></span>
					<input type="text" placeholder="상품 검색">
				</form>
				<div class="dbg">
					<img src = "https://recipe1.ezmember.co.kr/img/mobile/icon_search6.png"/>
				</div>
			</div>
			<div class="cart">
				<img src = "https://recipe1.ezmember.co.kr/img/mobile/icon_cart3.png"/>
			</div>
		</div>
	</div>
	<div class="main_cont_wrap">
		<div id="div_store_location_wrap">
			<div id="div_store_location_content">
				<span>
					<a href="#">HOME</a>
					> 1:1문의하기
				</span>
			</div>
		</div>
		<div id="div_store_cs">
			<div id="div_store_cs_panel">
				<div id="div_store_cs_header">
					<h2>1:1문의</h2>
					<button>1:1 문의하기</button>
				</div>
				<div id="div_store_cs_body">
					<div id="div_store_cs_date_sort">
						<form>
							<span>조회기간</span>
							<div id="div_date_button">
								<button type="button" date-value="0">오늘</button>
								<button type="button" date-value="7">7일</button>
								<button type="button" date-value="15">15일</button>
								<button type="button" date-value="30">1개월</button>
								<button type="button" date-value="90">3개월</button>
								<button type="button" date-value="365">1년</button>
							</div>
							<div id="div_calendar">
								<input type="date" id="cs_range_date1" value="2023-11-28"/>
								~
								<input type="date" id="cs_range_date2" value="2023-12-04"/>
							</div>
							<div id="div_sort_button">
								<button type="submit">
									조회
									<img src="https://shop.10000recipe.com/data/skin/front/moment/img/common/btn/btn_goods_search.png"/>
								</button>
							</div>
						</form>
					</div>
					<div id="div_store_cs_content">
						<table id="table_board_list">
							<colgroup>
								<col style="width:10%;"/>
								<col style="width:15%;"/>
								<col/>
								<col style="width:10%;"/>
								<col style="width:10%;"/>
							</colgroup>
							<thead>
								<tr>
									<td>문의날짜</td>
									<td>카테고리</td>
									<td>제목</td>
									<td>문의상태</td>
									<td>답변시간</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>09:39</td>
									<td></td>
									<td class="cs_board_title">
										<a href="#">
											<img src="https://shoptr3131.cdn-nhncommerce.com/data/skin/front/moment/board/skin/qa/img/icon/icon_board_secret.png"/>
											test
											<img src="https://shoptr3131.cdn-nhncommerce.com/data/skin/front/moment/board/skin/qa/img/icon/icon_board_new.png" alt="신규등록"/>
										</a>
									</td>
									<td>접수</td>
									<td>0000-00-00</td>
								</tr>
								<tr>
									<td>09:38</td>
									<td></td>
									<td class="cs_board_title">
										<a href="#">
											<img src="https://shoptr3131.cdn-nhncommerce.com/data/skin/front/moment/board/skin/qa/img/icon/icon_board_secret.png"/>
											test
											<img src="https://shoptr3131.cdn-nhncommerce.com/data/skin/front/moment/board/skin/qa/img/icon/icon_board_new.png" alt="신규등록"/>
										</a>
									</td>
									<td>답변완료</td>
									<td>11:28</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div id="div_cs_store_page_panel">
						<div id="div_cs_store_page_bundle">
							<div class="div_cs_store_page_button">
								<a href="#" class="button_active">1</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class = "scroll_right">
			<div class="scroll_right_cont">
				<h5>최근 본 상품</h5>
				<ul class="scroll_right_cont_img">
					<a href="#">
						<li>
							<figure>
								<img src = 'https://recipe1.ezmember.co.kr/cache/data/goods/23/11/47/1000041934/1000041934_list_037.jpg'/>
							</figure>
						</li>
					</a>
					<a href="#">
						<li>
							<figure>
								<img src = 'https://recipe1.ezmember.co.kr/cache/data/goods/23/10/41/1000040809/1000040809_list_022.jpg'/>
							</figure>
						</li>
					</a>
					<a href="#">
						<li>
							<figure>
								<img src = 'https://recipe1.ezmember.co.kr/cache/data/goods/20/06/24/1000008521/1000008521_list_036.jpg'/>
							</figure>
						</li>
					</a>
					<a href="#">
						<li>
							<figure>
								<img src = 'https://recipe1.ezmember.co.kr/cache/data/goods/23/06/24/1000037511/1000037511_list_028.jpg'/>
							</figure>
						</li>
					</a>
					<a href="#">
						<li>
							<figure>
								<img src = 'https://recipe1.ezmember.co.kr/cache/data/goods/23/11/46/1000041438/1000041438_list_032.jpg'/>
							</figure>
						</li>
					</a>
				</ul>
				<div class="scroll_right_cont_paging">
						<button type="button"><img src = 'https://shoptr3131.cdn-nhncommerce.com/data/skin/front/moment/img/common/btn/btn_scroll_prev.png'/></button>
						<span>1/2</span>
						<button type="button"><img src = 'https://shoptr3131.cdn-nhncommerce.com/data/skin/front/moment/img/common/btn/btn_scroll_next.png'/></button>
				</div>
			</div>
			<div class="scroll_right_top">
				<a href="#">
					<figure>
						<img src ='https://shoptr3131.cdn-nhncommerce.com/data/skin/front/moment/img/common/btn/btn_scroll_top.png'/>
					</figure>
				</a>
			</div>
		</div>
	</div>
	<div class="main_foot_cs">
		<div class="main_foot_cs_cont">
			<div class="main_foot_cs_cont_left">
				<div class="cc">고객센터</div>
				<b class="number">02-0000-0000</b>
				<div class="kakao_cc">
					<a href="#"><figure>
						<img src = "https://recipe1.ezmember.co.kr/img/mobile/2022/icon_sns_k2.png"/>
					</figure></a>
					<a href="#"><span>상담하기</span></a>
				</div>
				<a href="#">[전화상담 일시 중단 안내]</a>
				<span>
					<br>
					평일  10:00~17:00<br>
					점심시간 : 12:30~13:30<br>
					공휴일 및 주말은 휴무
				</span>
			</div>
			<div class="main_foot_cs_cont_right">
				<ul class="main_foot_link">
					<a href="#"><li>회사소개</li></a>
					<a href="#"><li>이용약관</li></a>
					<a href="#"><li>개인정보처리방침</li></a>
					<a href="#"><li>이용안내</li></a>
					<a href="#"><li>광고/제휴 문의</li></a>
				</ul>
				<div class="main_foot_info">
					(주)만개의레시피 서울특별시 금천구 가산디지털1로 145 (에이스하이엔드타워3차) 1106호<br>
					대표 : 이인경 사업자등록번호 : 291-81-02485 통신판매업신고번호 : 2022-서울금천-3089 개인정보관리자 : 이창득<br>
					대표번호 : 070-4896-6416 팩스번호 : 02-323-5049 메일 : help@10000recipe.com 호스팅제공 : 엔에이치엔커머스(주)<br>
					<br><br>
					㈜만개의레시피가 운영하는 만개스토어는 통신판매중개자로서 거래의 당사자가 아니며,<br>
					입점 판매자가 등록한 상품정보 및 거래에 대한 책임을 일체 지지 않습니다.
					<br><br>
					Copyright 만개의레시피 Inc. All Rights Reserved.
				</div>
			</div>		
		</div>
	</div>
</body>
</html>