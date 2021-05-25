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
</head>
<body>
<!-- begin: body  -->
<!-- begin: user-edit -->
<div class="user-panel">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h4>Edit profile</h4>
            </div>
            <div class="card-body">
                <form action="">
                    <div class="first-name"><input type="text" name="" id="" placeholder="First-name"></div>
                    <div class="last-name"><input type="text" name="" id="" placeholder="Last-name"></div>
                    <div class="email"><input type="email" placeholder="Email"></div>
                    <div class="password"><input type="password" name="" id="" placeholder="Password"></div>
                    <div class="img" ><input  type="file" accept="image/*"></div>
                    <button type="submit">Submit</button>
                </form>
            </div>
        </div>
        <div class="profile">
            <div class="card-image">
                <img src="./avatar.jpg" alt="" class="avatar">
            </div>
            <div class="card-body">
                <h4 class="name">Pham Tuan Son</h4>
                <small class="email">abcacb123@gmail.com</small>
                <small class="password">Pass: 123456</small>
            </div>
        </div>
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
                    <td>123456</td>
                    <td>Ha noi - hai phong</td>
                    <td>5/2/2021</td>
                    <td>31/4/2021</td>
                    <td>qweq1231q123</td>
                    <td>5.000.000</td>
                    <td>6/2/2021</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- end: booking-list -->
<!-- end: body  -->
</body>
</html>
