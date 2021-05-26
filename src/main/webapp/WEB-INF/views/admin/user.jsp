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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/admin/user.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/sidebar.css" />
</head>
<body>

<%@ include file="/WEB-INF/views/fragments/sidebar.jspf" %>

<!-- begin: user -->
<div class="user-panel">
    <div class="card">
        <div class="card-header">
            <h4>Add/Edit user: <span id="userEdited"></span></h4>
            <c:if test="${result == -1}">
                <h4>Tạo mới hoặc cập nhật thất bại</h4>
            </c:if>
        </div>
        <div class="card-body">
            <form action="user" method="post">
                <div>
                    <input id="inputFormUserId" name="userId" type="text" hidden readonly>
                </div>
                <div class="first-name">
                    <input id="inputFormFirstName" type="text" name="firstName"  placeholder="First-name">
                </div>
                <div class="last-name">
                    <input id="inputFormLastName" type="text" name="lastName"  placeholder="Last-name">
                </div>
                <div class="email">
                    <input id="inputFormEmail" type="email" name="email" placeholder="Email">
                </div>
                <div class="role">
                    <input id="inputFormRole" list="roleList" name="role" placeholder="Role">
                    <datalist id="roleList">
                        <option value="admin"></option>
                        <option value="user"></option>
                        <option value="blogger"></option>
                    </datalist>
                </div>
                <div class="password">
                    <input type="password" name="password" id="inputFormPassword" placeholder="Password" minlength="6">
                </div>
                <div class="img" ><input  type="file" accept="image/*"></div>
                <button type="submit">Submit</button>
            </form>
        </div>
    </div>
</div>
<!-- end: user-edit -->

<!-- begin: user-list -->
<div class="user-list">
    <div class="card">
        <div class="card-header">
            <h4>User List</h4>
        </div>
        <div class="card-body">
            <form action="user/delete" method="post" id="delete-user" name="delete-user"></form>
            <input id="formDelUserID" name="userId" type="text" form="delete-user" hidden>
            <input id="formDelUserEmail" name="email" type="email" form="delete-user" hidden>
            <table>
                <thead>
                <th class="id">User ID</th>
                <th class="email">Email</th>
                <th class="first-name">First name</th>
                <th class="last-name">Last name</th>
                <th class="role">Role</th>
                <th class="img">Profile image</th>
                <th class="created-at">Created at</th>
                <th class="country">Country</th>

                </thead>
                <tbody>
                <c:forEach var="userItem" items="${usersList}" varStatus="loop">
                    <tr>
                        <td class="${'a' += loop.index}" id="userId">${userItem.userId}</td>
                        <td class="${'a' += loop.index}" id="email">${userItem.email}</td>
                        <td class="${'a' += loop.index}" id="firstName">${userItem.firstName}</td>
                        <td class="${'a' += loop.index}" id="lastName">${userItem.lastName}</td>
                        <td class="${'a' += loop.index}" id="role">${userItem.role}</td>
                        <td class="${'a' += loop.index}" id="profileImage">${userItem.profileImage}</td>
                        <td class="${'a' += loop.index}" id="createdAt">${userItem.createdAt}</td>
                        <td class="${'a' += loop.index}" id="countryId">${userItem.countryId}</td>
                        <td><button type="button" class="delBtn" id="${'a' += loop.index}" form="delete-user">Delete</button></td>
                        <td><button type="button" class="editBtn" id="${'a' += loop.index}">Edit</button></td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>

    <div id="pagination-wrapper">
        <!--Active and Hoverable Pagination-->
        <div class="page-header"></div>
        <ul id="pagination">
            <li>
                <a class="" href="user?page=1">«</a>
            </li>

            <c:forEach begin="${firstPage}" end="${lastPage}" var="i">
                <c:choose>
                    <c:when test="${currentPage eq i}">
                        <li>
                            <a href="" class="active">${i}</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a href="user?page=${i}">${i}</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>

            <li>
                <a href="user?page=${nOfPages}">»</a>
            </li>
        </ul>
    </div><!--wrapper-->
</div>
<!-- end: user-list -->



<script src="${pageContext.request.contextPath}/resources/javascripts/admin/user.js" defer></script>
</body>
</html>
