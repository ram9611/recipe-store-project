$(function(){
	
	let productIdList = [];
	
	let price = 0; // 총합 가격 초기화
	let delivery = 0; // 총합 배송비 초기화
	let reserves = 0; // 총합 적립금 초기화
	
	$('.tr_goods').each(function(index,item){ // 상품 정보 순차적으로 확인하여 결제 정보 구하기
		let check = true;
		let productId = $(item).data('productid');
		productIdList.push(productId);
		
		price = price + $(item).data('price');
		reserves = reserves + $(item).data('reserves');
		delivery = delivery + $(item).data('delivery');
		
		if(productIdList.length>2){
			for(let i=1;i<productIdList.length-1;i++){
				if(productId == productIdList[i]){
					delivery = delivery - $(item).data('delivery'); // 다른 상품 배송비만 더하기
					break;
					}
			}
		}
		 
	}); 
	console.log(productIdList);
	$('#span_price').text(price);
	$('#span_delivery').text(delivery);
	$('#span_reserves').text(reserves); 
	$('#span_total').text(price+delivery);// 확인된 결제 정보들 결제정보 칸에 입력
	
	$('.a_btn_address').click(function(){ // 배송지 관리 클릭시 이벤트
		let blank ="";
		$('.tbody_user_addresslist').html(blank);
		
		$.ajax({ // 서버로부터 유저 주소정보 담긴 배열 받기
			type: 'post',
			dataType:'json',
			data:{
				"command": "order_get_user_addressList"
			},
			url: "Controller",
			success: function(data){
				console.log(data);
				for(let i=0;i<data.length;i++){
					let addressId = data[i].adrressId;
					let reciever = data[i].reciever;
					let address = data[i].address;
					let detailAddress = data[i].detailAddress;
					let zipCode = data[i].zipCode;
					let phoneNumber = data[i].phoneNumber;
					let defaultCheck = data[i].defaultAddress;
					let defaultAddress;
					if(defaultCheck==1){
						defaultAddress = "기본배송지";
					}else if(defaultCheck==0){
						defaultAddress = "";
					}
					
					let tr = "<tr data-addressId="+addressId+" data-reciever='"+reciever+"' data-address='"+address+"' data-detail='"+detailAddress+"' data-zipCode='"+zipCode+"' data-phoneNumber='"+phoneNumber+"' data-defaultCheck="+defaultCheck+"><td class='td_select'><a class='a_select'>선택</a></td><td><span>"+defaultAddress+"</span><br/><strong class='reciever'>"+reciever+"</strong></td><td>"+reciever+"</td><td><span class='zipCode'>"+zipCode+"</span><br/><span class='address'>"+address+"</span><span class='detailaddress'>"+detailAddress+"</span></td><td><span class='phonenumber'>휴대폰:"+phoneNumber+"</span></td><td><div class='div_btn_modify'><a class='btn_modify'>수정</a></div><div class='div_btn_delete'><a class='btn_delete'>삭제</a></div></td></tr>";
					$('.tbody_user_addresslist').append(tr); // 전달받은 유저 주소 append로 표시하기
				};
			},
			error: function(request,status,error){
				alert("에러코드"+request.status);
			}
		});
		
		
		$('.address_box').css(
			'display','block' // 배송지 관리 모달창 보여주기
		);
		$('.address_bg').css(
			'display','block' // 배송지 관리 백그라운드 보여주기
		);
		
	})
	
	$('.div_address_cancel').click(function(){ // 배송지 관리 모달창 x 클릭시 이벤트
		$('.address_box').css(
			'display','none' 
		);
		$('.address_bg').css(
			'display','none'
		);
		$('.address_content').css(
			'display','block'
		);
		$('.address_newaddress_regist').css(
			'display','none'
		); // 모달창 종료하고 기존 화면 보여주기
	})
	
	$('.a_address_btn_newaddress').click(function(){ // + 새 배송지 추가 클릭시 이벤트
		
		const blank="";
		
		$('#input_update_receiver').val(blank); // 받으실분 빈칸으로 초기화
		$('#input_update_zipcode').val(blank); // 우편주소 빈칸으로 초기화
		$('#input_update_address').val(blank); // 주소 빈칸으로 초기화
		$('#input_update_detailAddress').val(blank); // 상세 주소 빈칸으로 초기화
		$('#input_update_phonenumber').val(blank); // 핸드폰번호 빈칸으로 초기화
		
		
		$('.address_content').css(
			'display','none' // 배송지 선택 화면 없애기
		);
		$('.address_newaddress_regist').css(
			'display','block' // 배송지 입력 화면 보여주기
		);
	})
	
	$('#btn_cancel').click(function(){ // 취소 버튼 클릭시 모달창 없어지고 기존 창 보여주기
		$('.address_box').css(
			'display','none'
		);
		$('.address_bg').css(
			'display','none'
		);
		$('.address_content').css(
			'display','block'
		);
		$('.address_newaddress_regist').css(
			'display','none'
		);
	})
	
	$('#base_address').change(function(){ // 기본 배송지 클릭시 이벤트
		let check = $('#base_address').is(':checked');
		if(check){ // 기본 배송지 클릭된다면
			
			$.ajax({ // 서버로부터 기본 배송지 정보 받아서 주문서에 입력하기
				type: 'post',
				dataType: 'json',
				data:{
					command: "order_get_default_address"
				},
				url: "Controller",
				success: function(data){ 
					$('#input_receiver').val(data.receiver);
					$('#input_zipcode').val(data.zipCode);
					$('#output_address').val(data.address);
					$('#input_detailaddress').val(data.detailAddress);
					$('#input_phonenumber').val(data.phoneNumber); 
				},
				error: function(request,status,error){
					alert("에러코드"+request.status);
				}
			})
			
		}
	})
	
	$('#direct_input').change(function(){ // 직접 입력 클릭시 이벤트
		let check = $('#direct_input').is(':checked');
		if(check){ // 클릭시 주문서 정보들 모두 빈칸으로 초기화
			const blank = "";
			$('#input_receiver').val(blank);
			$('#input_zipcode').val(blank);
			$('#output_address').val(blank);
			$('#input_detailaddress').val(blank);
			$('#input_phonenumber').val(blank);
		}
	})
	
	$(document).on("click",".a_select",function(){ // 주소 모달창 선택 버튼 클릭시 이벤트
		let receiver = $(this).parent().parent().data('reciever'); //tr에 부여된 데이터 값으로 초기화
		let address = $(this).parent().parent().data('address');
		let detail = $(this).parent().parent().data('detail');
		let zipCode = $(this).parent().parent().data('zipcode');
		let phoneNumber = $(this).parent().parent().data('phonenumber');
		
		$('#input_receiver').val(receiver); // 부여된 값 input 값에 입력
		$('#input_zipcode').val(zipCode);
		$('#output_address').val(address);
		$('#input_detailaddress').val(detail);
		$('#input_phonenumber').val(phoneNumber);
		modal_close(); // 주소 모달탕 종료
	})
	
	$('#btn_save').click(function(){ // 새 배송지 추가 모달창 저장 버튼 클릭시 이벤트
		let count = 0; // 빈칸 유무 확인
		let receiver = $('#input_update_receiver').val(); // 받으실분
		let productId = $('#input_update_productId').val(); // 상품번호
		let zipcode = $('#input_update_zipcode').val(); // 우편번호
		let address = $('#input_update_address').val(); // 주소
		let detail = $('#input_update_detailaddress').val(); // 상세주소
		let phone = $('#input_update_phonenumber').val();// 핸드폰 번호
		let defaultCheck; // 기본 배송지 
		if($('#default_address').is(":checked")==true)
			defaultCheck = 1;
		else
			defaultCheck = 0;
		
		if(receiver=="")
			count++;
		if(zipcode=="")
			count++;	
		if(address=="")
			count++;
		if(detail=="")
			count++;
		if(phone=="")
			count++;
		if(count>0){ // 하나라도 입력 안되었다면 알람 발생
			alert("정보를 다 입력해주세요!")
		}else{// 입력 후 서버에 입력값들 전달
			$.ajax({
			type : 'post',
			dataType : 'json',
			data : {
				"command" : "order_update_destination",
				"receiver" : receiver,
				"productId" : productId,
				"zipcode" : zipcode,
				"address" : address,
				"detail" : detail,
				"phone" : phone,
				"defaultCheck" : defaultCheck
			},
			url : "Controller",
			success: function(data){
				alert(data.msg);
			},
			error: function(request,status,error){
				alert("에러코드"+request.status);
			}
		})
		
			modal_close();	
		}	
		
	})
	
	$('#btn_cancel').click(function(){// 배송지 확인 모달창 취소 버튼 클릭시 이벤트
		modal_close();
	})
	
	$(document).on("click",".btn_modify",function(){ // 배송지 확인 모달창 각 주소 수정 버튼 클릭시 이벤트
		
		const blank="";
		$('#input_update_productId').val(blank);
		$('#input_update_receiver').val(blank);
		$('#input_update_zipcode').val(blank);
		$('#input_update_address').val(blank);
		$('#input_update_detailaddress').val(blank);
		$('#input_update_phonenumber').val(blank); // 입력창 초기화
		
		
		let addressId = $(this).parent().parent().parent().data('addressid'); // 선택한 주소 아이디
		let reciever = $(this).parent().parent().parent().data('reciever'); // 선택한 받으실분
		let address = $(this).parent().parent().parent().data('address'); // 선택한 주소
		let detail = $(this).parent().parent().parent().data('detail'); // 선택한 상세 주소
		let zipcode = $(this).parent().parent().parent().data('zipcode');// 선택한 우편주소
		let phonenumber = $(this).parent().parent().parent().data('phonenumber'); // 선택한 핸드폰 번호
		
		$('.address_content').css(
			'display','none'
		);
		$('.address_newaddress_regist').css(
			'display','block'
		);
		
		$('#btn_save').css(
			'display','none'
		);
		
		$('#btn_update').css(
			'display','inline'
		);
		
		$('#input_update_productId').val(addressId);
		$('#input_update_receiver').val(reciever);
		$('#input_update_zipcode').val(zipcode);
		$('#input_update_address').val(address);
		$('#input_update_detailaddress').val(detail);
		$('#input_update_phonenumber').val(phonenumber);// 선택된 주소 정보들 수정창에 입력하기
		
	})
	
	$('#btn_update').click(function(){ // 주소 수정 모달창에서 수정 버튼 클릭시 이벤트
		let productId = Number($('#input_update_productId').val()); // 상품번호
		let receiver = $('#input_update_receiver').val(); // 받으실분
		let zipcode = $('#input_update_zipcode').val(); // 우편주소
		let address = $('#input_update_address').val();// 주소
		let detail = $('#input_update_detailaddress').val(); // 상세주소
		let phoneNumber = $('#input_update_phonenumber').val(); // 핸드폰 번호
		let defaultCheck; // 기본 배송지 설정
		if($('#default_address').is(':checked')==true)
			defaultCheck = 1;
		else
			defaultCheck = 0;
		
		$.ajax({ // 서버에 입력값들 전달
			type: 'post',
			dataType: 'json',
			data : {
				'command' : 'order_update_existing_address',
				"receiver" : receiver,
				"productId" : productId,
				"zipcode" : zipcode,
				"address" : address,
				"detail" : detail,
				"phone" : phoneNumber,
				"defaultCheck" : defaultCheck
			},
			url : "Controller",
			success : function(data){
				alert(data.msg);
			},
			error : function(request,status,error){
				alert("에러코드"+request.status)
			}
		})
		
		
		modal_close(); // 모달창 닫기
	})
	
	$(document).on("click",".btn_delete",function(){ // 배송지 확인 모달창 주소 삭제 버튼 클릭시 이벤트
		let addressId = Number($(this).parent().parent().parent().data('addressid')); // 해당 주소 아이디
		let defaultCheck =Number($(this).parent().parent().parent().data('defaultCheck')); // 해당 주소 기본 배송지 체크
		if(defaultCheck==0){ // 기본 배송지 아니라면 주소아이디 서버에 전달하여 삭제 진행
		$.ajax({
			type: 'post',
			dataType: 'json',
			data: {
				'command' : 'order_delete_address',
				'addressId' : addressId
			},
			url: "Controller",
			success : function(data){
				alert(data.msg);
			},
			error : function(request,status,error){
				alert("에러코드"+request.status);
			}
		})
		modal_close();}else{ // 기본 배송지라면 알람 발생
			alert("기본 배송지는 삭제 불가합니다. 다른 배송지로 기본 배송지 설정한 후에 삭제해주세요.");
		}
	})
	
	$('#a_zipcode').click(function(){ // 우편번호 검색 클릭시 이벤트 , 다음주소 api 사용
		new daum.Postcode({
        oncomplete: function(data) {
            console.log(data);
			$('#input_zipcode').val(data.zonecode); // 우편번호 입력
			let fullAddress = "";
			let extraAddress = "";
			if(data.userSelectedType ==='R'){
				fullAddress = data.roadAddress; //도로명 주소
			}else{
				fullAddress = data.jibunAddress; // 지번주소
			}
			if(data.userSelectedType ==='R'){
				if(data.bname!==''){// 상세주소 있다면
					extraAddress += data.bname;
				}
				if(data.buildingName !==''){ // 빌딩 이름이 있다면 쉼표와 함계 빌딩 이름 입력
					extraAddress +=(extraAddress!==''?','+data.buildingName : data.buildingName);
				}
				fullAddress += (extraAddress!==''?'('+extraAddress+')' : '');
			}
			
			$('#output_address').val(fullAddress);
			$('#input_detailaddress').focus();
        }
    }).open();
	
	})
	
	$('.btn_zipcode').click(function(){
		
			new daum.Postcode({
        	oncomplete: function(data) {
            console.log(data);
			$('#input_update_zipcode').val(data.zonecode);
			let fullAddress = "";
			let extraAddress = "";
			if(data.userSelectedType ==='R'){
				fullAddress = data.roadAddress;
			}else{
				fullAddress = data.jibunAddress;
			}
			if(data.userSelectedType ==='R'){
				if(data.bname!==''){
					extraAddress += data.bname;
				}
				if(data.buildingName !==''){
					extraAddress +=(extraAddress!==''?','+data.buildingName : data.buildingName);
				}
				fullAddress += (extraAddress!==''?'('+extraAddress+')' : '');
			}
			
			$('#input_update_address').val(fullAddress);
			$('#input_update_detailaddress').focus();
        }
    }).open();
		
		
	})
	
	$('#a_sameAddress').click(function(){
		let reciever = $('#input_receiver').val();
		let phone = $('#input_phonenumber').val();
		$('#input_order').val(reciever);
		$('#input_order_phonenumber').val(phone);
	})
	
	//휘뚜루마뚜루 만든 기능입니다! 추후에 수정이 필요합니다. null값일때 반응, 필수값들 안들어갔을때 알람 설정, 적립금사용 기능 구현이 필요합니다.
	$('#all_order').click(function(){
		// 결제 순서 : orderlist DB에 옵션 번호, 옵션 수량 저장 >> db상 가격과 정확한지 확인 >> true이면 주문서 정보 저장 및 장바구니 정보 지우기, 결제창 띄우기>> false라면 결제 실패 알람, 메인으로 이동
		let now = new Date();
		const orderId = now.getMonth()+1+""+now.getDate() + now.getHours() + now.getMinutes()+ now.getSeconds();
		
		let productIdList = [];
		let optionList = [];
		let qtyList = [];
		let nameList = [];
		let total_qty = 0;
		let total = $('#span_total').text();
		$('.tr_goods').each(function(index,item){
			let check = true;
			let productId = $(item).data('productid');
			let option = $(item).data('option');
			let qty = $(item).data('qty');
			let name = $(item).data('name');
			optionList.push(option);
			qtyList.push(qty);
			nameList.push(name);
			productIdList.push(productId);
			total_qty = total_qty + qty;
		});
		
		$.ajax({ // orderlist DB에 옵션 번호, 옵션 수량 저장 AND db상 가격과 정확한지 확인
		type: 'post',
		dataType: 'json',
		url: 'Controller',
		traditional: true,
		data: {
			"command" : "order_insert_orderlist",
			"productIdList" : productIdList,
			"optionList" : optionList,
			"qtyList" : qtyList,
			"orderId" : orderId,
			"total" : total
		},
		success: function(data){
			console.log(data.msg);
			if(data.msg){ // 유저 결제정보와 db 결제 정보가 맞다면
			
			let receiver = $("#input_receiver").val();
			let zipcode = $("#input_zipcode").val();
			let address = $("#output_address").val();
			let detailAddress = $("#input_detailaddress").val();
			let phoneNumber = $("#input_phonenumber").val();
			let order = $("#input_order").val();
			let orderPhoneNumber = $("#input_order_phonenumber").val();
			let email_com = $("#select_email option:selected").val();
			let email = $("#email_id").val()+"@"+email_com;
			let memo = $("#input_text").val();
			
			$.ajax({ //  주문서 정보 저장
				type: 'post',
				dataType: 'json',
				url: 'Controller',
				data:{
					"command" : "order_insert_orderdetail",
					"orderId" : orderId,
					"receiver" : receiver,
					"zipcode" : zipcode,
					"address" : address,
					"detailAddress" : detailAddress,
					"phoneNumber" : phoneNumber,
					"order" : order,
					"orderPhoneNumber" : orderPhoneNumber,
					"email" : email,
					"reserves" : 0,
					"memo" : memo,
		
				},
				success: function(data){
					console.log(data.msg);
				},
				error: function(status,request,error){
					alert("에러코드"+request.status);
				}
			});
			
				$.ajax({
				type: 'post',
				dataType: 'json',
				url: 'Controller',
				traditional: true,
				data:{
					"command" : "order_delete_cartlist",
					"optionList" : optionList
				},
				success: function(data){
					console.log(data.msg);
				},
				error: function(status,request,error){
					alert("에러코드"+request.status);
				}
			});
			let payname = nameList[0]+(nameList.length==1?" ":"외"+nameList.length);	
			IMP.init("imp01502010"); // 결제창 출력
			IMP.request_pay(
				{
					pg: "kakaopay",
					pay_method: "card",
					merchant_uid: orderId,
					name: payname,
					quantity: total_qty,
					amount: total ,
				},
				function(rsp){
					console.log(rsp);
					if(rsp.success){
					$.ajax({
						url : "Controller",
						dataType: "json",
						method: "post",
						data: {
							"command" : "order_result"
						},
						success: function(data){
							console.log(data.msg);
							window.location.href="Controller?command=store_mainlist";
						},
						error: function(error){
							console.log(error);
						}
					})
					} else{
						alert("결제실패")
					}
				} 
				
			);
				
				
			}
		else{ // 만약 결제 내용이 다르다면
			
			alert("결제 정보 이상발생. 다시 주문해주십시오")
			$.ajax({ // orderList DB 정보 삭제
				type : 'post',
				dataType: 'json',
				url : 'Controller',
				data : {
					"command" : "order_delete_orderdetail",
					"orderId" : orderId,
				},
				success: function(data){
					console.log(data.msg);
					window.location.href="Controller?command=store_mainlist";
				},
				error: function(error){
					alert(error);
				}
			})	
		}
		},
		error: function(status,request,error){
			alert("에러코드"+request.status);
		}
			})
		
	});

})

function modal_close(){
	$('.address_box').css(
		'display','none'
		);
	$('.address_bg').css(
		'display','none'
	);
	$('.address_content').css(
		'display','block'
	);
	$('.address_newaddress_regist').css(
		'display','none'
	);
}