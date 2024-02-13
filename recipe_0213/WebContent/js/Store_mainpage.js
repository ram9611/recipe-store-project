$(function(){
	
	$('.event').slick({ // 이벤트 화면 슬릭 
		dots: true,
		autoplay: true,
		autoplaySpeed: 3000,
	});
	
	$('.goods_cont3').slick({ // 3개 상품 화면 슬릭
		infinite: true,
  		slidesToShow: 3,
  		slidesToScroll: 3
	});
	
	$('.goods_cont4').slick({ // 4개 상품 화면 슬릭
		infinite: true,
  		slidesToShow: 4,
  		slidesToScroll: 4
  		
	});
	
	$('.hot_deal_cont1').click(function(){ // 핫딜 상품 클릭 이벤트, 클릭시 해당 상품 번호와 함께 상품 상세 페이지 이동 command 서버에 전달
		let product_id = Number($(this).children('.product_id').val());
		location.href="Controller?command=store_goodsDetail&product_id="+product_id;
	})
	
	$('.goods_cont_section').click(function(){//상품 클릭 이벤트, 클릭시 해당 상품 번호와 함께 상품 상세 페이지 이동 command 서버에 전달
		let product_id = $(this).children('.product_id').val();
		location.href="Controller?command=store_goodsDetail&product_id="+product_id;
	})
	
})