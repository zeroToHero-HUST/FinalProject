<%--
  Created by IntelliJ IDEA.
  User: Hoang
  Date: 5/22/2021
  Time: 11:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Đăng ký</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/sign_up.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/sign_up-resp.css" />
</head>
<body>
<div id="sign_up-link">
    <p>Bạn đã đăng kí tài khoản?
        <a href="log-in" class="sign_up-btn">Đăng nhập</a>
    </p>
</div>

<div id="content">
    <h2>Travello</h2>
    <div class="form-control">
        <form action="sign-up" method="post">
            <div class="form-fistname">
                <label for="firstname">Tên</label>
                <input type="text" placeholder="Bruce" name="firstName" id="firstname" maxlength="99" required>
            </div>
            <div class="form-lastname">
                <label for="lastname">Họ</label>
                <input type="text" placeholder="Wayne" name="lastName" id="lastname" maxlength="99" required>
            </div>
            <div class="form-email">
                <label for="email">Email</label>
                <input type="email" placeholder="bruce@wayne.com" name="email" id="email" required>
            </div>
            <div class="form-password">
                <label for="password">Mật khẩu</label>
                <input type="password" placeholder="Gồm ít nhất 6 kí tự" name="password" id="password" minlength="6" maxlength="25" required>
            </div>

            <c:if test="${error}">
                <p>Địa chỉ email này đã được sử dung. Vui lòng chọn địa chỉ khác.</p>
            </c:if>

            <input type="submit" value="Đăng kí tài khoản">
        </form>
    </div>
</div>
</body>
</html>
