<%--
  Created by IntelliJ IDEA.
  User: phamtuanson
  Date: 19/05/2021
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/header.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/header-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/font/themify-icons.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/tour.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/tour-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/footer.css" />
</head>
<body>
<!-- begin: slide -->

<%@ include file="/WEB-INF/views/fragments/header.jspf" %>

<!-- begin: slide -->
<div id="slider">
    <div class="slider-contents slider-1 fade" >
        <h3>Miền Bắc</h3>
        <p>Pixel perfect design with awesome contents</p>
        <a href="">Explore Now</a>

    </div>

</div>
<!-- end: slide -->

<!-- begin: tour  -->
<div class="tour">
    <div class="container">
        <div class="tour-description">
            <div class="contents">
                <h3>Description</h3>
                <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing.</p>
                <div class="single-tour-description">
                    <h4>Day-01</h4>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words.</p>
                </div>
                <div class="single-tour-description">
                    <h4>Day-02</h4>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words.</p>
                </div>
                <div class="single-tour-description">
                    <h4>Day-03</h4>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words.</p>
                </div>
            </div>

        </div>
        <div style="border-top: 1px solid rgb(228, 230, 232); margin-top: 56px; padding-bottom: 56px;"></div>
        <div class="tour-summary">
            <div class="destination">
                <p>Tour</p>
                <i class="ti-map"></i>
                <span>Mien bac</span>
            </div>
            <div class="check-in">
                <p>Check-in</p>
<%--                <i class="ti-calendar"></i>--%>
                <span><input type="date"></span>
            </div>
            <div class="check-out">
                <p>Check-out</p>
<%--                <i class="ti-calendar"></i>--%>
                <span><input type="date"></span>
            </div>
            <div class="price">
                <p>Price</p>
                <i class="ti-credit-card"></i>
                <span>$5000</span>
            </div>
        </div>
        <button>Submit</button>
    </div>

</div>
<!-- end: tour  -->
<div class="more-tours">
    <div class="title"><h3>More Tours</h3></div>
    <div class="detail">
        <div class="single-destination">
            <div class="thumb">
                <img src="https://preview.colorlib.com/theme/travelo/img/place/x1.png.pagespeed.ic.PhjDw51Df0.webp" alt="">
                <a href="">$500</a>
            </div>
            <div class="destination-infor">
                <a href=""><h3>California</h3></a>
                <p>United State of America</p>
                <div class="rate">
                        <span>
                            <i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i>
                            <a href="">(20 Review)</a>
                        </span>
                    <div class="days">
                        <i class="ti-alarm-clock"></i>
                        <a href="">5 Days</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="single-destination">
            <div class="thumb">
                <img src="https://preview.colorlib.com/theme/travelo/img/place/x1.png.pagespeed.ic.PhjDw51Df0.webp" alt="">
                <a href="">$500</a>
            </div>
            <div class="destination-infor">
                <a href=""><h3>California</h3></a>
                <p>United State of America</p>
                <div class="rate">
                        <span>
                            <i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i>
                            <a href="">(20 Review)</a>
                        </span>
                    <div class="days">
                        <i class="ti-alarm-clock"></i>
                        <a href="">5 Days</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="single-destination">
            <div class="thumb">
                <img src="https://preview.colorlib.com/theme/travelo/img/place/x1.png.pagespeed.ic.PhjDw51Df0.webp" alt="">
                <a href="">$500</a>
            </div>
            <div class="destination-infor">
                <a href=""><h3>California</h3></a>
                <p>United State of America</p>
                <div class="rate">
                        <span>
                            <i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i>
                            <a href="">(20 Review)</a>
                        </span>
                    <div class="days">
                        <i class="ti-alarm-clock"></i>
                        <a href="">5 Days</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/fragments/footer.jspf" %>

</body>
</html>