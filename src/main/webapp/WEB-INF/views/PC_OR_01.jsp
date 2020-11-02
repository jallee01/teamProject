<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--장바구니 페이지-->    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

    <div class="detail_product">
        <div class="wrapper prdouct_wrapper">       
                    <div class="max_content">
                        <div class="product_info">
                            <p class="header_txt display_block">[주문 페이지 미완성] / [전라남도 해남] 호박고구마 3kg</p>
                            <p class="note_txt display_block">촉촉하고 부드러운 호박고구마</p>
                            <p class="price_txt display_block human_letter">13,700원</p>
                        </div>
                        <form action="#" method="post">
                            <div class="product_tb">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="border_bottom_none gray_txt small_txt tit">판매단위</td>
                                            <td class="border_bottom_none desc">1박스</td>
                                        </tr>
                                        <tr>
                                            <td class="gray_txt small_txt tit">중량/용량</td>
                                            <td>3kg</td>
                                        </tr>
                                        <tr>
                                            <td class="gray_txt small_txt tit">배송구분</td>
                                            <td>택배</td>
                                        </tr>
                                        <tr>
                                            <td class="gray_txt small_txt tit">포장타입</td>
                                            <td>박스포장</td>
                                        </tr>
                                        <tr>
                                            <td class="gray_txt small_txt tit">이름</td>
                                            <td>홍길동</td>
                                        </tr>
                                        <tr>
                                            <td class="gray_txt small_txt tit">이메일</td>
                                            <td>q123ed2@gmail.com</td>
                                        </tr>
                                        <tr>
                                            <td class="gray_txt small_txt tit">주소</td>
                                            <td><input type="text" name="address" maxlength="20" class="address_box two-line-input-margin"><input type="button" value="우편번호 찾기" class="address_btn btn_form2"></td>
                                        </tr>
                                        <tr>
                                            <td class="gray_txt small_txt tit">구매수량</td>
                                            <td>
                                                    <button type="button" class="btn btn_type1 middle_btn pm_btn" id="amount_down">-</button>
                                                    <input type="number" id="product_amount" class="btn product_count_tmp middle_btn pm_btn" name="product_amount" min="1" max="10" value="1" required readonly />
                                                    <button type="button" class="btn btn_type1 middle_btn pm_btn" id="amount_up">+</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        <div class="product_form_footer align-right margin-right"> 
                            <div class="header_txt display_block human_letter margin-bottom">총 상품금액 <span id="product_price" class="green_txt human_letter">13,700</span>원</div>
                            <div>
                                <input type="submit" class="btn btn_type1 lg_btn" value="주문하기">
                            </div>
                        </div>
                    </form> 
                    </div>
                </div>
            </div>
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
                <li><a href="Top_customer_notice.do">공지사항</a></li>
                <li><a href="Top_customer_FAQ.do">FAQ</a></li>
                <c:choose>
                <c:when test="${sessionScope.userId == null || sessionScope.userId == ''}">
                	<li><a href="login.do">1:1 문의</a></li>                
                </c:when>
                <c:otherwise>
                    <li><a href="Top_customer_1.do">1:1 문의</a></li>
                </c:otherwise>
                </c:choose>
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
        	<c:choose>
        	<c:when test="${sessionScope.userId == null || sessionScope.userId == '' }">
        		<a href="login.do" class="link_menu" target="_blank">장바구니</a>
        		<a href="regist.do" class="link_menu" target="_blank">회원가입</a>
              	<a href="login.do" class="link_menu" target="_blank">생산자 신청</a>  		
        	</c:when>
        	<c:otherwise>
        		<a href="shoppingBasket.do" class="link_menu" target="_blank">장바구니</a>
        		<a href="#" class="link_menu" target="_blank">생산자 신청</a>
        	</c:otherwise>
        	</c:choose>
            <a href="Top_customer_FAQ.do" class="link_menu" target="_blank">FAQ</a>
        </div>
    </div>
    <div id="top_btn">
        <a href="" onclick="goTop()"><img src="images/top_button.png"></a>
    </div>
</body>

</html>