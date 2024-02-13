$(function(){
	
	$('#sum_qty').text(0); // 총합 수량 초기화
	$('#sum_total').text(0); // 총합 가격 초기화
	$('#sum_deli').text(0); // 총합 배송비 초기화
	$('#sum_reserves').text(0); // 총합 적립금 초기화
	$('#total_order').text(0); // 총합 가격+배송비 초기화
	$('input[type=checkbox][checked]').each(
		function(){ // 모든 체크박스 off로 초기화
			$(this).attr('checked',false);
		}
	);
	
	$('.tr_option .comma').each(function(index,item){ // 숫자 ,표시 
		let value = Number($(item).text());
		let value_after = addComma(value);
		$(item).text(value_after);
	})
	
	
	
	$('#all_cont').click(function(){ // 클릭시 전체 체크박스 클릭
		let check1 = $('#all_cont').is(':checked');
		if(check1){
			$('input:checkbox').prop('checked',true);
		}else{
			$('input:checkbox').prop('checked',false);
		}
		let check = $('.goods_check').is(':checked');
		
		
		
		if(check){ // 클릭 된다면
			let sum_reserves = 0;
			let sum_total = 0;
			let sum_deli = 0;
			let sum_qty = 0;
			$('.tr_option').each(function(index,item){
			
				let total = Number($(item).data("total")); // 옵션 가격
				let deli = Number($(item).data("deli")); // 옵션 배송비
				let qty = Number($(item).data("qty")); // 옵션 수량
				let reserves = Number($(item).data("reserves")); // 적립금
				sum_total = sum_total+total;
				sum_deli = sum_deli+deli;
				sum_qty  = sum_qty+qty;
				sum_reserves = sum_reserves+reserves;
				$('#sum_qty').text(sum_qty);
				$('#sum_total').text(sum_total);
				$('#sum_deli').text(sum_deli);
				$('#sum_reserves').text(sum_reserves);
				$('#total_order').text(sum_total+sum_deli); // 총합 상태 표시
			
				let total_value = Number($('#sum_total').text());
				let total_value_after = addComma(total_value);
				$('#sum_total').text(total_value_after);
			
				let deli_value = Number($('#sum_deli').text());
				let deli_value_after = addComma(deli_value);
				$('#sum_deli').text(deli_value_after);
				
				let reserves_value = Number($('#sum_reserves').text());
				let reserves_value_after = addComma(reserves_value);
				$('#sum_reserves').text(reserves_value_after);
				
				let order_value = Number($('#total_order').text());
				let order_value_after = addComma(order_value);
				$('#total_order').text(order_value_after); // 총합 상태들  콤마 찍기
				
			})
		}else{ // 전체 클릭 해제시 0으로 초기화
				$('#sum_qty').text(0);
				$('#sum_total').text(0);
				$('#sum_deli').text(0);
				$('#sum_reserves').text(0);
				$('#total_order').text(0);
		}
	})
	
	$('.goods_check').change(function(){ // 옵션 개별 클릭시 이벤트
		let check = $(this).is(':checked');
		
		let total = Number($(this).parent().parent().data("total")); // 선택한 옵션 가격
		let deli = Number($(this).parent().parent().data("deli")); // 선택한 옵션 배송비
		let qty = Number($(this).parent().parent().data("qty")); // 선택한 옵션 수량
		let reserves = Number($(this).parent().parent().data("reserves"));// 선택한 옵션 적립금
		
		let sum_total = Number($('#sum_total').text().replace(/[^\d]+/g, "")); 
		let sum_deli = Number($('#sum_deli').text().replace(/[^\d]+/g, ""));
		let sum_qty = Number($('#sum_qty').text().replace(/[^\d]+/g, ""));
		let sum_reserves = Number($('#sum_reserves').text().replace(/[^\d]+/g, ""));
		let total_order = Number($('#total_order').text().replace(/[^\d]+/g, "")); // 총합 상태들 콤마 해제
		
		if(check){ // 체크박스 on이라면 총합 상태에 선택한 옵션 정보들 추가
			$('#sum_total').text(total+sum_total);
			$('#sum_deli').text(deli+sum_deli);
			$('#sum_qty').text(qty+sum_qty);
			$('#sum_reserves').text(reserves+sum_reserves);
			$('#total_order').text(total_order+total+deli);
			
			
		}else{ // 체크박스 off 라면 총합 상태에서 선택한 옵션 정보들 빼기 진행
			$('#sum_total').text(sum_total-total);
			$('#sum_deli').text(sum_deli-deli);
			$('#sum_qty').text(sum_qty-qty);
			$('#sum_reserves').text(sum_reserves-reserves);
			$('#total_order').text(total_order-total-deli);
			
			
		}
		
			let total_value = Number($('#sum_total').text());
			let total_value_after = addComma(total_value);
			$('#sum_total').text(total_value_after);
		
			let deli_value = Number($('#sum_deli').text());
			let deli_value_after = addComma(deli_value);
			$('#sum_deli').text(deli_value_after);
			
			let reserves_value = Number($('#sum_reserves').text());
			let reserves_value_after = addComma(reserves_value);
			$('#sum_reserves').text(reserves_value_after);
			
			let order_value = Number($('#total_order').text());
			let order_value_after = addComma(order_value);
			$('#total_order').text(order_value_after); // 총합 상태들 콤마 찍기 진행
		
	})
	
	$('.a_option_qty').click(function(){ // 옵션 , 수량변경 클릭시 이벤트
		
		$('.option_optiondetail_wrap').css(
			"display","none"
		);
		
		const first_option = "<option>옵션을 선택해주세요 </option>";
		$('.select_option').html(first_option);
		
		let image = $(this).parent().parent().parent().find('.image').attr("src");
		$('#option_image').attr("src",image); // 선택한 옵션 이미지 모달창에 전달
		
		let name = $(this).parent().parent().parent().find('.good_opt_info2 a').text();
		$('#p_title').text(name); // 선택한 옵션 이름 모달창에 전달
		
		let product_id = $(this).parent().parent().parent().find('.input_productid').val();
		$('#productid_input').val(product_id); // 선택한 옵션 상품 번호 모달창에 전달
		$.ajax({ // 상품 번호 서버에 전달하여, 해당 상품 옵션 배열 받기
			type: 'post',
			dataType: 'json',
			data:{
				productId : product_id,
				command : "cart_get_update_option"
			},
			url: "Controller",
			success: function(data){
				console.log(data);
				for(let i=0;i<data.length;i++){
					let optionNum = data[i].optionNum // 옵션번호
					let optionContent = data[i].optionContent // 옵션 내용
					let optionPrice = data[i].optionPrice // 옵션 가격
					let optionQty = data[i].optionQty // 옵션 현재 수량
					
					let option = "<option data-num='"+optionNum+"' data-price="+optionPrice+" data-qty="+optionQty+" data-name='"+optionContent+"'>"+optionContent+" "+optionPrice+"(재고수량:"+optionQty+"개)</option>";
					$('.select_option').append(option); // 전달받은 옵션 정보들 append로 나타내기
				}
		},
		error: function(request,status,error){
			alert("에러코드:"+request.status)
		}
		})
		
		$('.option_box').css( // 모달창 표시
			"display","block"
		);
		$('.option_boxbg').css( // 모달창 백그라운드 표시
			"display","block"
		);
	})
	
	$('#option_btn_cancel').click(function(){ // 모달창 x 클릭 이벤트
		$('.option_box').css(
			"display","none" // 모달창 없애기
		);
		$('.option_boxbg').css(
			"display","none" // 모달창 백그라운드 없애기
		);
	})
	
	
	$('.select_option').change(function(){ //모달창 옵션 select 선택시 이벤트
		$('#qty_input').val(1);
		
		let option_num = $('option:selected').data("num"); // 옵션번호
		let name = $('option:selected').data("name"); // 옵션 내용
		let price = $('option:selected').data("price")+"원"; // 옵션 가격
		$('.option_optiondetail_wrap').css(
			"display","block"
		);
		$('.optiondetail_name').text(name);
		$('.optiondetail_price_cont').text(price);
		$('#optionnum_input').val(option_num);
		$('option:first').prop('selected',true);
	})
	
	$('#qty_btn_minus').click(function(){ //모달창 옵션 수량 플러스 입력 이벤트
		let qty = $('#qty_input').val();
		if(qty>1){
			qty = qty-1;
			$('#qty_input').val(qty);
		}
	})
	
	$('#qty_btn_plus').click(function(){ //모달창 옵션 수량 마이너스 이벤트
		let qty = Number($('#qty_input').val());
		qty = qty+1;
		$('#qty_input').val(qty);
	})
	
	$('.optiondetail_remove').click(function(){ // 선택된 옵션 x 버튼 클릭시 이벤트
		$('.option_optiondetail_wrap').css(
			"display","none"
		);
	})	
	
	$('.select_delete').click(function(){ //장바구니 선택 삭제 클릭시 이벤트
		
		let sum_total = Number($('#sum_total').text().replace(/[^\d]+/g, ""));
		let sum_deli = Number($('#sum_deli').text().replace(/[^\d]+/g, ""));
		let sum_qty = Number($('#sum_qty').text().replace(/[^\d]+/g, ""));
		let sum_reserves = Number($('#sum_reserves').text().replace(/[^\d]+/g, ""));
		let total_order = Number($('#total_order').text().replace(/[^\d]+/g, "")); // 총합 상태 콤마 없애기
		
		let count = 0; // 체크 확인 
		let optionList = []; // 옵션번호 받는 배열 선언
		$('.tr_option').each(function(index,item){ // 옵션들 순차적으로 확인
			let check = $(item).find('.goods_check').is(':checked');
			if(check){ // 체크박스 on이라면 옵션번호 옵션 배열에 저장
				
				count++;
				
				let option = $(item).data("option");
				optionList.push(option);
				
			}
		});
			if(count==0){ // count 0이라면 체크된 옵션들 없다고 판단 알람 발생
				alert("상품을 선택해주세요!");
			}else { // 체크된 옵션 있다면 서버로 옵션배열과 command 전달
				
				$.ajax({
					type: 'post',
					dataType: 'json',
					traditional: true,
					data: {
						"optionList" : optionList,
						"command": "cart_delete"
					},
					url: "Controller",
					success: function(data){
						alert(data.msg);
						location.href="Controller?command=cart_detail_view"; // 성공시 수정된 장바구니 정보로 다시 장바구니 화면 출력
					},
					error: function(request,status,error){
						alert("에러코드"+request.status);
					}
				});
				
			}
	});
	
	$('#select_order').click(function(){ // 선택 상품 주문 클릭 이벤트
		let optionNumList = [];
		let count = 0;
		$('.tr_option').each(function(index,item){ // 선택된 옵션들 optionNumList에 담겨서 서버에 전달
			let check = $(item).find('.goods_check').is(':checked');
			if(check){
				count++;
				let optionNum = $(item).find('.input_optionnum').val();
				optionNumList.push(optionNum);
			}
		})
		if(count==0){alert("상품을 선택해주세요");} // 선택된 옵션 없다면 알람 발생
		else{
			location.href="Controller?command=order_form&optionNumList="+optionNumList;
		}
	
	})
	
	$('#all_order').click(function(){ // 전체 상품 주문 클릭 이벤트
		let optionNumList = [];
		let count = 0;
		$('.tr_option').each(function(index,item){// 전체 옵션들 optionNumList에 담겨서 서버에 전달
			count++;
			let optionNum = $(item).find('.input_optionnum').val();
			optionNumList.push(optionNum);
		})
		if(count==0){alert("상품을 장바구니에 넣어주세요");} // 옵션 없다면 알람 발생
		else{
			location.href="Controller?command=order_form&optionNumList="+optionNumList;
		}
	})

})
function addComma(value){ // 콤마 발생 함수
	return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
