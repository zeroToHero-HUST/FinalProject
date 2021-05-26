<%--
  Created by IntelliJ IDEA.
  User: phamtuanson
  Date: 25/05/2021
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/header.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/user.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/font/themify-icons.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/footer.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/header-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/user-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/footer-resp.css" />

</head>
<body>

<%@ include file="/WEB-INF/views/fragments/header.jspf" %>

<!-- begin: body  -->
<!-- begin: user-edit -->
<div class="user-panel">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h4>Edit profile</h4>
                <c:if test="${result == -1}">
                    <h4>Tạo mới hoặc cập nhật thất bại</h4>
                </c:if>
            </div>
            <div class="card-body">
                <form action="me" method="post">
                    <div>
                        <input type="text" name="userId" value="${dbUser.userId}" readonly>
                    </div>
                    <div class="first-name">
                        <input type="text" name="firstName"  value="${dbUser.firstName}">
                    </div>
                    <div class="last-name">
                        <input type="text" name="lastName"  value="${dbUser.lastName}">
                    </div>
                    <div class="email">
                        <input type="email" name="email" value="${dbUser.email}" readonly>
                    </div>
                    <div class="password">
                        <input type="password" name="password"  placeholder="Password">
                    </div>
                    <div class="img" >
                        <input  type="file" accept="image/*">
                    </div>
                    <button type="submit">Submit</button>
                </form>
            </div>
        </div>
        <%--<div class="profile">
            <div class="card-image">
                <img src="./avatar.jpg" alt="" class="avatar">
            </div>
            <div class="card-body">
                <h4 class="name">Pham Tuan Son</h4>
                <small class="email">abcacb123@gmail.com</small>
                <small class="password">Pass: 123456</small>
            </div>
        </div>--%>
    </div>

</div>
<!-- end: user-edit -->

<!-- begin: booking-list -->
<div class="booking-list">
    <div class="card">
        <div class="card-header">
            <h4>Booking List</h4>
        </div>
        <div class="card-body">
            <table>
                <thead>
                <th class="description-id">Booking ID</th>
                <th class="name">Name</th>
                <th class="start-date">Start date</th>
                <th class="end-date">End date</th>
                <th class="user-id">User ID</th>
                <th class="price">Price</th>
                <th class="created-at">Created at</th>
                </thead>
                <tbody>
                <c:forEach var="booking" items="${bookings}">
                    <tr>
                        <td>${booking.bookingId}</td>
                        <td>${booking.tourId}</td>
                        <td>${booking.startDate}</td>
                        <td>${booking.endDate}</td>
                        <td>${booking.userId}</td>
                        <td>${booking.price}</td>
                        <td>${booking.createdAt}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- end: booking-list -->
<!-- end: body  -->

<%@ include file="/WEB-INF/views/fragments/footer.jspf" %>
</body>
</html>
