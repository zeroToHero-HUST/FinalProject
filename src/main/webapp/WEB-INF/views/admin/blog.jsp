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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/admin/blog.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/sidebar.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/font/themify-icons.css" />

</head>
<body>

<%@ include file="/WEB-INF/views/fragments/sidebar.jspf" %>

<!-- begin: blog-edit -->
<div class="blog-panel">
    <div class="card">
        <div class="card-header">
            <h4>Edit blog</h4>
        </div>
        <div class="card-body">
            <form action="">
                <div class="title"><input type="text" placeholder="Title"></div>
                <div class="content"><textarea name=""  cols="30" rows="10" placeholder="Content"></textarea></div>
                <div class="img" ><input  type="file" accept="image/*"></div>
                <button type="submit">Submit</button>
            </form>
        </div>
    </div>
</div>
<!-- end: blog-edit -->

<!-- begin: blog-list -->
<div class="blog-list">
    <div class="card">
        <div class="card-header">
            <h4>Blog List</h4>
        </div>
        <div class="card-body">
            <table>
                <thead>
                <th class="id">blogId</th>
                <th class="title">Title</th>
                <th class="content">Content</th>
                <th class="image">Images</th>
                <th class="user-create">User created</th>
                <th class="created">Created</th>
                <th class="updated">Updated</th>
                </thead>
                <tbody>
                <c:forEach var="blog" items="${allBlogs}">
                    <tr>
                        <td>${blog.blogId}</td>
                        <td>${blog.title}</td>
                        <td>${blog.content}</td>
                        <td>${blog.images}</td>
                        <td>${blog.userId}</td>
                        <td>${blog.createdAt}</td>
                        <td>${blog.updatedAt}</td>

                        <td><button type="submit">Delete</button></td>
                        <td><button type="submit">Change</button></td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- end: blog-list -->
</body>
</html>
