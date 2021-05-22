<%--
  Created by IntelliJ IDEA.
  User: Hoang
  Date: 5/22/2021
  Time: 11:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <form action="">
            <div class="form-email">

                <label for="email">Email</label>
                <input type="email" placeholder="bruce@wayne.com" name="" id="email">
            </div>
            <div class="form-pass">

                <label for="password">Password</label>
                <input type="password" placeholder="At least 8 charecters" name="" id="password">
            </div>
            <a href="">I forgot my password</a>
            <input type="submit" value="Log in to Typeform">
        </form>
    </div>
</div>
</body>
</html>
