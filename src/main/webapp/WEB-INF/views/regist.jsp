<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--회원가입 페이지-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>먹거리의 이야기 :: 스토리마켓</title>
</head>
<link href="css/common.css" type="text/css" rel="stylesheet">
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/jquery-migrate-1.4.1.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery-user.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script>
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('addr1').value = fullRoadAddr;
            }
        }).open();
    }
</script>


<body>
    <header>
        <div id="usemenu">
            <div class="wrapper">
                <ul class="headmenu">
                    <c:choose>
                        <c:when test="${sessionScope.userId == null || sessionScope.userId == '' }">
                    		<li><a href="regist.do">회원가입</a></li>
                    		<li><a href="login.do">로그인</a></li>
                    		<li><a href="login.do">회원정보</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="Top_memberInfo.do">회원정보</a></li>
                            <li><a href="logout.do">로그아웃</a></li>
                        </c:otherwise>
                    </c:choose>
                    <li><a href="Top_customer_notice.do">고객센터▼</a>
                        <ul class="submenu1">
                            <li><a href="Top_customer_notice.do">공지사항</a></li>
                            <li><a href="Top_customer_FAQ.do">FAQ</a></li>
                            <c:choose>
                        		<c:when test="${sessionScope.userId == null || sessionScope.userId == '' }">
                    				<li><a href="login.do">1:1 문의</a></li>
                        		</c:when>
                        		<c:otherwise>
                            		<li><a href="Top_customer_1.do">1:1 문의</a></li>
                        		</c:otherwise>
                    		</c:choose>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="headerLogo">
            <a href="index.do"><img src="images/logo-01.png"></a>
        </div>
        <nav>
            <div class="wrapper">
                <div class="gnb">
                    <div class="hamburger_absolute">
                        <div class="hamburger_bar"></div>
                        <div class="hamburger_bar"></div>
                        <div class="hamburger_bar"></div>
                    </div>           
                    <ul class="gnbmenu">                      
                        <li><a href="#">상품전체</a>
                                <ul class="submenu2">
                                    <li><a href="PC_LI_01.do">농산물</a></li>
                                    <li><a href="PC_LI_05.do">수산물</a></li>
                                    <li><a href="PC_LI_09.do">축산물</a></li>
                                </ul>
                        </li>
                        <li><a href="Menu_seasonal.do">제철특산품</a></li>
                        <li><a href="Menu_prodMap.do">특산품지도</a></li>
                        <li><a href="Menu_Intro.do">마켓스토리</a></li>
                    </ul>
                </div>
                <span class="search">
                    <input type="text" class="search_text">
                    <a href="#"><img src="images/search.png" class="search_img" alt="검색"></a>
                </span>
                <div class="basket">
                	<c:choose>
                      		<c:when test="${sessionScope.userId == null || sessionScope.userId == '' }">
                    			<a href="login.do"><img src="images/basket.png" alt="장바구니로 이동"> </a>
                       		</c:when>
                       		<c:otherwise>
                           		<a href="shoppingBasket.do"><img src="images/basket.png" alt="장바구니로 이동"> </a>
                       		</c:otherwise>
              		</c:choose>

                </div>
            </div>
        </nav>
    </header>

    <div class="content_join">
        <div class="section_join">
            <h2 class="login_title">회원가입</h2>
            <p class="footnote">
                <sapn class="icon">*</sapn>필수입력사항
            </p>
            <hr class="join_border" />  
            <form onsubmit="return checkJoin()" action="regist.do" method="post" name="form" class="join_form">
                <table>
                    <tr>
                        <th>아이디<span class="icon">*</span></th>
                        <td><input type="text" name="id" id="id" maxlength="16" placeholder="4~12자의 대소문자와 숫자로만 입력" class="form-box"></td>
                    </tr>
                    <tr>
                        <th>비밀번호<span class="icon">*</span></th>
                        <td><input type="password" name="passwd" id="passwd" maxlength="16" placeholder="비밀번호를 입력해주세요" class="form-box"></td>
                    </tr>
                    <tr>
                        <th>비밀번호확인<span class="icon">*</span></th>
                        <td><input type="password" name="conpasswd" id="conpasswd" maxlength="16" placeholder="비밀번호를 다시 입력해주세요" class="form-box"></td>
                    </tr>
                    <tr>
                        <th>이름<span class="icon">*</span></th>
                        <td><input type="text" name="name" id="name" maxlength="16" placeholder="이름을 입력해주세요" class="form-box"></td>
                    </tr>
                    <tr>
                        <th>이메일<span class="icon">*</span></th>
                        <td><input type="email" name="email" id="email" maxlength="30" placeholder="예: iu0516@naver.com" class="form-box"></td>
                    </tr>
                    <tr>
                        <th class="align-bottom-text">주소<span class="icon">*</span></th>
                        <td>
                            <input type="text" name="zip" id="zip" maxlength="5" size="5" class="form-box address_num" readonly>
                            <input type="button" value="우편번호 찾기" class="address_btn btn_form2" onClick="execDaumPostcode()">
                            <input type="text" name="addr" id="addr1" maxlength="20" class="address_box two-line-input-margin">
                        </td>
                    </tr>
                    <tr>
                        <th class="detail_address_txt">상세 주소</th>
                        <td><input type="text" name="detail_addr" id="detail_addr" maxlength="20" class="address_box  two-line-input-margin" placeholder="상세 주소를 입력해주세요."></td>
                    </tr>
                    <tr>
                        <th>성별<span class="icon">*</span></th>
                        <td><input type="radio" name="gender" id="gender" value="m">남자 <input type="radio" name="gender" id="gender" value="w">여자<input type="radio" name="gender" id="gender" value="n">선택안함</td>
                    </tr>
                    <tr>
                        <th>생년월일<span class="icon">*</span></th>
                        <td>
                            <input type="text" name="birth_year" id="birth_year" maxlength="4" placeholder="YYYY" class="join_default_birthday border-right-none"  oninput="this.value = this.value.replace(/[^0-9]/g, '');" >
                            <input type="text" name="birth_month" id="birth_month" maxlength="2" placeholder="MM" class="join_default_birthday border-side-none"  oninput="this.value = this.value.replace(/[^0-9]/g, '');" >
                            <input type="text" name="birth_day" id="birth_day" maxlength="2" placeholder="DD" class="join_default_birthday border-left-none"  oninput="this.value = this.value.replace(/[^0-9]/g, '');" >
                        </td>
                    </tr>
                </table>
                <br/><br/>
                <hr class="join_border" />  
                <div class="join_form_footer">
                    <input type="submit" value="가입하기" class="member_join_btn">
                </div>
            </form> 
        </div>                     
    </div>
    
    <footer>
        <div class="wrapper">
            <div class="site">
                <div class="sns">
                    <ul>
                        <li><a href="https://facebook.com/" target="_blank"><img src="images/foot_facebook.png"></a></li>
                        <li><a href="http://www.instargram.com" target="_blank"><img src="images/foot_instargram.png"></a></li>
                        <li><a href="http://www.youtube.com" target="_blank"><img src="images/foot_youtube.png"></a></li>
                        <li><a href="https://twitter.com/" target="_blank"><img src="images/foot_twitter.png"></a></li>
                    </ul>
                </div>
            </div>
            <div class="footer_menu">
               <ul>
                <li><a href="#">공지사항</a></li>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">1:1 문의</a></li>
                </ul>
            </div>
            <div class="copy">
                COPYRIGHT © by WEBDESIGN. ALL RIGHTS RESERVED
            </div>
        </div>
    </footer>
    <div id="quick_menu">
        <div class="quick_img_wrapper">
            <a href="PC_main_01.html" target="_blank"><img class="quick_img" src="images/quick_link_img.jpg"></a>
        </div>
        <div class="side_menu">
            <a href="Top_customer_FAQ.html" class="link_menu" target="_blank">FAQ</a>
            <a href="#" class="link_menu" target="_blank">생산자 신청</a>
        </div>
    </div>
    <div id="top_btn">
        <a href="" onclick="goTop()"><img src="images/top_button.png"></a>
    </div>
</body>

</html>

</body>
</html>