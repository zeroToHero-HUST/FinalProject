<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/header.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/home.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/footer.css" />
<%--    <script src="resources/javascripts/index.js"></script>--%>
</head>
<body>

<%@ include file="/WEB-INF/views/fragments/header.jspf" %>

<!-- begin: slide -->
<div id="slider">
    <div class="slider-contents fade">
        <h3>Indonesia</h3>
        <p>Pixel perfect design with awesome contents</p>
        <a href="">Explore Now</a>
    </div>
    <!-- <div class="slider-contents fade">
        <h3>Iabc</h3>
        <p>Pixel perfect design with awesome contents</p>
        <a href="">Explore Now</a>
    </div>
    <div class="slider-contents fade">
        <h3>efg</h3>
        <p>Pixel perfect design with awesome contents</p>
        <a href="">Explore Now</a>
    </div> -->
</div>
<!-- end: slide -->

<!-- begin: where to go area -->
<div class="where-to-go-area">
    <div class="container">
        <div class="where-you-want-to-go">
            <h3>Where you want to go?</h3>
        </div>
        <div class="form-search">
            <form action="" method="get">
                <div class="input-field">
                    <input type="text" placeholder="Where to go?">
                </div>
                <div class="input-field date">
                    <input type="date" placeholder="Date">

                </div>
                <div class="input-field">
                    <select name="" id="">
                        <option data-display="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                    </select>
                </div>
                <div class="search-btn">
                    <button type="submit">Search</button>
                </div>
            </form>
        </div>

    </div>
</div>
<!-- end: where to go area -->


<!-- begin: popular destinations area -->
<div class="popular-destinations-area">
    <div class="container">
        <div class="description">
            <h3>Popular Destinations</h3>
            <p>Suffered alteration in some form, by injected humour or good day randomised booth anim 8-bit hella wolf moon beard words.</p>
        </div>
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
        <div class="more-places">
            <a href="">More Places</a>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/fragments/footer.jspf" %>

</body>
</html>