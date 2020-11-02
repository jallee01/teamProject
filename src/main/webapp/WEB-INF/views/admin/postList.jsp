<!-- admin 게시글 목록 페이지 -->
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
<body>
<div class="main_content">
    <div class="left_content">
        <div class="left_wrapper">      
            <header>
                <div class="header_logo">
                    <h4>
                        <a href="AD_ME_01.html"><img src="images/logo_white.png" class="logo_img"></a><br/>
                        <a class="header_text" href="AD_ME_01.html">For Administrator</a>
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
                <h2>게시글 목록</h2>
                <input type="button" class="btn gary_btn write_board_btn" value="게시글 등록" onclick="location.href='posting.do'">
                <table class="table product_table">
                    <tr>
                        <td>순번</td>
                        <td>제목</td>
                        <td>소제목</td>
                        <td>판매단위/중량</td>
                        <td>배송구분</td>
                        <td>포장타입</td>
                        <td>작성자</td>
                        <td>작성일</td>
                        <td>작성자 이메일</td>
                    </tr>
                    <tr onClick="location.href='postInfo.do'"> <!-- 연결 방식 변경해야함 // 임시용-->
                        <td>1</td>
                        <td>[전라남도 해남] 호박고구마 3kg</td>
                        <td>촉촉하고 부드러운 호박고구마</td>
                        <td>1박스 / 3kg</td>
                        <td>택배</td>
                        <td>박스포장</td>
                        <td>홍길동</td>
                        <td>2020년 5월 2일</td>
                        <td>honggildong1543@gmail.com</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>[강원도 태백] 고랭지 배추 10kg</td>
                        <td>절임배추 걱정은 끝! 강원 고랭지 배추</td>
                        <td>1박스 / 10kg</td>
                        <td>유통 거래</td>
                        <td>박스포장</td>
                        <td>홍길순</td>
                        <td>2020년 6월 5일</td>
                        <td>honggi1111@gmail.com</td>  
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