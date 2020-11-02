<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--로그아웃 된 메인 페이지-->    
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

    <div class="imgslide">
        <div class="wrapper">
            <img src="images/bn1.jpg" alt="image1">
            <img src="images/bn2.jpg" alt="image2">
            <img src="images/bn3.jpg" alt="image3">
            <img src="images/bn4.jpg" alt="image4">
        </div>
    </div>
    <div class="product_list">
            <div class="good_title">
                <h3 class="title_template">추천상품</h3>
            </div>
            <div class="good_product">
                <div class="wrapper">
                        <ul>
                            <li>
                                <a href="#">
                                    <img src="images/good_pr_img12.jpg" alt="추천 이미지1">  
                                    <div class="good_info">
                                        <p class="product_name">
                                            <p class="product_txt">[전남 해남] 속이꽉 찬 해남 배추</p>
                                        </p>
                                        <p class="product_price">15,000원</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="images/good_pr_img25.jpg" alt="추천 이미지2">
                                    <div class="good_info">
                                        <p class="product_name">
                                            <p class="product_txt">[경기 가평] 추운 땅에서 온 진짜 잣</p>
                                        </p>
                                        <p class="product_price">15,000원</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="images/good_pr_img43.jpg" alt="추천 이미지3">
                                    <div class="good_info">
                                        <p class="product_name">
                                            <p class="product_txt">[전남 강진] 가을철의 보양식, 전복</p>
                                        </p>
                                        <p class="product_price">17,900원</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="PC_DE_01.do">
                                    <img src="images/good_pr_img10.jpg" alt="추천 이미지4">
                                    <div class="good_info">
                                        <p class="product_name">
                                            <p class="product_txt">[전남 해남] 포근한 땅의선물, 고구마</p>
                                        </p>
                                        <p class="product_price">24,000원</p>
                                    </div>
                                    </a>
                            </li>
                        </ul>
                    </div>
                </div>
                
            </div>
    </div>      
    <div class="img-banner-list">
        <div class="wrapper">
            <div>
                <img src="images/seasonal_products.jpg" alt="Seasonal">
            </div>
            <div>
                <img src="images/specialities_map.jpg" alt="special">
            </div>
            <div>
                <img src="images/market_story.jpg" alt="story">
            </div>
            <div>
                <img src="images/welcome_gift.jpg" alt="gift">
            </div>
        </div>
    </div>
    <div class="index_link_btn">
        <ul>
            <li><a href="Menu_seasonal.html" class="btn_season bold-text">제철상품 더 보러가기 ></a></li>
            <li><a href="regist.do" class="btn_join bold-text">회원가입 하러가기 ></a></li>
        </ul>
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
            <a href="admin/adminLogin.do" class="link_menu" target="_blank">ADMIN</a>
        </div>
    </div>


            
    <div id="top_btn">
        <a href="" onclick="goTop()"><img src="images/top_button.png"></a>
    </div>
    <script>
        sessionStorage.setItem('userId', '<%=session.getAttribute("userId")%>');
        const session = sessionStorage.getItem("userId");
        console.log(session);
    </script>
</body>

</html>
