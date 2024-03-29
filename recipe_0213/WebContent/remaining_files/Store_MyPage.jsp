<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- 만개스토어 마이페이지 -->
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="Store_CSS/Store_MyPage.css" type="text/css"/>
	<link rel="stylesheet" href="Store_CSS/Store_Header.css" type="text/css"/>
	<link rel="stylesheet" href="Store_CSS/Store_Footer.css" type="text/css"/>
	<link rel="stylesheet" href="Store_CSS/Store_Right_Scroll.css" type="text/css"/>
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
					> 마이페이지
				</span>
			</div>
		</div>
		<div id="div_mypage">
			<div id="div_mypage_left">
				<div id="div_mypage_side">
					<h2>마이페이지</h2>
					<ul id="ul_mypage_menu">
						<li>
							<div class="div_small_line"></div>
							쇼핑정보
							<ul class="mypage_menu_depth1">
								<li>
									<a href="#">- 주문목록/배송조회</a>
								</li>
								<li>
									<a href="#">- 취소/반품/교환 내역</a>
								</li>
								<li>
									<a href="#">- 환불/입금 내역</a>
								</li>
								<li>
									<a href="#">- 찜리스트</a>
								</li>
							</ul>
						</li>
						<li>
							<div class="div_small_line"></div>
							혜택관리
							<ul class="mypage_menu_depth1">
								<li>
									<a href="#">- 적립금</a>
								</li>
							</ul>
						</li>
						<li>
							<div class="div_small_line"></div>
							회원정보
							<ul class="mypage_menu_depth1">
								<li>
									<a href="#">- 회원정보수정</a>
								</li>
								<li>
									<a href="#">- 배송지 관리</a>
								</li>
							</ul>
						</li>
						<li>
							<div class="div_small_line"></div>
							나의 상품문의
							<ul class="mypage_menu_depth1">
								<li>
									<a href="#">- 나의 상품문의</a>
								</li>
							</ul>
						</li>
						<li>
							<div class="div_small_line"></div>
							나의 상품후기
							<ul class="mypage_menu_depth1">
								<li>
									<a href="#">- 나의 상품후기</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<div id="div_mypage_right">
				<div id="div_mypage_main">
					<div id="div_mypage_top">
						<div id="div_mypage_top_left">
							<div id="div_mypage_top_text">
								<p>
									<span class="user_name">이진우</span>님의
								</p>
								<p>현재 적립금 입니다.</p>
							</div>
						</div>
						<div id="div_mypage_top_right">
							<ul>
								<li>
									<div>
										<img src="https://shoptr3131.cdn-nhncommerce.com/data/skin/front/moment/img/icon/mypage/icon_mileage.png"/>
									</div>
									<div>
										<em>적립금</em>
										<a href="#">
											<strong class="reserves_money">0</strong>
										</a>
										원
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div id="div_mypage_order">
						<div class="div_mypage_title">
							<h3>
								진행 중인 주문
								<span>최근 30일 내에 진행중인 주문정보입니다.</span>
							</h3>
						</div>
						<div id="div_mypage_order_content">
							<ul>
								<li class>
									<b>입금대기</b>
									<strong>0</strong>
								</li>
								<li class>
									<b>결제완료</b>
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
									  <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
									</svg>
									<strong>0</strong>
								</li>
								<li class>
									<b>상품준비중</b>
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
									  <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
									</svg>
									<strong>0</strong>
								</li>
								<li class>
									<b>배송중</b>
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
									  <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
									</svg>
									<strong>0</strong>
								</li>
								<li class>
									<b>배송완료</b>
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
									  <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
									</svg>
									<strong>0</strong>
								</li>
								<li class>
									<b>구매확정</b>
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
									  <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
									</svg>
									<strong>0</strong>
								</li>
							</ul>
							<div id="div_mypage_order_case">
								<ul>
									<li>
										<b>• 취소</b>
										<span>0건</span>
									</li>
									<li>
										<b>• 교환</b>
										<span>0건</span>
									</li>
									<li>
										<b>• 반품</b>
										<span>0건</span>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div id="div_mypage_recent_order">
						<div class="div_mypage_title">
							<h3>
								최근 주문 정보
								<span>최근 30일 내에 진행중인 주문정보입니다.</span>
							</h3>
							<a href="#" class="a_btn_more">+ 더보기</a>
						</div>
						<div id="div_mypage_recent_order_content">
							<table id="table_recent_order">
								<colgroup>
									<col style="width:15%;"/>
									<col style=""/>
									<col style="width:15%;"/>
									<col style="width:15%;"/>
									<col style="width:15%;"/>
								</colgroup>
								<thead>
									<tr>
										<th>날짜/주문정보</th>
										<th>상품명/옵션</th>
										<th>상품금액/수량</th>
										<th>주문상태</th>
										<th>확인/리뷰</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="order_day_num">
											<em>2023/10/11</em>
											<a href="#" class="order_num_link">
												<span>2310111742014146</span>
											</a>
										</td>
										<td class="goods_title_option">
											<div class="goods_info">
												<div class="goods_thumbnail">
													<a href="#">
														<img src="https://shoptr3131.cdn-nhncommerce.com/data/goods/22/12/50/1000032402/1000032402_list_042.jpg"/>
													</a>
												</div>
												<div class="goods_text">
													<a href="#">
														<em>4BNK 스텐 304 펀칭 배수구망+커버/음식물 쓰레기 수거함 골라담기</em>
													</a>
													<span>선택 : 01.배수구망+커버 SET_1307954</span>
												</div>
											</div>
										</td>
										<td class="goods_price_qty">
											<strong>9,900원</strong>
											 / 1개
										</td>
										<td class="goods_order_status">
											<em>구매확정</em>
											<div class="goods_order_button">
												(택배) - 
												<a href="#" class="delivery_trace_button">
													<span>배송추적</span>
												</a>
											</div>
										</td>
										<td class="goods_confirm">
											<div class="confirm_button">
												<a href="#" class="review_update_button">
													<em>후기수정</em>
												</a>
											</div>
										</td>
									</tr>
									<tr>
										<td class="order_day_num">
											<em>2023/10/11</em>
											<a href="#" class="order_num_link">
												<span>2310111539308368</span>
											</a>
										</td>
										<td class="goods_title_option">
											<div class="goods_info">
												<div class="goods_thumbnail">
													<a href="#">
														<img src="	https://shoptr3131.cdn-nhncommerce.com/data/goods/23/09/39/1000040657/1000040657_list_056.jpg"/>
													</a>
												</div>
												<div class="goods_text">
													<a href="#">
														<em>2023 수분가득 달콤한 태추단감 배단감 4kg/2kg/1kg (중량별 추가할인)</em>
													</a>
													<span>옵션 : [30%할인] 태추단감 로얄과 4kg내외 (16-22과) (+37,000원)</span>
												</div>
											</div>
										</td>
										<td class="goods_price_qty">
											<strong>99,800원</strong>
											 / 2개
										</td>
										<td class="goods_order_status">
											<em>환불완료</em>
											<div class="goods_order_button">
												(택배)
											</div>
										</td>
										<td class="goods_confirm">
											<div class="confirm_button">
												<a href="#" class="refund_reason_button">
													<em>환불사유</em>
												</a>
											</div>
										</td>
									</tr>
									<tr>
										<td class="order_day_num">
											<em>2023/10/11</em>
											<a href="#" class="order_num_link">
												<span>2310111539308368</span>
											</a>
										</td>
										<td class="goods_title_option">
											<div class="goods_info">
												<div class="goods_thumbnail">
													<a href="#">
														<img src="	https://shoptr3131.cdn-nhncommerce.com/data/goods/23/09/39/1000040657/1000040657_list_056.jpg"/>
													</a>
												</div>
												<div class="goods_text">
													<a href="#">
														<em>2023 수분가득 달콤한 태추단감 배단감 4kg/2kg/1kg (중량별 추가할인)</em>
													</a>
													<span>옵션 : [30%할인] 태추단감 로얄과 4kg내외 (16-22과) (+37,000원)</span>
												</div>
											</div>
										</td>
										<td class="goods_price_qty">
											<strong>99,800원</strong>
											 / 2개
										</td>
										<td class="goods_order_status">
											<em>고객결제중단</em>
											<div class="goods_order_button">
												(택배)
											</div>
										</td>
										<td class="goods_confirm">
											<div class="confirm_button">
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div id="div_mypage_recent_goods">
						<div class="div_mypage_title">
							<h3>
								최근 본 상품
								<span>
									<span class="user_name">이진우</span>님께서 본 최근 상품입니다.
								</span>
							</h3>
						</div>
						<div id="div_mypage_recent_goods_content">
							<ul>
								<li class="recent_goods_item">
									<a href="#">
										<div class="div_recent_goods_thumbnail">
											<img src="https://shoptr3131.cdn-nhncommerce.com/data/goods/22/09/39/1000030757/1000030757_main_090.jpg"/>
										</div>
										<div class="div_recent_goods_text">
											<div class="div_recent_goods_title">디베아  ALLNEW22000+ 차이슨 무선청소기최대 진공도 43000PA</div>
											<div class="div_recent_goods_price">
												<strong>
													<span>179,000</span>
													<small>원</small>
												</strong>
											</div>
										</div>
									</a>
								</li>
								<li class="recent_goods_item">
									<a href="#">
										<div class="div_recent_goods_thumbnail">
											<img src="https://shoptr3131.cdn-nhncommerce.com/data/goods/23/06/25/1000037664/1000037664_main_090.jpg"/>
										</div>
										<div class="div_recent_goods_text">
											<div class="div_recent_goods_title">[단독특가] 노비타 리모컨 강력방수 자동 살균비데 bd-730+필터2개증정</div>
											<div class="div_recent_goods_price">
												<strong>
													<span>245,000</span>
													<small>원</small>
												</strong>
											</div>
										</div>
									</a>
								</li>
								<li class="recent_goods_item">
									<a href="#">
										<div class="div_recent_goods_thumbnail">
											<img src="https://shoptr3131.cdn-nhncommerce.com/data/goods/23/10/41/1000040809/1000040809_main_031.jpg"/>
										</div>
										<div class="div_recent_goods_text">
											<div class="div_recent_goods_title">[15%할인쿠폰] 르젠 IH 인덕션 가열식 가습기 5세대 (LPL-IH600S / LPL-IH650S / LPL-IH650G)</div>
											<div class="div_recent_goods_price">
												<strong>
													<span>289,000</span>
													<small>원</small>
												</strong>
											</div>
										</div>
									</a>
								</li>
								<li class="recent_goods_item">
									<a href="#">
										<div class="div_recent_goods_thumbnail">
											<img src="https://shoptr3131.cdn-nhncommerce.com/data/goods/23/02/09/1000034404/1000034404_main_045.jpg"/>
										</div>
										<div class="div_recent_goods_text">
											<div class="div_recent_goods_title">Samsung 삼성 공기청정기 AX90T7020WBD</div>
											<div class="div_recent_goods_price">
												<strong>
													<span>499,000</span>
													<small>원</small>
												</strong>
											</div>
										</div>
									</a>
								</li>
							</ul>
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
								<img src = 'https://shoptr3131.cdn-nhncommerce.com/data/goods/22/09/39/1000030757/1000030757_main_090.jpg'/>
							</figure>
						</li>
					</a>
					<a href="#">
						<li>
							<figure>
								<img src = 'https://shoptr3131.cdn-nhncommerce.com/data/goods/23/06/25/1000037664/1000037664_main_090.jpg'/>
							</figure>
						</li>
					</a>
					<a href="#">
						<li>
							<figure>
								<img src = 'https://shoptr3131.cdn-nhncommerce.com/data/goods/23/10/41/1000040809/1000040809_main_031.jpg'/>
							</figure>
						</li>
					</a>
					<a href="#">
						<li>
							<figure>
								<img src = 'https://shoptr3131.cdn-nhncommerce.com/data/goods/23/02/09/1000034404/1000034404_main_045.jpg'/>
							</figure>
						</li>
					</a>
					<a href="#">
						<li>
							<figure>
								<img src = 'https://shoptr3131.cdn-nhncommerce.com/data/goods/23/05/22/1000037274/1000037274_main_018.jpg'/>
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