<%--
  Created by IntelliJ IDEA.
  User: Hoang
  Date: 5/20/2021
  Time: 11:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/header.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/font/themify-icons.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/about_us.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/footer.css" />
    <script src="${pageContext.request.contextPath}/resources/javascripts/home.js" defer></script>
</head>
<body>

<%@ include file="/WEB-INF/views/fragments/header.jspf" %>
<!-- begin: slide -->
<div id="slider">
    <div class="slider-contents fade">
        <h3>About us</h3>
        <p>Pixel Perfect Design With Awesome Contents</p>
    </div>
</div>
<!-- end: slide -->

<div id="content">
    <!-- Our story -->
    <div class="our-story">
        <h3 class="row story-title">
            Our Story
        </h3>
        <div class="story-content">
            <p class="row story-text">
                Consulting represents success at realizing the company is going in the wrong direction. The only time the company fails is when it is not possible to do a turnaround anymore. We help companies pivot into more profitable directions where they can expand and grow. It is inevitable that companies will end up making a few mistakes; we help them correct these mistakes.
            </p>
            <p class="row story-text">
                Consulting represents success at realizing the company is going in the wrong direction. The only time the company fails is when it is not possible to do a turnaround anymore. We help companies pivot into more profitable directions where they can expand and grow. It is inevitable that companies will end up making a few mistakes; we help them correct these mistakes.
            </p>

            <div class="row story-img-list">
                <img src="https://preview.colorlib.com/theme/travelo/img/about/1.png" alt="" class="col story-img">
                <img src="https://preview.colorlib.com/theme/travelo/img/about/2.png" alt="" class="col story-img">
            </div>

            <div class="row story-count-list">
                <div class="col col-third story-count-item text-align">
                    <h3 class="story-count-number">378</h3>
                    <p class="story-count-text">
                        Tour has done successfully
                    </p>
                </div>
                <div class="col col-third story-count-item text-align">
                    <h3 class="story-count-number">30</h3>
                    <p class="story-count-text">
                        Yearly tour arrange
                    </p>
                </div>
                <div class="col col-third story-count-item text-align">
                    <h3 class="story-count-number">2263</h3>
                    <p class="story-count-text">
                        Happy Clients
                    </p>
                </div>
            </div>

        </div>
    </div>

    <div class="video">

    </div>

    <!-- Travel-variation section -->
    <div class="travel-variation">
        <div class="row travel-variation-list">

            <div class="col col-third travel-variation-item text-align">
                <div class="travel-variation-icon">
                    <img src="https://preview.colorlib.com/theme/travelo/img/svg_icon/1.svg" alt="">
                </div>
                <h3 class="travel-variation-title">Comfortable Journey</h3>
                <p class="travel-variation-des">
                    A wonderful serenity has taken to the possession of my entire soul.
                </p>
            </div>
            <div class="col col-third travel-variation-item text-align">
                <div class="travel-variation-icon">
                    <img src="https://preview.colorlib.com/theme/travelo/img/svg_icon/2.svg" alt="">
                </div>
                <h3 class="travel-variation-title">Comfortable Journey</h3>
                <p class="travel-variation-des">
                    A wonderful serenity has taken to the possession of my entire soul.
                </p>
            </div>
            <div class="col col-third travel-variation-item text-align">
                <div class="travel-variation-icon">
                    <img src="https://preview.colorlib.com/theme/travelo/img/svg_icon/3.svg" alt="">
                </div>
                <h3 class="travel-variation-title">Comfortable Journey</h3>
                <p class="travel-variation-des">
                    A wonderful serenity has taken to the possession of my entire soul.
                </p>
            </div>

            <div class="clear"></div>
        </div>
    </div>

    <!-- Feedback section -->
    <div class="feedback text-align">
        <div class="feedback-list">

            <div class="feedback-item feedback-slide">
                <div class="feedback-img">
                    <img src="https://preview.colorlib.com/theme/travelo/img/testmonial/author.png" alt="">
                </div>
                <div class="feedback-text">
                    <p>
                        "Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering."
                    </p>
                </div>
                <div class="feedback-author">
                    <p>- Micky Mouse</p>
                </div>
            </div>

            <div class="feedback-item feedback-slide">
                <div class="feedback-img">
                    <img src="https://preview.colorlib.com/theme/travelo/img/testmonial/author.png" alt="">
                </div>
                <div class="feedback-text">
                    <p>
                        " with humanitarian aid agencies, we have supported programmes to help alleviate human suffering."
                    </p>
                </div>
                <div class="feedback-author">
                    <p>- Micky Mouse2</p>
                </div>
            </div>

            <div class="feedback-item feedback-slide">
                <div class="feedback-img">
                    <img src="https://preview.colorlib.com/theme/travelo/img/testmonial/author.png" alt="">
                </div>
                <div class="feedback-text">
                    <p>
                        "Witarian aid agencies, we have supported programmes to help alleviate human suffering."
                    </p>
                </div>
                <div class="feedback-author">
                    <p>- Micky Mouse3</p>
                </div>
            </div>
        </div>

        <div class="dots">
            <span class="dot" onclick="currentDiv(1)"></span>
            <span class="dot" onclick="currentDiv(2)"></span>
            <span class="dot" onclick="currentDiv(3)"></span>
        </div>

    </div>
    <!-- Blog section -->
    <div class="blog">
        <h3 class="blog-title text-align">Recent Trips</h3>

        <div class="row blog-list">
            <div class="col col-third blog-item">
                <img src="https://preview.colorlib.com/theme/travelo/img/trip/1.png" alt="">
                <div class="blog-date">Oct 12, 2019</div>
                <h3 class="blog-text"><a href="">Journeys Are Best Measured In New Friends</a></h3>
            </div>
            <div class="col col-third blog-item">
                <img src="https://preview.colorlib.com/theme/travelo/img/trip/2.png" alt="">
                <div class="blog-date">Oct 12, 2019</div>
                <h3 class="blog-text"><a href="">Journeys Are Best Measured In New Friends</a></h3>
            </div>
            <div class="col col-third blog-item">
                <img src="https://preview.colorlib.com/theme/travelo/img/trip/3.png" alt="">
                <div class="blog-date">Oct 12, 2019</div>
                <h3 class="blog-text"><a href="">Journeys Are Best Measured In New Friends</a></h3>
            </div>

            <div class="clear"></div>
        </div>
    </div>

</div>

<%@ include file="/WEB-INF/views/fragments/footer.jspf" %>

</body>
</html>
