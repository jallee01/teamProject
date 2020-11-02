<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SM Admin</title>
</head>
<link rel="stylesheet" type="text/css" href="css/admin_common.css">
<script src="js/jquery-admin.js"></script>
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/jquery-migrate-1.4.1.min.js"></script>
<script src="js/jquery-ui.min.js"></script>

<body>
    <div class="main_content">
        <div class="left_content">
            <div class="left_wrapper">
                <header>
                    <div class="header_logo">
                        <h4>
                            <a href="loginSuccess.do"><img src="images/logo_white.png" class="logo_img"></a><br />
                            <a class="header_text" href="loginSuccess.do">For Administrator</a>
                        </h4>
                    </div>
                    <div class="profile_size border_circle">
                        <img src="images/profile_img.png" class="profile_picture">
                    </div>
                    <h4><a class="welcome">admin님 반갑습니다.</a></h4>
                    <h4><a href="../index.do" class="text_underline">로그아웃</a></h4>
                    <nav>
                        <ul class="side_nav">
                            <li class="sidebar-title">회원관리</li>
                            <li><a href="adminSuccess.do" class="nav_link nav_item">회원목록</a></li>
                            <hr class="sidebar">
                            <li class="sidebar-title">게시글관리</li>
                            <li><a href="postList.do" class="nav_link nav_item">게시글 목록</a></li>
                            <hr class="sidebar">
                        </ul>
                    </nav>
                </header>
            </div>
        </div>
        <div class="right_content">
            <div class="right_wrapper">
                <div class="main">
                    <h2>회원 목록</h2>
                    <table class="table">
                        <tr>
                            <td>순번</td>
                            <td>이름</td>
                            <td>ID</td>
                            <td>비밀번호</td>
                            <td>이메일</td>
                            <td>주소</td>
                            <td>성별</td>
                            <td>생년월일</td>
                        </tr>
                        <tr onClick="location.href='userInfo.do'">
                            <td>1</td>
                            <td>홍길동</td>
                            <td>hong478</td>
                            <td>q1w2e3r4</td>
                            <td>honggildong1543@gmail.com</td>
                            <td>서울특별시 동대문구 이문로 11-11<b>(예시)</b></td>
                            <td>남자</td>
                            <td>1987년 8월 4일</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>홍길순</td>
                            <td>hong47778</td>
                            <td>q1w2e3r4535</td>
                            <td>honggi1111@gmail.com</td>
                            <td>서울특별시 동대문구 봉천로 333-22<b>(예시)</b></td>
                            <td>여자</td>
                            <td>1934년 6월 12일</td>
                        </tr>
                    </table>
                    <div class="paging">
                        <a href="#" class="first">첫 페이지 </a>
                        <a href="#" class="prev">이전 페이지</a>
                        <span>
                            <a href="#" class="on">1</a>
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
                </div>
            </div>
        </div>
</body>

</html>