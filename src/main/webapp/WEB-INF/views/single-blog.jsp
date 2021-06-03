<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phamtuanson
  Date: 19/05/2021
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/header.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/single-blog.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/font/themify-icons.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/footer.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/header-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/single-blog-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/footer-resp.css" />


</head>
<body>

<%@ include file="/WEB-INF/views/fragments/header.jspf" %>

<!-- begin: slide -->
<div id="slider" style="background-image: url(${thisBlog.images})">
    <div class="slider-contents slider-1 fade" >
        <h3>Miền Bắc</h3>
        <p>Pixel perfect design with awesome contents</p>
        <a href="">Explore Now</a>
    </div>
</div>


<!-- end: slide -->

<!-- begin:single-blog  -->
<div class="single-blog">
    <div class="container">
        <!-- single-post  -->
        <div class="single-post">
            <div class="blog-details">
                <h2>${thisBlog.title}</h2>
                <ul>
                    <li><a href=""><i class="ti-comments"></i> ${totalComments} Comments</a></li>
                </ul>
                ${thisBlog.content}
            </div>
        </div>


        <!-- navigation  -->
        <div class="navigation">
            <p class="like-info">
                <i class="ti-heart"></i>
                Lily and 4
                people like this
            </p>
            <div class="navigation-area">
                <div class="left">
                    <div class="thum"><a href=""><img src="https://preview.colorlib.com/theme/travelo/img/post/xpreview.png.pagespeed.ic.MfX6bhtkdw.webp" alt=""></a></div>
                    <!-- <div class="arrow">
                        <i class="ti-arrow-left"></i>
                    </div> -->
                    <div class="details">
                        <p>Prev Post</p>
                        <a href="${pageContext.request.contextPath}/singleBlog/single-blog?TotalBlogs=${totalBlogs}&BlogId=${prevBlog.blogId}"><h4>${prevBlog.title}</h4></a>
                    </div>
                </div>
                <div class="right">
                    <div class="details">
                        <p>Next Post</p>
                        <a href="${pageContext.request.contextPath}/singleBlog/single-blog?TotalBlogs=${totalBlogs}&BlogId=${nextBlog.blogId}"><h4>${nextBlog.title}</h4></a>
                    </div>
                    <!-- <div class="arrow">
                        <i class="ti-arrow-right"></i>
                    </div> -->
                    <div class="thum"><a href=""><img src="https://preview.colorlib.com/theme/travelo/img/post/xnext.png.pagespeed.ic.IfJdhisCtc.webp" alt=""></a></div>


                </div>

            </div>

        </div>


        <!-- blog-author -->
        <div class="blog-author">
            <div class="media">
                <img src="https://preview.colorlib.com/theme/travelo/img/blog/xauthor.png.pagespeed.ic.ODzYv6n44a.webp" alt="">
                <div class="media-body">
                    <a href=""><h4>Harvard milan</h4></a>
                    <p>${thisBlog.title}</p>
                </div>
            </div>
        </div>


        <!-- comment-area -->
        <div class="comment-area">
            <h4>${totalComments} Comments</h4>
        <c:forEach items="${allComments}" var="comment">

            <div class="comment-list">
                <div class="single-comment">
                    <div class="thumb"><img src="https://preview.colorlib.com/theme/travelo/img/comment/xcomment_1.png.pagespeed.ic.nxxwmEk3HK.webp" alt=""></div>
                    <div class="desc">
                        <p class="comment">${comment.content}</p>
                        <div class="comment-info">
                            <h5><a href="">${comment.userName}</a></h5>
                            <p class="date">${comment.dateTime}</p>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
        </div>
<%--        <div class="comment-area">--%>
<%--            <h4>05 Comments</h4>--%>
<%--            <div class="comment-list">--%>
<%--                <div class="single-comment">--%>
<%--                    <div class="thumb"><img src="https://preview.colorlib.com/theme/travelo/img/comment/xcomment_1.png.pagespeed.ic.nxxwmEk3HK.webp" alt=""></div>--%>
<%--                    <div class="desc">--%>
<%--                        <p class="comment">Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser</p>--%>
<%--                        <div class="comment-info">--%>
<%--                            <h5><a href="">Emilly Blunt</a></h5>--%>
<%--                            <p class="date">December 4, 2017 at 3:12 pm</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="comment-list">--%>
<%--                <div class="single-comment">--%>
<%--                    <div class="thumb"><img src="https://preview.colorlib.com/theme/travelo/img/comment/xcomment_1.png.pagespeed.ic.nxxwmEk3HK.webp" alt=""></div>--%>
<%--                    <div class="desc">--%>
<%--                        <p class="comment">Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser</p>--%>
<%--                        <div class="comment-info">--%>
<%--                            <h5><a href="">Emilly Blunt</a></h5>--%>
<%--                            <p class="date">December 4, 2017 at 3:12 pm</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div><div class="comment-list">--%>
<%--            <div class="single-comment">--%>
<%--                <div class="thumb"><img src="https://preview.colorlib.com/theme/travelo/img/comment/xcomment_1.png.pagespeed.ic.nxxwmEk3HK.webp" alt=""></div>--%>
<%--                <div class="desc">--%>
<%--                    <p class="comment">Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser</p>--%>
<%--                    <div class="comment-info">--%>
<%--                        <h5><a href="">Emilly Blunt</a></h5>--%>
<%--                        <p class="date">December 4, 2017 at 3:12 pm</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div><div class="comment-list">--%>
<%--            <div class="single-comment">--%>
<%--                <div class="thumb"><img src="https://preview.colorlib.com/theme/travelo/img/comment/xcomment_1.png.pagespeed.ic.nxxwmEk3HK.webp" alt=""></div>--%>
<%--                <div class="desc">--%>
<%--                    <p class="comment">Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser</p>--%>
<%--                    <div class="comment-info">--%>
<%--                        <h5><a href="">Emilly Blunt</a></h5>--%>
<%--                        <p class="date">December 4, 2017 at 3:12 pm</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div><div class="comment-list">--%>
<%--            <div class="single-comment">--%>
<%--                <div class="thumb"><img src="https://preview.colorlib.com/theme/travelo/img/comment/xcomment_1.png.pagespeed.ic.nxxwmEk3HK.webp" alt=""></div>--%>
<%--                <div class="desc">--%>
<%--                    <p class="comment">Multiply sea night grass fourth day sea lesser rule open subdue female fill which them Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser</p>--%>
<%--                    <div class="comment-info">--%>
<%--                        <h5><a href="">Emilly Blunt</a></h5>--%>
<%--                        <p class="date">December 4, 2017 at 3:12 pm</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        </div>--%>


        <!-- comment-form -->
        <form action="" method="post" name="comment" id = "comment">
        <input type="text" name ="commentId" value="${totalComments+1}" form = "comment" hidden>
            <input type="text" name ="blogId" value="${thisBlog.blogId}" form = "comment" hidden>
            <input type="text" name="userId" value="${user.userId}" form="comment" hidden>

            <div class="comment-form">
            <h4>Leave a Reply</h4>
            <div class="write-comment">
                <textarea name="content" id="" cols="30" rows="10" placeholder="Write Comment"></textarea>
            </div>
            <button type="submit">Send</button>

        </div>
        </form>
    </div>

</div>
<!-- end:single-blog  -->

<%@ include file="/WEB-INF/views/fragments/footer.jspf" %>

</body>
</html>
