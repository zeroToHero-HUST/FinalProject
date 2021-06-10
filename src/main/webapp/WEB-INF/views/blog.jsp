<%--
  Created by IntelliJ IDEA.
  User: Hoang
  Date: 5/21/2021
  Time: 8:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/header.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/header-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/font/themify-icons.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/blog.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/blog-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/footer.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/footer-resp.css" />

</head>
<body>

<%@ include file="/WEB-INF/views/fragments/header.jspf" %>

<!-- begin: slide -->
<div id="slider">
    <div class="slider-contents fade">
        <h3>Blog</h3>
        <p>Pixel Perfect Design With Awesome Contents</p>
    </div>
</div>
<!-- end: slide -->

<!-- Begin: content -->
<div id="content">
    <!-- Blog section -->
    <div class="blog-section">
        <!-- blog-list-page 1 (5item) -->
        <div class="blog-list">
            <c:forEach var = "blog" items="${allBlogs}">
                    <div class="blog-item">
                        <div class="blog-item-img">
                            <img src="${blog.images}" alt="">
                            <a href="${pageContext.request.contextPath}/singleBlog?blogId=${blog.blogId}" class="blog-item-date">
                                <h3>${blog.date}</h3>
                                <p>${blog.month}</p>
                            </a>
                        </div>

                        <div class="blog-details">
                            <a href="${pageContext.request.contextPath}/singleBlog?blogId=${blog.blogId}" class="blog-title">
                                <h2>${blog.title}</h2>
                            </a>
                            <ul class="blog-info-link">


                            </ul>
                        </div>
                    </div>
            </c:forEach>

        </div>
        <!-- end: blog-item page1 -->

        <!-- Blog slideshow -->
        <div class="blog-nav">
            <ul>
                <li>
                    <button class="nav-arrow"><a style="text-decoration: none" href="blog">❮</a></button>
                </li>

                <c:forEach begin="${firstPage}" end="${lastPage}" var="i">
                    <c:choose>
                        <c:when test="${currentPage eq i}">
                            <li>
                                <button class="nav-num">${i}</button>

                            </li>
                        </c:when>
                        <c:otherwise>
                            <li>
                                <button class="nav-num"><a style="text-decoration: none" href="blog?page=${i}">${i}</a> </button>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>

                <li>
                    <button class="nav-arrow"><a style="text-decoration: none" href="blog?page=${nOfPages}">❯</a></button>
                </li>
            </ul>
        </div>

    </div>
</div>

<!-- End: content -->
<script src="${pageContext.request.contextPath}/resources/javascripts/header.js" defer></script>
<%@ include file="/WEB-INF/views/fragments/footer.jspf" %>

</body>
</html>
