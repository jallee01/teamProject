<!-- admin 회원 정보 수정 페이지 -->
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

<body>
    <div class="main_content">
        <div class="left_content">
            <div class="left_wrapper">
                <header>
                    <div class="header_logo">
                        <h4>
                            <a href="AD_ME_01.html"><img src="images/logo_white.png" class="logo_img"></a><br />
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
                <div class="main none-bg">
                    <h2>회원 정보 수정</h2>
                    <div class="fix-section">
                        <form method="post" name="form" class="update_member_form">
                            <table class="table">
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
                                        <th class="align-bottom-text">주소<span class="icon">*</span></th>
                                        <td>
                                            <input type="text" name="address_num" maxlength="5" size="5" class="address_num_size">
                                            <input type="text" name="address" maxlength="20" class="address_size">
                                            <input type="button" class="btn gray_btn" value="우편번호 찾기" class="address_btn btn_form2">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th style="padding-bottom: 20px;">상세 주소</th>
                                        <td><input type="text" name="address" maxlength="20"
                                                class="max-width"></td>
                                    </tr>
                                    <tr>
                                        <th>성별</th>
                                        <td><input type="radio" name="gender" value="m">남자 <input type="radio"
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
                            <div class="detail_btn_list"> 
                                <button class="btn gray_border_btn">수정하기</button>
                                <button class="btn gray_btn" type="button" onclick="history.back();">돌아가기</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>