<%--
  Created by IntelliJ IDEA.
  User: Hoang
  Date: 5/22/2021
  Time: 11:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/login.css" />
</head>
<body>
<div id="sign_up-link">
    <p>Don't have an account yet?
        <a href="" class="sign_up-btn">Sign up</a>
        <a href="" class="need-help">Need help?</a>
    </p>
</div>

<div id="content">
    <h2>Type form</h2>
    <h3>Hello</h3>
    <div class="form-control">
        <form action="log-in" method="post">
            <div class="form-email">

                <label for="email">Email</label>
                <input type="email" placeholder="bruce@wayne.com" name="email" id="email" required>
            </div>
            <div class="form-pass">

                <label for="password">Password</label>
                <input type="password" placeholder="At least 6 charecters" name="password" id="password" minlength="6" maxlength="25" required>
            </div>
            <a href="">I forgot my password</a>
            <c:if test="${error}">
                <p>Email hoặc mật khẩu không đúng.</p>
            </c:if>
            <input type="submit" value="Log in to Typeform">
        </form>
    </div>
</div>
</body>
</html>
