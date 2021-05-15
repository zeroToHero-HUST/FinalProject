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

<div id="content">

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

            <!-- <input type="radio" name="bottom" id="bottom_1" checked>
            <input type="radio" name="bottom" id="bottom_2">
            <input type="radio" name="bottom" id="bottom_3"> -->


            <div class="feedback-item">
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

<%--            <div class="feedback-item">--%>
<%--                <div class="feedback-img">--%>
<%--                    <img src="https://preview.colorlib.com/theme/travelo/img/testmonial/author.png" alt="">--%>
<%--                </div>--%>
<%--                <div class="feedback-text">--%>
<%--                    <p>--%>
<%--                        "Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering."--%>
<%--                    </p>--%>
<%--                </div>--%>
<%--                <div class="feedback-author">--%>
<%--                    <p>- Micky Mouse</p>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="feedback-item">--%>
<%--                <div class="feedback-img">--%>
<%--                    <img src="https://preview.colorlib.com/theme/travelo/img/testmonial/author.png" alt="">--%>
<%--                </div>--%>
<%--                <div class="feedback-text">--%>
<%--                    <p>--%>
<%--                        "Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering."--%>
<%--                    </p>--%>
<%--                </div>--%>
<%--                <div class="feedback-author">--%>
<%--                    <p>- Micky Mouse</p>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>

        <!-- <div class="navigation">
            <label for="bottom_1" class="bar"></label>
            <label for="bottom_2" class="bar"></label>
            <label for="bottom_3" class="bar"></label>
        </div> -->
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