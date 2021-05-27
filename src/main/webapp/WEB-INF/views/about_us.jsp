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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/header.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/header-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/font/themify-icons.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/about_us.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/about_us-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/footer.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/footer-resp.css" />

    <script src="${pageContext.request.contextPath}/resources/javascripts/home.js" defer></script>
    <script src="${pageContext.request.contextPath}/resources/javascripts/header.js" defer></script>
</head>
<body>

<%@ include file="/WEB-INF/views/fragments/header.jspf" %>
<!-- begin: slide -->
<div id="slider">
    <div class="slider-contents fade">
        <h3>Về chúng tôi</h3>
        <p>Sứ mệnh của chúng tôi là được phục vụ bạn</p>
    </div>
</div>
<!-- end: slide -->

<%--Begin: Content--%>
<div id="content">
    <!-- Our story -->
    <div class="our-story">
        <h3 class="story-title">
            Travello
        </h3>
        <div class="story-content">
            <div class="row story-posts">
                <p class="col col-full m-col-full s-col-full story-text">
                    Trải qua nhiều năm hoạt động, Travello đã không ngừng phát triền kinh doanh trên lĩnh vực Du lịch, nâng cao chất lượng, đa dạng hoá các hạng mục dịch vụ, nhằm mục đích cao nhất là làm hài lòng mọi yêu cầu của Quý khách hàng. Chúng tôi tin tưởng rằng với uy tín đã tạo được trên thị trường, cùng với sự định hướng và chỉ đạo của Ban lãnh đạo Công ty TNHH Du Lịch và Dịch Vụ Travello luôn đem đến cho khách hàng những sản phẩm, dịch vụ đạt chất lượng tốt nhất với giá cả cạnh tranh. Nguyên tắc hoạt động kinh doanh của Travello là: “Sự hài lòng của Quý khách luôn là tiêu chí hàng đầu của Travello”
                </p>
            </div>
            <div class="row story-posts">
                <p class="col col-full m-col-full s-col-full story-text">
                    Với phương châm uy tín chất lượng đặt lên hàng đầu, Travello đã và sẽ là địa chỉ lựa chọn các dịch vụ du lịch đáng tin cậy hàng đầu của Quý khách.
                </p>
            </div>

            <div class="row story-img-list">
                <img src="https://preview.colorlib.com/theme/travelo/img/about/1.png" alt="" class="col col-half m-col-half s-col-full story-img1">
                <img src="https://preview.colorlib.com/theme/travelo/img/about/2.png" alt="" class="col col-half m-col-half s-col-full story-img2">
            </div>

            <div class="row story-count-list">
                <div class="col col-third story-count-item s-col-full text-align">
                    <h3 class="story-count-number">378</h3>
                    <p class="story-count-text">
                        Chuyến du lịch đã thành công
                    </p>
                </div>
                <div class="col col-third story-count-item s-col-full text-align">
                    <h3 class="story-count-number">30</h3>
                    <p class="story-count-text">
                        Năm kinh nghiệm
                    </p>
                </div>
                <div class="col col-third story-count-item s-col-full text-align">
                    <h3 class="story-count-number">2263</h3>
                    <p class="story-count-text">
                        Khách hàng hài lòng
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

            <div class="col col-third travel-variation-item m-col-third s-col-full text-align">
                <div class="travel-variation-icon">
                    <img src="https://preview.colorlib.com/theme/travelo/img/svg_icon/1.svg" alt="">
                </div>
                <h3 class="travel-variation-title">An toàn</h3>
                <p class="travel-variation-des">
                    Đối với chúng tôi an toàn là ưu tiên hàng đầu.
                </p>
            </div>
            <div class="col col-third travel-variation-item m-col-third s-col-full text-align">
                <div class="travel-variation-icon">
                    <img src="https://preview.colorlib.com/theme/travelo/img/svg_icon/2.svg" alt="">
                </div>
                <h3 class="travel-variation-title">Thoải mái</h3>
                <p class="travel-variation-des">
                    Dịch vụ tiện nghi cùng với những khách sạn hàng đầu đảm bảo sẽ làm bạn hài lòng.
                </p>
            </div>
            <div class="col col-third travel-variation-item m-col-third s-col-full text-align">
                <div class="travel-variation-icon">
                    <img src="https://preview.colorlib.com/theme/travelo/img/svg_icon/3.svg" alt="">
                </div>
                <h3 class="travel-variation-title">Đa dạng</h3>
                <p class="travel-variation-des">
                    Rất nhiều chuyến đi khắp mọi miền tổ quốc sẽ chiều lòng được tất cả các yêu cầu của bạn.
                </p>
            </div>

        </div>
    </div>

    <!-- Feedback section -->
    <div class="feedback text-align">
        <div class="feedback-section">

            <div class="row feedback-list">

                <div class="feedback-item feedback-slide">
                    <div class="feedback-img">
                        <img src="https://preview.colorlib.com/theme/travelo/img/testmonial/author.png" alt="">
                    </div>
                    <div class="feedback-text">
                        <p>
                            "Đây thực sự là 1 trải nghiệm bạn nên thử một lần trong đời"
                        </p>
                    </div>
                    <div class="feedback-author">
                        <p>- Nguyễn Quang Anh</p>
                    </div>
                </div>

                <div class="feedback-item feedback-slide">
                    <div class="feedback-img">
                        <img src="https://preview.colorlib.com/theme/travelo/img/testmonial/author.png" alt="">
                    </div>
                    <div class="feedback-text">
                        <p>
                            "Trong cuộc đời mình, đây là lần đầu tiên tôi được tận hưởng một dịch vụ tốt như thế này"
                        </p>
                    </div>
                    <div class="feedback-author">
                        <p>- Đỗ Việt Hoàng</p>
                    </div>
                </div>

                <div class="feedback-item feedback-slide">
                    <div class="feedback-img">
                        <img src="https://preview.colorlib.com/theme/travelo/img/testmonial/author.png" alt="">
                    </div>
                    <div class="feedback-text">
                        <p>
                            "Nhân viên thực sự nhiệt tình, chốn nghỉ ngơi cao cấp, quả thực là một chuyến đi để đời"
                        </p>
                    </div>
                    <div class="feedback-author">
                        <p>- Nguyễn Thái Việt</p>
                    </div>
                </div>
            </div>

            <div class="dots">
                <span class="dot" onclick="currentDiv(1)"></span>
                <span class="dot" onclick="currentDiv(2)"></span>
                <span class="dot" onclick="currentDiv(3)"></span>
            </div>

        </div>
    </div>

    <!-- Blog section -->
    <div class="blog">
        <h3 class="blog-title text-align"Blogs</h3>

        <div class="row blog-list">
            <div class="col col-third blog-item m-col-third s-col-full">
                <img src="https://preview.colorlib.com/theme/travelo/img/trip/1.png" alt="">
                <div class="blog-date">Oct 12, 2019</div>
                <h3 class="blog-text"><a href="">Journeys Are Best Measured In New Friends</a></h3>
            </div>
            <div class="col col-third blog-item m-col-third s-col-full">
                <img src="https://preview.colorlib.com/theme/travelo/img/trip/2.png" alt="">
                <div class="blog-date">Oct 12, 2019</div>
                <h3 class="blog-text"><a href="">Journeys Are Best Measured In New Friends</a></h3>
            </div>
            <div class="col col-third blog-item m-col-third s-col-full">
                <img src="https://preview.colorlib.com/theme/travelo/img/trip/3.png" alt="">
                <div class="blog-date">Oct 12, 2019</div>
                <h3 class="blog-text"><a href="">Journeys Are Best Measured In New Friends</a></h3>
            </div>

        </div>
    </div>


</div>
<%--End: Content--%>

<%@ include file="/WEB-INF/views/fragments/footer.jspf" %>

</body>
</html>
