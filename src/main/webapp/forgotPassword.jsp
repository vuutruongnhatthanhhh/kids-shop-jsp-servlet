<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 27/10/2023
  Time: 3:26 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Quên mật khẩu</title>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:300);

        a {
            text-decoration: none; /* Loại bỏ gạch chân */
            color: white; /* Đặt màu chữ là màu trắng */
        }

        .login-page {
            width: 360px;
            padding: 8% 0 0;
            margin: auto;
        }
        .form {
            border-radius: 30px;
            position: relative;
            z-index: 1;
            background: #FFFFFF;
            max-width: 360px;
            margin: 0 auto 100px;
            padding: 45px;
            text-align: center;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }
        .form input {
            border-radius: 30px;
            font-family: "Roboto", sans-serif;
            outline: 0;
            background: #f2f2f2;
            width: 100%;
            border: 0;
            margin: 0 0 15px;
            padding: 15px;
            box-sizing: border-box;
            font-size: 14px;
        }
        .form button {
            border-radius: 30px;
            font-family: "Roboto", sans-serif;
            text-transform: uppercase;
            outline: 0;
            background: #ffacac;
            width: 100%;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3s ease;
            transition: all 0.3s ease;
            cursor: pointer;
        }
        .form button:hover,.form button:active,.form button:focus {
            background: #ffacac;
        }
        .form .message {
            margin: 15px 0 0;
            color: #b3b3b3;
            font-size: 12px;
        }
        .form .message a {
            color: #ffacac;
            text-decoration: none;
        }
        .form .register-form {
            display: none;
        }
        .container {
            position: relative;
            z-index: 1;
            max-width: 300px;
            margin: 0 auto;
        }
        .container:before, .container:after {
            content: "";
            display: block;
            clear: both;
        }
        .container .info {
            margin: 50px auto;
            text-align: center;
        }
        .container .info h1 {
            margin: 0 0 15px;
            padding: 0;
            font-size: 36px;
            font-weight: 300;
            color: #1a1a1a;
        }
        .container .info span {
            color: #4d4d4d;
            font-size: 12px;
        }
        .container .info span a {
            color: #000000;
            text-decoration: none;
        }
        .container .info span .fa {
            color: #EF3B3A;
        }
        body {
            background: #ffacac; /* fallback for old browsers */
            background: #ffacac;
            background: #ffacac;
            font-family: "Arial", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
    </style>
</head>
<body>
<div class="login-page">
    <div class="form">

        <form action="ForgotPassword" class="login-form" method="post">






            <input type="text" placeholder="Nhập tên tài khoản để lấy lại mật khẩu" name="username"/>

            <button type="submit"><a>Lấy lại mật khẩu</a></button>
            <%
                String message = (String) request.getSession().getAttribute("message");
                if (message != null && !message.isEmpty()) {
            %>
            <p style="color: red"> <%= message %> </p>
            <%
                    // Đặt lại giá trị message sau khi đã hiển thị
                    request.getSession().removeAttribute("message");
                }
            %>


        </form>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $('.message a').click(function(){
        $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
    });
</script>
</body>
</html>
