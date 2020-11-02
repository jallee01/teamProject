<!-- admin 게시글 등록 페이지 -->
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
            <h2 class="login_title">게시글 등록</h2>
                <table class="detail_board_member_tb detail_board_tb">
                    <tr>
                        <th>제목</th>   
                        <td><input type="text" class="form-box"></td>
                    </tr>
                    <tr>
                        <th>소제목</th>
                        <td><input type="text" class="form-box"></td>
                    </tr>
                    <tr>
                        <th>이미지</th>
                        <td><input type="file"></td>
                    </tr>
                    <tr>
                        <th>판매단위/중량</th>
                        <td><input type="text" class="form-box"></td>
                    </tr>
                    <tr>
                        <th>배송구분</th>
                        <td><input type="text" class="form-box"></td>
                    </tr>
                    <tr>
                        <th>포장타입</th>
                        <td><input type="text" class="form-box"></td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td><input type="text" class="form-box"></td>
                    </tr>
                    <tr>
                        <th>작성일</th>
                        <td><input type="text" class="form-box"></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="text" class="form-box"></td>
                    </tr>
                </table>
                <br/>
                <div class="center_btn">
                <button type="button" class="btn gray_btn" onclick="history.go(-1);">취소하기</button>
                <button type="submit" class="btn gray_border_btn">등록하기</button>
                </div>
        </div>
    </div>
</div>
<div class="modal-wrap help">
    <div class="modal help">
      <h3 class="title"></h3>
      <div class="content">
        <div class="member_del_value">
            <h2>[경상북도 안동] 간고등어 3개입 게시글을 삭제하시겠습니까?</h2>
            <input type="button" class="btn gray_border_btn" value="삭제하기" />
            <input type="button" class="close-btn btn gray_btn" value="취소하기" onclick="history.back();" />
        </div>
      </div>
    </div>
  </div>
</body>
<script>
    modalClose();
</script>
</html> 