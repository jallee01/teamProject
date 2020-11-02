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
                    <a href="shoppingBasket.do"><img src="images/basket.png" alt="장바구니로 이동"> </a>
                </div>
            </div>
        </nav>
    </header>

    <div class="basketTitle">
        <h1>장바구니</h1>
        <p>주문하실 상품명 및 수량을 정확하게 확인해 주세요</p>
    </div>
    <form method="post">
        <div class="select">
            <table class="selectTable">
                <tr>
                    <th>전체선택</th>
                    <th>상품정보</th>
                    <th>수량</th>
                    <th>상품금액</th>
                </tr>
            </table>
            <div class="answerTable">
                <p>장바구니에 담긴 상품이 존재하지 않습니다.</p>
            </div>
        </div>
        <div class="Total_price">
           <div class="basket_price "><p class="human_letter">상품금액<br/>0원</p></div>
           <div class="minus">-</div>
           <div class="Sale_price"><p class="human_letter">상품할인금액<br/>0원</p></div>
           <div class="plus">+</div>
           <div class="Shipping_fee"><p class="human_letter">배송비<br/>0원</p></div>
           <div class="equal">=</div>
           <div class="Payment"><p class="human_letter">결제예정금액<br/>0원</p></div>
        </div>
        <div class="Order_button">
            <input type="button" class="order" value="주문하기" onclick="location.href='PC_OR_01.html'">
        </div>
        <div class="reaction_tab">
            <p class="notice_end">'입금확인'상태일때는 주문내역 상세 페이지에서 직접 주문취소가 가능합니다.</p>
            <p class="notice_end">'입금확인'이후 상태에는 고객센터로 문의해주세요.</p>
        </div>
    </form>
       
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