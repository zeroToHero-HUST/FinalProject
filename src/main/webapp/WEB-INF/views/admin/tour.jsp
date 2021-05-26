<%--
  Created by IntelliJ IDEA.
  User: phamtuanson
  Date: 24/05/2021
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/admin/tour.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/sidebar.css" />
</head>
<body>

<%@ include file="/WEB-INF/views/fragments/sidebar.jspf" %>

    <!-- begin: tour-edit -->
    <div class="tour-panel">
        <div class="card">
            <div class="card-header">
                <h4>Edit tour</h4>
            </div>
            <div class="card-body">
                <form action="">
                    <div class="city-id"><input type="text" placeholder="City-id"></div>
                    <div class="name"><input type="text" placeholder="Name"></div>
                    <div class="description"><textarea name=""  cols="30" rows="10" placeholder="Description"></textarea></div>
                    <div class="duration"><input type="text" name=""  placeholder="Duration"></div>
                    <div class="rating"><input type="text" name="" id="" placeholder="Rating"></div>
                    <div class="price"><input type="text" placeholder="Price"></div>
                    <div class="img" ><input  type="file" accept="image/*"></div>
                    <button type="submit">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <!-- end: tour-edit -->

    <!-- begin: tour-list -->
    <div class="tour-list">
        <div class="card">
            <div class="card-header">
                <h4>Tour List</h4>
            </div>
            <div class="card-body">
                <table>
                    <thead>
                    <th class="id">Id</th>
                    <th class="city-id">City-id</th>
                    <th class="name">Name</th>
                    <th class="description">Description</th>
                    <th class="duration">Duration</th>
                    <th class="rating">Rating</th>
                    <th class="price">Price</th>
                    <th class="img">Img</th>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>123456</td>
                        <td>Ha noi - hai phong</td>
                        <td>fawf aesf awef adsf awe fas df awf as f aw fa sf wa fasd faw f asdf aw f asdf awg a w f adf aw g fsa g dj f tku tr kur  tkr  rh f wef a dfadsf</td>
                        <td>5/2 - 31/4</td>
                        <td>5</td>
                        <td>5.000.000</td>
                        <td>abc</td>
                        <td><button type="submit">Delete</button></td>
                        <td><button type="submit">Change</button></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- end: tour-list -->
</body>
</html>
