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
        <c:forEach var="page" begin="1" end = "${numPage}">
        <div class="blog-list">
            <c:forEach var = "blog" items="${allBlogs}">
                    <c:set value="${page*5}" var = "index"/>
                    <c:if test="${blog.blogId <= index}">
                    <c:if test="${blog.blogId > index-5}">
                    <div class="blog-item">
                        <div class="blog-item-img">
                            <img src="${blog.images}" alt="">
                            <a href="${pageContext.request.contextPath}/singleBlog/single-blog?BlogId=${blog.blogId}" class="blog-item-date">
                                <h3>${blog.date}</h3>
                                <p>${blog.month}</p>
                            </a>
                        </div>

                        <div class="blog-details">
                            <a href="${pageContext.request.contextPath}/singleBlog/single-blog?TotalBlogs=${totalBlog}&BlogId=${blog.blogId}" class="blog-title">
                                <h2>${blog.title}</h2>
                            </a>
                            <ul class="blog-info-link">


                            </ul>
                        </div>
                    </div>
                    </c:if>
                    </c:if>
            </c:forEach>

        </div>
        </c:forEach>

        <!-- end: blog-item page1 -->

        <!-- Blog slideshow -->
        <div class="blog-nav">
            <ul>
                <li><button class="nav-arrow" onclick="plusDivs(-1)">❮</button></li>
                <c:forEach var = "indexPage" begin="1" end="${numPage}">
                    <li><button class="nav-num" onclick="currentDiv(${indexPage})">${indexPage}</button></li>
                </c:forEach>

                <li><button class="nav-arrow" onclick="plusDivs(1)">❯</button></li>
            </ul>
        </div>

    </div>
</div>
<script>
    //page blog
    //begin: script slideshow blog
    var slide = 1;
    showDivs(slide);

    function plusDivs(n) {
        showDivs(slide += n);
    }

    function currentDiv(n) {
        showDivs(slide = n);
    }
    function showDivs(n) {

        var i;
        var x = document.getElementsByClassName("blog-list");
        var num_btn = document.getElementsByClassName("nav-num");
        if (n > x.length) {slide = 1}
        if (n < 1) {slide = x.length}
        //x.length.toString()

        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        for (i = 0; i < num_btn.length; i++) {
            num_btn[i].className = num_btn[i].className.replace(" num-active", "");
        }
        x[slide-1].style.display = "block";
        num_btn[slide-1].className += " num-active";
    }

    //end: script slideshow blog
</script>
<!-- End: content -->
<script src="${pageContext.request.contextPath}/resources/javascripts/header.js" defer></script>
<%@ include file="/WEB-INF/views/fragments/footer.jspf" %>

</body>
</html>
