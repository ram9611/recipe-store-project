$(function(){
	$('.main_cont_goodsdetailfirst_left_slick').slick({
		slidesToShow: 5,
  		slidesToScroll: 1
	});
	
	$('.goodsdetail_slick').slick({
		slidesToShow: 4,
  		slidesToScroll: 4
	});
	
	const optqty = $('.main_cont_goodsdetailfirst_right_price_5_optqty')
	
	$('.slick_cont').click(function(){
		let img_src = $(this).find('.img').attr("src");
		let thumb_src =$(this).parents().find('#thumb_img').attr("src");
		$(this).parents().find('#thumb_img').attr('src',img_src);
	})
	
	//const opt_qty = '<li><div class="opt_name_wrap"><div class="opt_name">1. 삿뽀로 구루메 훗카이도 유바리 멜론카라멜 78g (0원)</div><div class="opt_btn"><button>X</button></div></div><div class="opt_qty_wrap"><div class="qty_price">5500원</div><div class="qty_btn"><div class="btn_wrap"><button>-</button><input value=1><button>+</button></div></div></div></li>';
	
	
	
	$('#select_opt').change(function(){ // 옵션 선택 이벤트
		let check = true;
		let name = $('option:selected').data("name"); // 옵션이름
		let price = Number($('option:selected').data("price")); // 옵션 가격
		let qty = $('option:selected').data("qty"); //옵션 수량
		let option = $('option:selected').data("option"); // 옵션ID
		
		
		
		$(this).parents().find('.ul_optqty li').each(function(index,item){ // li로 표시되는 옵션들 순차적으로 확인
			let li_name = $(item).find('.opt_name').text();
			if(name == li_name)
				check = false; // 이미 선택한 옵션이 또 선택된다면 false
		})
		if(check){ // 처음 선택되는 옵션이라면
			let opt_qty = '<li data-option="'+option+'"data-price='+price+'><div class="opt_name_wrap"><div class="opt_name">'+name+'</div><div class="opt_btn"><div class="close_btn"><button class="close">X</button></div></div></div><div class="opt_qty_wrap"><div class="qty_price">'+price+'원</div><div class="qty_btn"><div class="qty_btn_wrap"><button class="btn_qty_minus">-</button><input class="input_qty" value=1><button class="btn_qty_plus">+</button></div></div></div></li>';
			$('.main_cont_goodsdetailfirst_right_price_5_optqty>ul').append(opt_qty); // 새로운 li append 진행 
			$('.main_cont_goodsdetailfirst_right_price_5_totalprice').removeClass('remove'); // 총합 가격 보여주기
			
			let sum = 0;
			$(this).parents().find('.ul_optqty li').each(function(index,item){
				let price = Number($(item).data("price")); // 옵션 가격
				let qty = Number($(item).find('.input_qty').val()); // 선택한 옵션 수량
				sum = sum + price*qty; // 옵션가격* 옵션수량 계산하여 sum에 축적
				$('#total_price').text(sum); // 총가격 표시
			})
		}
		else{ // 선택된 옵션이라면
			alert("이미 선택한 옵션입니다");
		}
		
		$('option:first').prop('selected',true); 
		
		
		$('.close').click(function(){ // 표시된 옵션 li x 클릭 이벤트
			
			let sum = 0;
			$(this).parents().find('.ul_optqty li').each(function(index,item){ // 삭제전 총합 가격 계산
				let price = Number($(item).data("price"));
				let qty = Number($(item).find('.input_qty').val());
				sum = sum + price*qty; 
			})
			let li_price = Number($(this).parent().parent().parent().parent().data("price")); // 삭제 옵션 가격
			let li_qty = Number($(this).parent().parent().parent().parent().find('.input_qty').val()); // 삭제 옵션 수량
			$(this).parents().find('#total_price').text(sum-(li_price*li_qty));// 삭제전 총합 가격 - 삭제 옵션 계산 후 표시
			
			let check_price = $(this).parents().find('.total_price span').text(); // 계산 후 남은 가격
			
			if(check_price=='0원'){ // 계산 후 남은 가격 0이 된다면 총합 가격 표시 지우기
				$('.main_cont_goodsdetailfirst_right_price_5_totalprice').addClass('remove');
			}
			
			$(this).parent().parent().parent().parent().remove();
		
		
		})
		
	})
	
	$(document).on("click",".btn_qty_plus",function(event){ // append로 추가된 li 수량 플러스 버튼 클릭 이벤트
		
		let qty=Number($(this).parent().children('.input_qty').val()); // 현재 수량 파악
		qty = qty+1;
		$(this).parent().children('.input_qty').val(qty); // 현재 수량에서 +1 input에 입력
		
		let sum = 0;
		$(this).parents().find('.ul_optqty li').each(function(index,item){ // 총합 가격 계산
			let price = Number($(item).data("price"));
			let qty = Number($(item).find('.input_qty').val());
			sum = sum + price*qty;
			$('#total_price').text(sum);
		})
		
	})
	
	$(document).on("click",".btn_qty_minus",function(event){ // append로 추가된 li 마이너스 버튼 클릭 이벤트
		
		let qty=Number($(this).parent().children('.input_qty').val()); // 현재 수량 파악
		if(qty>=2){
			qty=qty-1;
			$(this).parent().children('.input_qty').val(qty); // 현재 수량에서 -1 input에 입력
		}
		
		let sum = 0;
		$(this).parents().find('.ul_optqty li').each(function(index,item){ // 총합 가격 계산
			let price = Number($(item).data("price"));
			let qty = Number($(item).find('.input_qty').val());
			sum = sum + price*qty;
			$('#total_price').text(sum);
		})
		
	})
	
	const bar = $('.main_cont_goodsdetailsecond');
	const barTop = bar.offset().top; // 상세화면 구분 bar top 위치
	
	const detailInfo = $('.main_cont_goodsdetailfour_line'); // 상세정보 위치
	const li_detailinfo = $('.li_detailinfo');
	const review = $('.main_cont_goodsdetailfour_review_title'); // 후기 위치
	const deli_refund = $('.deli_exchange_refund');
	$('.li_detailinfo').click(function(){// 상세 정보 클릭시
		let detailInfoTop = detailInfo.offset().top; 
		$('html').animate({scrollTop : detailInfoTop},500); // 상세 정보 위치로 이동
	})
	
	$('.li_review').click(function(){ // 후기 클릭시 이벤트
		let reviewTop = review.offset().top; 
		$('html').animate({scrollTop : reviewTop},500); // 후기 정보 위치로 이동
	})
	
	const li_deli_refund = $('.deli_exchange_refund');
	const li_deli_refund_cont = $('#deli_exchange_refund_cont');
	$('.li_refund').click(function(){ // 교환 환불 클릭시
		let deli_refundTop = deli_refund.offset().top;
		$('html').animate({scrollTop:deli_refundTop},500); // 교환 환불 위치로 이동
		
		li_deli_refund.find('.arrow').animate({
			rotate:"-90deg" // 화살표 에니메이션 효과
		},500);
		
		li_deli_refund_cont.slideDown(1000);
	})
	
	const qna = $('#qna');
	const qna_cont = $('#qna_cont')
	$('.li_inquir').click(function(){ // 문의 클릭시
		let qnaTop = qna.offset().top;
		$('html').animate({
			scrollTop:qnaTop // 문의 위치로 이동
		},500);
		qna.find('.arrow').animate({
			rotate:"-90deg" // 화살표 애니메이션 효과
		},500)
		qna_cont.slideDown(1000);
	})
	
	$(window).scroll(function(){
		
		let windowTop = $(this).scrollTop(); // 현위치
		let detailInfoTop = detailInfo.offset().top; 
		let reviewTop = review.offset().top;
		
		if(windowTop>=barTop){ // 현위치가 상세화면 구분 bar 위치를 넘게 된다면
			bar.addClass('is_fixed')}else if(windowTop<=barTop){
				bar.removeClass('is_fixed')
			}
			
		if(windowTop>=detailInfoTop && windowTop<=reviewTop){
			li_detailinfo.addClass('is_emphasized')}else if(windowTop<=detailinfoTop || windowTop>=reviewTop){
				li_detailinfo.removeClass('is_emphasized')
			} // 상세 화면 구분 bar 위에 고정시키는 css 실행
			
		
		
		})
	
	$('.show_detailinfo').click(function(){ // 상세정보 더보기 클릭 이벤트
		
		$(this).parents().find('.main_cont_goodsdetailthird_img').addClass('main_cont_goodsdetailthird_img_detail');
		$(this).parents().find('.main_cont_goodsdetailthird_img').removeClass('main_cont_goodsdetailthird_img');
		$(this).parents().find('.main_cont_goodsdetailthird_detail_close').removeClass('remove');
		$(this).parents().find('.main_cont_goodsdetailthird_detail_show').addClass('remove');
		
	})
	
	$('.close_detailInfo').click(function(){ // 상세정보 닫기 클릭 이벤트
		$(this).parents().find('.main_cont_goodsdetailthird_img_detail').addClass('main_cont_goodsdetailthird_img');
		$(this).parents().find('.main_cont_goodsdetailthird_img_detail').removeClass('main_cont_goodsdetailthird_img_detail');
		$(this).parents().find('.main_cont_goodsdetailthird_detail_show').removeClass('remove');
		$(this).parents().find('.main_cont_goodsdetailthird_detail_close').addClass('remove');
	})
	
	const current_review = $('.current_review');
	const total_review = $('.total_review');
	$('.moreview_review').click(function(){ // 댓글 더보기 클릭 이벤트
		let current_review_value = Number($('.current_review').text());
		let total_review_value=Number(total_review.text());
		current_reivew_value = current_review_value+5;
		if(total_review_value-current_review_value>5)
			current_review.text(current_reivew_value);
		else if(total_review_value-current_review_value<5)
			current_review.text(total_review_value);
		
		
		
	})
	
	$('.goods_inform').click(function(){ // 상품정보 클릭 이벤트
		if($('.goods_inform_cont').css("display")=="none"){ // 상품정보 내용  display가 none 상태라면
			$(this).find('.arrow').animate({ // 화살표 돌아가는 애니메이션
				rotate:"-90deg"
			},500);
			$('.goods_inform_cont').slideDown(1000); // 상품정보 내용 보여주는 이벤트
			$(this).addClass('on');
		}else{ // 다시 원상태로 돌아가는 애니메이션 실행
			$(this).find('.arrow').animate({
				rotate:"0deg"
			},500);
			$('.goods_inform_cont').slideUp(1000);
			$(this).removeClass('on');
		}
	})
	
	$('.deli_exchange_refund').click(function(){
		if($('#deli_exchange_refund_cont').css("display") == "none") { //배송,환불,교환 내용 display가 none이라면
			$(this).find('.arrow').animate({
				rotate:"-90deg" // 화살표 애니메이션
			},500);
			$('#deli_exchange_refund_cont').slideDown(1000); // 내용보여주기
			$(this).addClass('on');
		} else { // 다시 원상태 돌아가는 애니메이션 실행
			$(this).find('.arrow').animate({
				rotate:"0deg"
			},500);
			$('#deli_exchange_refund_cont').slideUp(1000);
			$(this).removeClass('on');
		}
	});
	
	$('#qna').click(function(){ // 문의 내용 display 상태가 none 이라면
		if($('#qna_cont').css("display")=="none"){
			$(this).find('.arrow').animate({
				rotate:"-90deg" // 화살표 애니메이션
			},500);
			$('#qna_cont').slideDown(1000); // 내용 보여주기
			$(this).addClass('on');
		} else{ // 다시 원상태로 돌아가는 애니메이션 실행
			$(this).find('.arrow').animate({
				rotate:"0deg"
			},500);
			$('#qna_cont').slideUp(1000);
			$(this).removeClass('on');
		}
	})
	
	let rating = $('.rating');
	rating.each(function(){ 
		let $this = $(this);
		let targetScore = $this.attr('data-rate'); // 평점 
		let firstDigit = targetScore.split('.'); // 평점 소수점 기준으로 나눠서 배열만들기
		console.log(firstDigit);
		if(firstDigit.length>1){ // 만약 평점이 소수라면
			for(let i=0;i<firstDigit[0];i++){
				$this.find('.star').eq(i).css({width:'100%'}) // 소수점 위 정수만큼 별점 100% 출력
			}
			$this.find('.star').eq(firstDigit[0]).css({width:firstDigit[1]+"0%"}); //소수점 밑 소수 만큼 출력 
		}else{
			for(let i=0;i<targetScore;i++){ // 평점이 정수라면
				$this.find('.star').eq(i).css({width:'100%'}) //모든 별점 100%로 출력
			}
		}
	})
	

	const review_bg = $('.review_bg');
	const review_box = $('.review_box');
	const point = $('.main_cont_goodsdetailthird_detail_show');
	$('#btn_write_review').click(function(e){ // 후기 작성 버튼 클릭 이벤트
			let poinTop = $('.main_cont_goodsdetailfour_star').offset().top; // 후기 작성 버튼과 가까운 곳 설정
			review_box.css({
				'top': poinTop, // 설정한 곳으로 이동
				'display': 'flex' // 모달창 표시
			}).show();
		review_bg.removeClass('remove');
	})
	
	$('#btn_review_cancel').click(function(){ // 후기작성 모달창 x 클릭시
		review_box.css({
			display: 'none' // 모달창 없애기
		})
		review_bg.addClass('remove'); // 모달창 백그라운드 없애기
	})
	
})

function cart_unlogin(){ // 비회원 장바구니 클릭시 알람발생
	alert("로그인이 필요합니다.");
	location.href="Controller?command=login_form"; // 로그인창으로 이동
}
function cart_login(){ // 회원 장바구니 클릭시 
	let product_id = $('#input_productid').val(); // 상품 번호
	
	let optionArray = []; // 옵션 번호 배열
	let qtyArray = []; // 옵션 수량 배열
	
	$('.ul_optqty li').each(function(index,item){ // 선택된 옵션번호, 옵션수량 순차적으로 배열에 집어넣기
		let optionNum = $(item).data("option");
		let qty = Number($(item).find('.input_qty').val());
		optionArray.push(optionNum);
		qtyArray.push(qty);
		
	});
	if(optionArray.length>0){ // 선택된 옵션이 있다면
	$.ajax({ //ajax로 옵션번호 배열, 옵션 수량 배열, 상품 번호 서버에 전달
		type: 'post',
		dataType: 'json',
		traditional: true,
		data: {
			"optionList" : optionArray,
			"qtyList" : qtyArray,
			"productId" : product_id,
			"command" : "go_to_cart"
		},
		url: "Controller",
		success: function(data){
			alert(data.test);
			location.href="Controller?command=cart_detail_view"; // 성공시 장바구니 창으로 이동
		},
		error: function(request,status,error){
			alert("에러코드"+request.status);
		}
	});}else{ // 옵션이 선택되지 않았다면 알람 발생
		alert("옵션을 선택해주세요")
	}
}
function pay_unlogin(){ // 비회원 구매하기 클릭시 알람 발생
	alert("로그인이 필요합니다.");
	location.href="Controller?command=login_form";
}
function pay_login(){
	alert(1);
}