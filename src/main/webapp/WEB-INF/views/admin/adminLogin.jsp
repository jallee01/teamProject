<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SM Admin - Login</title>
</head>
<link href="css/admin_common.css" type="text/css" rel="stylesheet">
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/jquery-migrate-1.4.1.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery-admin.js"></script>

<body>
            <div class="login_container">
                <form action="adminLogin.do" method="post" class="login_frm">
                    <h4>
                        <img src="images/admin_logo_2.png" class="logo_img"><br/>
                        <span class="header_text">For Administrator</span>
                    </h4>
                    <input type="text" name="member_id" placeholder="아이디"><br/>
                    <input type="text" name="password" placeholder="비밀번호">
                    <div class="checkbox">
                        <label><input type="checkbox" value="remember_me">로그인 정보 저장</label>
                    </div>
                    <button class="btn green_btn max_btn" type="submit">로그인</button>
                </form>
            </div>
</body>
</html>