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
                <div class="card-header">
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
                </div>
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
                        <th class="id">Id</th>
                        <th class="description-id">description-id</th>
                        <th class="name">Name</th>
                        <th class="start-date">Start-date</th>
                        <th class="end-date">End-date</th>
                        <th class="user-id">User-id</th>
                        <th class="price">Price</th>
                        <th class="created-at">Created-at</th>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>123456</td>
                            <td>Ha noi - hai phong</td>
                            <td>5/2/2021</td>
                            <td>31/4/2021</td>
                            <td>qweq1231q123</td>
                            <td>5.000.000</td>
                            <td>6/2/2021</td>
                            <td><button type="submit">Delete</button></td>
                            <td><button type="submit">Change</button></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- end: booking-list -->
    </div>
</body>
</html>
