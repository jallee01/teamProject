<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--수산물_2.해산물-->    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<html>
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
                    <li><a href="Top_customer_notice.html">고객센터▼</a>
                        <ul class="submenu1">
                            <li><a href="Top_customer_notice.do">공지사항</a></li>
                            <li><a href="Top_customer_FAQ.do">FAQ</a></li>
                            <c:choose>
                        		<c:when test="${sessionScope.userId == null || sessionScope.userId == '' }">
                    				<li><a href="login.do">로그인</a></li>
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

    <div class="sub_tab">
        <div class="wrapper">
            <div class="product_link_tap flex-wrap-nav">
                <ul class="list_margin_btm">
                    <li><a href="PC_LI_05.do">생선류</a></li>
                    <li class="on"><a href="PC_LI_06.do">해산물</a></li>
                    <li><a href="PC_LI_07.do">건어물</a></li>
                    <li><a href="PC_LI_08.do">해조류</a></li>
                </ul>
                <div class="select_rank">
                    <select>
                        <option>낮은가격순</option>
                        <option>높은가격순</option>
                        <option>날짜최근순</option>
                        <option>날짜오래된순</option>
                    </select>
                </div>
            </div>
        </div>
     </div>

      <div class="product_list">
        <div class="good_product">
            <div class="wrapper">
                    <ul>
                        <li class="list_margin_btm">
                            <a href="#">
                                <img src="images/good_pr_img41.jpg" alt="추천 이미지1">  
                                <div class="good_info">
                                    <p class="product_name">
                                        <p class="product_txt gray_txt middle_txt">[충남 당진] 가을바다의 맛, 대하</p>
                                    </p>
                                    <p class="product_price green_txt">15,000원</p>
                                </div>
                            </a>
                        </li>
                        <li class="list_margin_btm">
                            <a href="#">
                                <img src="images/good_pr_img42.jpg" alt="추천 이미지2">
                                <div class="good_info">
                                    <p class="product_name">
                                        <p class="product_txt gray_txt middle_txt">[인천 옹진] 서해5도의 꽃게</p>
                                    </p>
                                    <p class="product_price green_txt">24,000원</p>
                                </div>
                            </a>
                        </li>
                        <li class="list_margin_btm">
                            <a href="#">
                                <img src="images/good_pr_img43.jpg" alt="추천 이미지3">
                                <div class="good_info">
                                    <p class="product_name">
                                        <p class="product_txt gray_txt middle_txt">[전남 강진] 가을철의 보양식, 전복</p>
                                    </p>
                                    <p class="product_price green_txt">17,900원</p>
                                </div>
                            </a>
                        </li>
                        <li class="list_margin_btm">
                            <a href="#">
                                <img src="images/good_pr_img44.jpg" alt="추천 이미지4">
                                <div class="good_info">
                                    <p class="product_name">
                                        <p class="product_txt gray_txt middle_txt">[강원 강릉] 동해바다의 생오징어</p>
                                    </p>
                                    <p class="product_price green_txt">13,700원</p>
                                </div>
                                </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="good_product">
                <div class="wrapper">
                        <ul>
                            <li class="list_margin_btm">
                                <a href="#">
                                    <img src="images/good_pr_img45.jpg" alt="추천 이미지5">  
                                    <div class="good_info">
                                        <p class="product_name">
                                            <p class="product_txt gray_txt middle_txt">[전남 순천] 바다의 우유, 순천 굴</p>
                                        </p>
                                        <p class="product_price green_txt">25,000원</p>
                                    </div>
                                </a>
                            </li>
                            <li class="list_margin_btm">
                                <a href="#">
                                    <img src="images/good_pr_img46.jpg" alt="추천 이미지6">
                                    <div class="good_info">
                                        <p class="product_name">
                                            <p class="product_txt gray_txt middle_txt">[강원 양양] 따뜻한 짬뽕과 홍합</p>
                                        </p>
                                        <p class="product_price green_txt">11,800원</p>
                                    </div>
                                </a>
                            </li>
                            <li class="list_margin_btm">
                                <a href="#">
                                    <img src="images/good_pr_img47.jpg" alt="추천 이미지7">
                                    <div class="good_info">
                                        <p class="product_name">
                                            <p class="product_txt gray_txt middle_txt">[전남 무안] 고소한 낙지</p>
                                        </p>
                                        <p class="product_price green_txt">22,580원</p>
                                    </div>
                                </a>
                            </li>
                            <li class="list_margin_btm">
                                <a href="#">
                                    <img src="images/good_pr_img48.jpg" alt="추천 이미지8">
                                    <div class="good_info">
                                        <p class="product_name">
                                            <p class="product_txt gray_txt middle_txt">[전남 신안] 밥도둑 꽃게</p>
                                        </p>
                                        <p class="product_price green_txt">57,000원</p>
                                    </div>
                                    </a>
                            </li>
                        </ul>
                    </div>
                </div>
        </div>      

        <div class="paging">
            <a href="#" class="first">첫 페이지 </a>
            <a href="#" class="prev">이전 페이지</a>
            <span>
                <a href="#" class="num_on">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">6</a>
                <a href="#">7</a>
                <a href="#">8</a>
                <a href="#">9</a>
                <a href="#">10</a>
            </span>
            <a href="#" class="next">다음페이지</a>
            <a href="#" class="last">마지막 페이지</a>
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