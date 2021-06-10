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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/pagination.css" />
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
            <form action="blog" method="post">
                <div class="title"><input type="text" placeholder="Title" name="title"></div>
                <div><input type="url" placeholder="Image URL" name="image"></div>
                <div class="content"><textarea name="content"  cols="30" rows="10" placeholder="Content"></textarea></div>
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
                        <td><a href="${blog.images}">Link</a> </td>
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

    <div id="pagination-wrapper">
        <!--Active and Hoverable Pagination-->
        <div class="page-header"></div>
        <ul id="pagination">
            <li>
                <a class="" href="blog?page=1">«</a>
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
                            <a href="blog?page=${i}">${i}</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>

            <li>
                <a href="blog?page=${nOfPages}">»</a>
            </li>
        </ul>
    </div><!--wrapper-->
</div>
<!-- end: blog-list -->
</body>
</html>
