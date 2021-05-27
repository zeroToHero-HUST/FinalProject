<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/font/themify-icons.css" />

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
                    <div id="list1" class="dropdown-check-list" tabindex="100">
                        <span class="anchor">Select Fruits</span>
                        <ul class="items">
                            <li><input type="checkbox" />Apple </li>
                            <li><input type="checkbox" />Orange</li>
                            <li><input type="checkbox" />Grapes </li>
                            <li><input type="checkbox" />Berry </li>
                            <li><input type="checkbox" />Mango </li>
                            <li><input type="checkbox" />Banana </li>
                            <li><input type="checkbox" />Tomato</li>
                        </ul>
                    </div>
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
                    <th class="id">tourId</th>
                    <th class="name">Title</th>
                    <th class="city-id">Cities list</th>
                    <th class="description">Description</th>
                    <th>Images</th>
                    <th class="duration">Duration</th>
                    <th class="rating">Rating</th>
                    <th class="price">Price</th>
                    </thead>
                    <tbody>
                    <c:forEach var="tourItem" items="${toursList}" varStatus="loop">
                        <tr>
                            <td>${tourItem.tourId}</td>
                            <td>${tourItem.title}</td>
                            <td>
                                <c:forEach var="city" items="${tourItem.cities}">
                                    ${citiesList[city.cityId] += ", "}
                                </c:forEach>
                            </td>
                            <td>${tourItem.description}</td>
                            <td>${tourItem.images}</td>
                            <td>${tourItem.duration}</td>
                            <td>${tourItem.rating}</td>
                            <td>${tourItem.price}</td>
                            <td><button type="submit">Delete</button></td>
                            <td><button type="submit">Change</button></td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- end: tour-list -->
<script src="${pageContext.request.contextPath}/resources/javascripts/admin/tour.js" defer></script>
</body>
</html>
