$(function(){
    $(".headmenu>li").mouseover(function(){
        $(this).find(".submenu1").stop().slideDown();
    }).mouseout(function(){
        $(this).find(".submenu1").stop().slideUp();
    })

     $(".gnbmenu>li").mouseover(function(){
         $(this).find(".submenu2").stop().slideDown();
     }).mouseout(function(){
         $(this).find(".submenu2").stop().slideUp();
     })

     
     setInterval(slide, 2000);
     var x = $(".imgslide .wrapper>img");
     var y = 4;
     function slide() {
         y--;
         if(y==0) {
             x.fadeIn();
             y=4;
         } else {
             x.eq(y).fadeOut();
         }
     }
});

$(document).ready(function() {

	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($("#quick_menu").css('top'));
	// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";

		/* 애니메이션 없이 바로 따라감
		 $("#quick_menu").css('top', newPosition);
		 */

		$("#quick_menu").stop().animate({
			"top" : newPosition
		}, 400);

	}).scroll();



});

function goTop(){ 
	$('html').scrollTop(0);
	// scrollTop 메서드에 0 을 넣어서 실행
	// 이 소스가 동작하지 않는다면
	// $('html, body')로 변경
}
$(document).ready(function() {

	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($("#top_btn").css('top'));
	// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";

		 $("#top_btn").css('top', newPosition);


        /* 애니메이션 효과를 받으며 따라감.
         $("#top_btn").stop().animate({
			"top" : newPosition
		}, 400); */

	}).scroll();



	// 제품 상세 페이지 제품 수량 및 가격 증감 


	let amount = 1; //상품 갯수 초기값
	const price = 13700;

	$('#amount_down').click(function(){
		if(amount > 1) // 수량이 1보다 클 경우만 감소
			amount--;
		$('#product_amount').val(amount);

		changeTotalPrice(); //수량 변동 있을때마다 가격 변환하는 함수 호출
	});
	$('#amount_up').click(function () {
		if (amount < 10) //수량이 10보다 작은 경우만 증가
			amount++;
		$('#product_amount').val(amount);

		changeTotalPrice(); //수량변동있을때마다 가격 변환하는 함수 호출
	});

	function changeTotalPrice() {
		
		/* $('#product_price').text(price * amount);  */



		$('#product_price').text(wonComma(price * amount));// 총 가격은 단가 * 수량


	}
});

	/* var product_count = $('#product_amount').val();

	$('#amount_down').click(function(){	
		alert($('#product_amount').val(parseInt(product_count)-1));
		if($('#product_amount').val()<=1){
			return;
		}
		$('#product_amount').val(parseInt($('#product_amount').val())-1);
	});

   $('#amount_up').click(function(){
	if($('#product_amount').val()>=10){
		return;
	}
	$('#product_amount').val(parseInt($('#product_amount').val())+1);
	});
 */


// 회원정보 메뉴  
function openContents(evt, evtName) {
	var i, tabcontent, tablinks;
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
	  tabcontent[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
	  tablinks[i].className = tablinks[i].className.replace(" active", "");
	}
	document.getElementById(evtName).style.display = "block";
	evt.currentTarget.className += " active";
  }

  document.getElementById("defaultOpen").click();


// 회원가입 유효성 검사

function checkJoin(){

	var getId = RegExp(/^[a-zA-Z0-9]{4,12}$/);
	/* var onlyNumber = RegExp("[0-9]"); */
	var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
	var nCharType = 0;
	if($("#id").val() == null || $("#id").val()===""){
		alert("아이디란이 비었습니다. 다시 입력해주세요.");
		$("#id").focus();
		return false;
	
	} else if($("#password").val() == null || $("#password").val()===""){
		alert("비밀번호란이 비었습니다. 다시 입력해주세요.");
		$("#password").focus();
		return false;
	
	} else if($("#re_password").val() == null || $("#re_password").val()===""){
		alert("비밀번호 확인란이 비었습니다. 다시 입력해주세요.");
		$("#re_password").focus();
		return false;
	
	} else if($("#name").val() == null || $("#name").val()===""){
		alert("이름란이 비었습니다. 다시 입력해주세요.");
		$("#name").focus();
		return false;
	
	} else if($("#email").val() == null || $("#email").val()===""){
		alert("이메일란이 비었습니다. 다시 입력해주세요.");
		$("#email").focus();
		return false;
	
	} else if($("#zip").val() == null || $("#zip").val()===""){
		alert("우편번호란이 비었습니다. 다시 입력해주세요.");
		$("#zip").focus();
		return false;
	
	}  else if($("#addr1").val() == null || $("#addr1").val()===""){
		alert("주소란이 비었습니다. 다시 입력해주세요.");
		$("#addr1").focus();
		return false;
	
	} else if($(':radio[name="gender"]:checked').length < 1){
		alert("성별이 선택되지 않았습니다. 성별을 선택해주세요.");
		$("#gender").focus();
		return false;
	
	}   else if($("#birth_year").val() == null || $("#birth_year").val()===""){
		alert("생년월일란이 비었습니다. 다시 입력해주세요.");
		$("#birth_year").focus();
		return false;
	
	}   else if($("#birth_month").val() == null || $("#birth_month").val()===""){
		alert("생년월일란이 비었습니다. 다시 입력해주세요.");
		$("#birth_month").focus();
		return false;
	
	}   else if($("#birth_day").val() == null || $("#birth_day").val()===""){
		alert("생년월일란이 비었습니다. 다시 입력해주세요.");
		$("#birth_day").focus();
		return false;
	
	} 
	//아이디 비밀번호 같은지 확인 
	if($("#id").val() == $("#password").val()){ 
		alert("아이디 값과 비밀번호 값이 같습니다"); 
		$("#password").val(""); 
		$("#password").focus(); 
		return false; 
	}

	//비밀번호 서로확인 
	if($("#password").val() != $("#re_password").val()){ 
		alert("비밀번호와 비밀번호 확인란이 상이합니다."); 
		$("#password").val(""); 
		$("#re_password").val(""); 
		$("#password").focus(); 
		return false; 
	}
	//이메일 유효성 검사 
	if(!getMail.test($("#email").val())){ 
		alert("이메일형식에 맞게 입력해주세요"); 
		$("#email").val(""); 
		$("#email").focus(); 
		return false; 
	}
	// id 유효성 검사
	if(!getId.test($("#id").val())){
		alert("id 형식에 맞게 입력해주세요"); 
		$("#id").val(""); 
		$("#id").focus(); 
		return false; 
	}

	alert("회원가입이 완료되었습니다!");
	return true;
}
