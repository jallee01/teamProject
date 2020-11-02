<!-- admin 회원 상세 정보 페이지 -->
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
							<a href="AD_ME_01.html"><img src="images/logo_white.png"
								class="logo_img"></a><br /> <a class="header_text fc-white"
								href="AD_ME_01.html">For Administrator</a>
						</h4>
					</div>
					<div class="profile_size border_circle">
						<img src="images/profile_img.png" class="profile_picture">
					</div>
					<h4>
						<a class="welcome">admin님 반갑습니다.</a>
					</h4>
					<h4>
						<a href="../index.do" class="text_underline fc-white">로그아웃</a>
					</h4>
					<nav>
						<ul class="side_nav">
							<li class="sidebar-title">회원관리</li>
							<li><a href="adminSuccess.do" class="nav_link nav_item">회원목록</a></li>
							<hr class="sidebar">
							<li class="sidebar-title">게시글관리</li>
							<li><a href="postList.do" class="nav_link nav_item">게시글
									목록</a></li>
							<hr class="sidebar">
						</ul>
					</nav>
				</header>
			</div>
		</div>
		<div class="right_content">
			<div class="right_wrapper">
				<div class="main">
					<h2 class="login_title">(홍길동 회원)님 상세정보</h2>
					<table class="detail_board_member_tb">
						<tr>
							<th>이름</th>
							<td>홍길동</td>
						</tr>
						<tr>
							<th>아이디</th>
							<td>hong478</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td>q1w2e3r4</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>honggildong1543@gmail.com</td>
						</tr>
						<tr>
							<th class="align-bottom-text">주소</th>
							<td>서울특별시 동대문구 이문로 11-11<b>(예시)</b></td>
						</tr>
						<tr>
							<th>성별</th>
							<td>남자</td>
						</tr>
						<tr>
							<th>생년월일</th>
							<td>1987년 8월 4일</td>
						</tr>
					</table>
					<br /> <br />
					<div class="center_btn">
						<button type="submit" class="btn gray_border_btn"
							onClick="location.href='modify.do'">회원정보수정</button>
						<button type="button" class="btn gray_btn"
							onclick="modalOpen('help');">회원정보삭제</button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal-wrap help">
			<div class="modal help">
				<h3 class="title"></h3>
				<div class="content">
					<div class="member_del_value">
						<h2>(홍길동)회원님의 정보를 삭제하시겠습니까?</h2>
						<input type="button" class="btn gray_border_btn" value="삭제하기" />
						<input type="button" class="close-btn btn gray_btn" value="취소하기"
							onclick="modalClose();" />
					</div>
				</div>
			</div>
		</div>
</body>
<script>
	modalClose();
</script>
</html>
