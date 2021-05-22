<%--
  Created by IntelliJ IDEA.
  User: Hoang
  Date: 5/22/2021
  Time: 11:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/sign_up.css" />
</head>
<body>
<div id="sign_up-link">
    <p>Already have an account?
        <a href="" class="sign_up-btn">Log in</a>
        <a href="" class="need-help">Need help?</a>
    </p>
</div>

<div id="content">
    <h2>Type form</h2>
    <div class="form-control">
        <form action="">
            <div class="form-fistname">
                <label for="firstname">First Name</label>
                <input type="text" placeholder="Bruce" name="" id="firstname">
            </div>
            <div class="form-lastname">
                <label for="lastname">Last Name</label>
                <input type="text" placeholder="Wayne" name="" id="lastname">
            </div>
            <div class="form-email">
                <label for="email">Email</label>
                <input type="email" placeholder="bruce@wayne.com" name="" id="email">
            </div>
            <div class="form-password">
                <label for="password">Password</label>
                <input type="password" placeholder="At least 8 charecters" name="" id="password">
            </div>
            <input type="submit" value="Creat my free acount">
        </form>
    </div>
</div>
</body>
</html>
