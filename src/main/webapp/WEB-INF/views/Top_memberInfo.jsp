<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--회원정보-->    
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
                    <li><a href="#">고객센터▼</a>
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
    
    <div class="member_board">
        <div class="board_fix">
            <div class="board1"><p>000님</p><p>적립 0%</p></div>
            <div class="board2"><p>적립금</p><P>0원</P></div>
            <div class="board2"><p>쿠폰</p><P>0원</P></div>
            <div class="board2"><p>스토리패스</p><P>0P</P></div>
        </div>
        
    </div><br>
    <div class="contents">
    <div class="tab">
        <button class="tablinks" onclick="openContents(event, 'order_list')" id="defaultOpen">주문내역</button>
        <button class="tablinks" onclick="openContents(event, 'product_riview')">상품후기</button>
        <button class="tablinks" onclick="openContents(event, 'Reserve')">적립금</button>
        <button class="tablinks" onclick="openContents(event, 'Information_modify')">개인정보 수정 및 탈퇴</button>
      </div>
       
      <div id="order_list" class="tabcontent">
        <h3>주문내역</h3><br>
        <table class="member_QA_basket_table">
            <tr>
                <td><b>주문일자</b></td>
                <td><b>주문번호</b></td>
                <td><b>품목</b></td>
                <td><b>예상배송일</b></td>
                <td><b>진행상황</b></td>
                <td><b>결제금액</b></td>
                <td><b>상태</b></td>
            </tr>
            <tr>
                <td>2020-10-15</td>
                <td>G5215225</td>
                <td>안동 간고등어</td>
                <td>2020-10-18</td>
                <td>배송준비중</td>
                <td>34,000원</td>
                <td>결제완료</td>
            </tr>
            <tr>
                <td>2020-10-16</td>
                <td>C2555825</td>
                <td>서귀포 한라봉</td>
                <td>2020-10-19</td>
                <td>대기중</td>
                <td>45,000원</td>
                <td>결제대기</td>
            </tr>
        </table>
        <div class="paging">
            <a href="#" class="first">첫 페이지 </a>
            <a href="#" class="prev">이전 페이지</a>
            <span>
                <a href="#" class="on">1</a>
                <a href="#" class="on">2</a>
            </span>
            <a href="#" class="next">다음페이지</a>
            <a href="#" class="last">마지막 페이지</a>
        </div>
      </div>
       
      <div id="product_riview" class="tabcontent">
        <h3>상품후기</h3>
        <table class="member_QA_basket_table">
            <tr>
                <td><b>상품명</b></td>
                <td><b>리뷰내용</b></td>
                <td><b>등록일</b></td>
            </tr>
            <tr>
                <td>철원오대쌀</td>
                <td>밥맛이 꿀맛! 바로 추수한 쌀 역시 강력추천합니다.</td>
                <td>2020-10-15</td>
            </tr>
            <tr>
                <td>신안 천일염</td>
                <td>짠맛과 특유의 고소함이 더해 요리가 감칠맛이나요!</td>
                <td>2020-10-15</td>
            </tr>
            <tr>
                <td>돌산 갓</td>
                <td>여수의 바다내음과 함께 김치 맛이 살아나요</td>
                <td>2020-10-15</td>
            </tr>
            <tr>
                <td>순창고추장</td>
                <td>전주비빔밥이 생각나게 하는 특별한 맛이에요</td>
                <td>2020-10-15</td>
            </tr>
            <tr>
                <td>포항꽁치</td>
                <td>동해바다의 포항꽁치와 함께 저녁을 즐겨봐요</td>
                <td>2020-10-15</td>
            </tr>
            <tr>
                <td>김해단감</td>
                <td>추석 분위기를 살릴 수 있는 싱싱한 단감이에요!</td>
                <td>2020-10-15</td>
            </tr>
            <tr>
                <td>안동사과</td>
                <td>상큼한 아침과 함께하는 사과가 꿀맛이네요!</td>
                <td>2020-10-15</td>
            </tr>
        </table>
        <div class="paging">
            <a href="#" class="first">첫 페이지 </a>
            <a href="#" class="prev">이전 페이지</a>
            <span>
                <a href="#" class="on">1</a>
                <a href="#" class="on">2</a>
            </span>
            <a href="#" class="next">다음페이지</a>
            <a href="#" class="last">마지막 페이지</a>
        </div>
      </div>
       
      <div id="Reserve" class="tabcontent">
        <h3>적립금</h3><br>
        <table class="point_board">
            <tr>
                <td>현재적립금 10,000원</td>
                <td>소멸예정적립금 0원</td>
            </tr>
        <table class="member_QA_basket_table">
            <tr>
                <td><b>날짜</b></td>
                <td><b>내용</b></td>
                <td><b>유효기간</b></td>
                <td><b>금액</b></td>
            </tr>
            <tr>
                <td>2020-09-15</td>
                <td>택배1회 할인 서비스</td>
                <td>~ 2021-01-25</td>
                <td>10,000원</td>
            </tr>

            </tr>
        </table>
        <div class="paging">
            <a href="#" class="first">첫 페이지 </a>
            <a href="#" class="prev">이전 페이지</a>
            <span>
                <a href="#" class="on">1</a>
                <a href="#" class="on">2</a>
            </span>
            <a href="#" class="next">다음페이지</a>
            <a href="#" class="last">마지막 페이지</a>
        </div>
      </div>
      
      <div id="Information_modify" class="tabcontent">
          <h3>개인정보 수정</h3>
          <form method="post" name="form" class="join_form">
            <table class="join_table">
                <tbody>
                    <tr>
                        <th>아이디<span class="icon">*</span></th>
                        <td><input type="text" name="member_id" maxlength="16"
                                placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합" class=" max-width"></td>
                    </tr>
                    <tr>
                        <th>비밀번호<span class="icon">*</span></th>
                        <td><input type="password" name="password" maxlength="16"
                                placeholder="비밀번호를 입력해주세요" class="max-width"></td>
                    </tr>
                    <tr>
                        <th>비밀번호확인<span class="icon">*</span></th>
                        <td><input type="password" name="re_password" maxlength="16"
                                placeholder="비밀번호를 다시 입력해주세요" class="max-width"></td>
                    </tr>
                    <tr>
                        <th>이름<span class="icon">*</span></th>
                        <td><input type="text" name="name" maxlength="16" placeholder="이름을 입력해주세요"
                                class="max-width"></td>
                    </tr>
                    <tr>
                        <th>이메일<span class="icon">*</span></th>
                        <td><input type="email" name="email" maxlength="30"
                                placeholder="예: iu0516@naver.com" class="max-width"></td>
                    </tr>
                    <tr>
                        <th>주소<span class="icon">*</span></th>
                        <td>
                            <input type="text" maxlength="3" size="3" class="form-box address_num"> -
                            <input type="text" maxlength="2" size="2" class="form-box address_num">
                            <input type="button" class="btn gray_btn" value="우편번호 찾기" class="address_btn btn_form2">
                            <input type="text" name="address" maxlength="20"
                                class="address_box two-line-input-margin">
                        </td>
                    </tr>
                    <tr>
                        <th>상세 주소</th>
                        <td><input type="text" name="address" maxlength="20"
                                class="max-width"></td>
                    </tr>
                    <tr>
                        <th>성별</th>
                        <td><input type="radio" name="gender" value="m">남자<input type="radio"
                                name="gender" value="w">여자<input type="radio" name="gender"
                                value="n">선택안함</td>
                    </tr>
                    <tr>
                        <th>생년월일</th>
                        <td>
                            <input type="text" name="birth_year" maxlength="4" placeholder="YYYY"
                                class="join_default_birthday border-right-none">
                            <input type="text" name="birth_month" maxlength="2" placeholder="MM"
                                class="join_default_birthday border-side-none">
                            <input type="text" name="birth_day" maxlength="2" placeholder="DD"
                                class="join_default_birthday border-left-none">
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="Order_button"> 
                <button class="order">수정하기</button> <br />
           		<button class="order">탈퇴하기</button>
            </div>
            <br><br>
        </form>
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