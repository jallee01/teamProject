<!-- admin 게시글 상세 정보 페이지 -->
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
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/jquery-migrate-1.4.1.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery-admin.js"></script>
<body>
<div class="main_content">
    <div class="left_content">
        <div class="left_wrapper">      
            <header>
                <div class="header_logo">
                    <h4>
                        <a href="AD_ME_01.html"><img src="images/logo_white.png" class="logo_img"></a><br/>
                        <a class="header_text fc-white" href="AD_ME_01.html">For Administrator</a>
                    </h4>
                </div>              
                <div class="profile_size border_circle">
                    <img src="images/profile_img.png" class="profile_picture">
                </div>
                    <h4><a class="welcome">admin님 반갑습니다.</a></h4>
                    <h4><a href="../index.do" class="text_underline fc-white">로그아웃</a></h4>
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
            <h2 class="login_title">게시글 상세 정보</h2>
                <table class="detail_board_member_tb detail_board_tb">
                    <tr>
                        <th>제목</th>
                        <td>[전라남도 해남] 호박고구마 3kg</td>
                    </tr>
                    <tr>
                        <th>소제목</th>
                        <td>촉촉하고 부드러운 호박고구마</td>
                    </tr>
                    <tr>
                        <th>이미지</th>
                        <td><img src="images/good_pr_img4.jpg" class="admin_list_img_size"></td>
                    </tr>
                    <tr>
                        <th>판매단위/중량</th>
                        <td>1박스 / 3kg</td>
                    </tr>
                    <tr>
                        <th>배송구분</th>
                        <td>택배</td>
                    </tr>
                    <tr>
                        <th>포장타입</th>
                        <td>박스포장</td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td>홍길동</td>
                    </tr>
                    <tr>
                        <th>작성일</th>
                        <td>2020년 5월 2일</td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>honggildong1543@gmail.com</td>
                    </tr>
                </table>
                <br/>
                <div class="center_btn">
                <button type="submit" class="btn gray_border_btn" onClick="location.href='postModify.do'">게시글수정</button>
                <button type="button" class="btn gray_btn" onclick="history.go(-1)">뒤로가기</button>
                </div>
        </div>
    </div>
</div>

</body>
</html> 