<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--로그인 페이지-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<div class="content_login">
    <div class="section_login">
        <h2 class="login_title">로그인</h2>
        <form method="post" name="form" class="login_form" action="login.do">
            <input type="text" name="member_id" tabindex="1" size="20" placeholder="아이디를 입력하세요."
                   class="login_text_wrap"><br/>
            <input type="password" name="password" tabindex="2" placeholder="비밀번호를 입력하세요." class="login_text_wrap">
            <c:if test = "${msg == 'failure'}">
	            <div class="login_failure">
	            	<div class="failure_msg">입력정보가 올바르지 않습니다</div>
	            </div>
            </c:if>
            <input type="submit" id="btnLogin" class="login_btn" value="로그인">
        </form>
        <div class="join_btn">
            <ul>
                <li><a href="regist.do" class="btn_join bold-text">회원가입</a></li>
            </ul>
        </div>

    </div>
</div>
<footer>
    <div class="wrapper">
        <div class="site">
            <div class="sns">
                <ul>
                    <li><a href="https://facebook.com/" target="_blank"><img src="images/foot_facebook.png"></a></li>
                    <li><a href="http://www.instargram.com" target="_blank"><img src="images/foot_instargram.png"></a>
                    </li>
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