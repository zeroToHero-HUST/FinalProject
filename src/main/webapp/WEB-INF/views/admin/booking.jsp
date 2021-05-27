<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phamtuanson
  Date: 24/05/2021
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/admin/booking.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/sidebar.css" />
</head>
<body>

<%@ include file="/WEB-INF/views/fragments/sidebar.jspf" %>

    <div class="booking">
        <!-- begin: booking-edit -->
        <div class="booking-panel">
            <div class="card">
                <%--<div class="card-header">
                    <h4>Edit booking</h4>
                </div>
                <div class="card-body">
                    <form action="">
                        <div class="destination-id"><input type="text" placeholder="Destination-id"></div>
                        <div class="name"><input type="text" placeholder="Name"></div>
                        <div class="start-date"><input type="text" name=""  placeholder="Start-date"></div>
                        <div class="end-date"><input type="text" name=""  placeholder="End-date"></div>
                        <div class="user-id"><input type="text" placeholder="User-id"></div>

                        <div class="price"><input type="text" placeholder="Price"></div>
                        <button type="submit">Submit</button>
                    </form>
                </div>--%>
            </div>
        </div>
        <!-- end: booking-edit -->

        <!-- begin: booking-list -->
        <div class="booking-list">
            <div class="card">
                <div class="card-header">
                    <h4>booking List</h4>
                </div>
                <div class="card-body">
                    <table>
                        <thead>
                        <th class="id">bookingId</th>
                        <th class="name">Name</th>
                        <th class="start-date">Start-date</th>
                        <th class="end-date">End-date</th>
                        <th class="user-id">User-id</th>
                        <th class="price">Price</th>
                        <th class="created-at">Created-at</th>
                        </thead>
                        <tbody>
                        <c:forEach var="booking" items="${allBookings}">
                            <tr>
                                <td>${booking.bookingId}</td>
                                <td>${booking.tourTitle}</td>
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
    </div>
</body>
</html>
