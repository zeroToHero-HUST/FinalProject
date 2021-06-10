<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phamtuanson
  Date: 19/05/2021
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Du lịch</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/header.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/destination.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/font/themify-icons.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/footer.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/header-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/destination-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/footer-resp.css" />

</head>
<body>

<%@ include file="/WEB-INF/views/fragments/header.jspf" %>

<!-- begin: slide -->
<div id="slider">
    <div class="slider-contents fade">
        <h3>Việt nam</h3>
        <p>Tự hào dân tộc Việt Nam</p>
<%--        <a href="">Explore Now</a>--%>
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
            <h3>Bạn muốn đi đâu ?</h3>
        </div>
        <div class="form-search">
            <form id = "newForm" onsubmit="return false">
                <div class="input-field">
                    <input type="text" placeholder="Nơi bạn muốn đi?" id = "search-text">
                </div>
<%--                <div class="input-field date">--%>
<%--                    <input type="date" placeholder="Date">--%>

<%--                </div>--%>
<%--                <div class="input-field">--%>
<%--                    <select name="">--%>
<%--                        <option data-display="0">0</option>--%>
<%--                        <option value="1">1</option>--%>
<%--                        <option value="2">2</option>--%>
<%--                    </select>--%>
<%--                </div>--%>
                <div class="search-btn">
                    <button onclick="searchBar();">Tìm kiếm</button>
                </div>
            </form>
        </div>

    </div>
</div>
<!-- end: where to go area -->
<!-- begin: places-area  -->
<div class="places-area">
    <div class="container">
        <div class="filter-result-wrap">
            <h3>Bộ lọc tìm kiếm</h3>
            <div class="filter-bordered">
                <div class="filter-inner">
                    <div class="single-select">
                        <select name=""  style="display:inline-block;">
                            <option data-display="Country">Điểm đến ...</option>
                            <option value="1">Hà Nội</option>
                            <option value="2">Hải Phòng</option>
                            <option value="3">Nha Trang</option>
                        </select>
                        <!-- <div class="nice-select">
                            <span class="current">Country</span>
                            <ul class="list">
                                <li data-value="Country" data-display="Country" class="option">Country</li>
                                <li data-value="1" class="option">Africa</li>
                                <li data-value="2" class="option">canada</li>
                                <li data-value="3" class="option">USA</li>
                            </ul>
                        </div> -->
                    </div>
                    <div class="single-select">
<%--                        <select name="" id="" style="display: inline-block;">--%>
<%--                            <option data-display="Travel type">Kiểu du lịch</option>--%>
<%--                            <option value="1">advanve</option>--%>
<%--                            <option value="2">advance</option>--%>
<%--                            <option value="3">premium</option>--%>
<%--                        </select>--%>
                        <!-- <div class="nice-select">
                            <span class="current"></span>
                            <ul class="list">
                                <li data-value="Travel type" data-display="Travel type" class="option">Country</li>
                                <li data-value="1" class="option">advanve</li>
                                <li data-value="2" class="option">advance</li>
                                <li data-value="3" class="option">premium</li>
                            </ul>
                        </div> -->
                    </div>
                    <div class="range-price">
                        <span>Price range</span>
                        <div class="range-slider">
                            <input type="range" min="1" max="100" value="50" class="slider" id = "sliderSearch"  onclick="setValue();">
                        </div>
                        <p>$0 -> $<span id = "maxLimitPrice">5.000.000đ</span></p>
                    </div>
                </div>
                <div class="search-btn" ><button onclick="searchRange();">Search</button></div>
            </div>
        </div>
        <div class="detail">
            <c:forEach var = "destination" items="${allTours}">
                <c:choose>
                    <c:when test="${destination.tourId le 4}">
                        <div class="single-destination" id = "tour${destination.tourId}">
                            <div class="thumb">
                                <img src="${pageContext.request.contextPath}/resources/images/${destination.images}" alt="">
                                <a href="${pageContext.request.contextPath}/tour/TourServlet?TourId=${destination.tourId}" id = "tour${destination.tourId}Price">${destination.price}</a>
                            </div>
                            <div class="destination-infor">
                                <a href="${pageContext.request.contextPath}/tour/TourServlet?TourId=${destination.tourId}" ><h3 class="title-des">${destination.title}</h3></a>
                                <p>${destination.countryName}</p>
                                <div class="rate">
                            <span>
                                <i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i>
                                <a href="${pageContext.request.contextPath}/tour/TourServlet?TourId=${destination.tourId}" >(20 Nhận xét)</a>
                            </span>
                                    <div class="days">
                                        <i class="ti-alarm-clock"></i>
                                        <a href="${pageContext.request.contextPath}/tour/TourServlet?TourId=${destination.tourId}">${destination.duration}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="single-destination"  id = "tour${destination.tourId}" style="display: none">
                            <div class="thumb">
                                <img src="${pageContext.request.contextPath}/resources/images/${destination.images}" alt="">
                                <a href="${pageContext.request.contextPath}/tour/TourServlet?TourId=${destination.tourId}"  id = "tour${destination.tourId}Price">${destination.price}</a>
                            </div>
                            <div class="destination-infor">
                                <a href="${pageContext.request.contextPath}/tour/TourServlet?TourId=${destination.tourId}"><h3 class="title-des">${destination.title}</h3></a>
                                <p>${destination.countryName}</p>
                                <div class="rate">
                            <span>
                                <i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i>
                                <a href="${pageContext.request.contextPath}/tour/TourServlet?TourId=${destination.tourId}">(20 Review)</a>
                            </span>
                                    <div class="days">
                                        <i class="ti-alarm-clock"></i>
                                        <a href="${pageContext.request.contextPath}/tour/TourServlet?TourId=${destination.tourId}">${destination.duration}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>
            </c:forEach>

            <div class="more-places">
                <button id = "more-button" onclick="morePlaces();">Mở rộng</button>
            </div>
        </div>
    </div>
</div>
<script src="./destination.js"></script>
<!-- end: places-area  -->

<%--<!-- begin: blog-section  -->--%>
<%--<div class="blog">--%>
<%--    <h3 class="blog-title text-align">Recent Trips</h3>--%>

<%--    <div class="row blog-list">--%>
<%--        <div class="col col-third blog-item">--%>
<%--            <img src="https://preview.colorlib.com/theme/travelo/img/trip/1.png" alt="">--%>
<%--            <div class="blog-date">Oct 12, 2019</div>--%>
<%--            <h3 class="blog-text"><a href="">Journeys Are Best Measured In New Friends</a></h3>--%>
<%--        </div>--%>
<%--        <div class="col col-third blog-item">--%>
<%--            <img src="https://preview.colorlib.com/theme/travelo/img/trip/2.png" alt="">--%>
<%--            <div class="blog-date">Oct 12, 2019</div>--%>
<%--            <h3 class="blog-text"><a href="">Journeys Are Best Measured In New Friends</a></h3>--%>
<%--        </div>--%>
<%--        <div class="col col-third blog-item">--%>
<%--            <img src="https://preview.colorlib.com/theme/travelo/img/trip/3.png" alt="">--%>
<%--            <div class="blog-date">Oct 12, 2019</div>--%>
<%--            <h3 class="blog-text"><a href="">Journeys Are Best Measured In New Friends</a></h3>--%>
<%--        </div>--%>

<%--        <div class="clear"></div>--%>
<%--    </div>--%>
<%--</div>--%>
<script src="${pageContext.request.contextPath}/resources/javascripts/destination.js" ></script>
<script src="${pageContext.request.contextPath}/resources/javascripts/header.js" ></script>
<script>

    function setValue(){
        var x = document.getElementById("sliderSearch").value;
        document.getElementById("maxLimitPrice").innerText = new Intl.NumberFormat('de-DE').format(parseInt(x)*100000) + "đ";
    }
    function searchRange(){
        var range =  document.getElementById("sliderSearch").value;
        var i;
        for (i = 1; i <= ${numOfTours}; i++){
            var t = document.getElementById("tour"+i+"Price").innerHTML;
            // document.getElementById("tour"+i+"Price").innerText = (typeof t);
            if (typeof t !== 'undefined'){
                document.getElementById("tour"+i+"Price").innerText =${numOfTours};
            }
            t = t.replace(".","");
            t = t.replace(".","");
            t = t.replace(",","");
            if (parseInt(t)/100 > 100000*parseInt(range)){
                document.getElementById("tour"+i).style.display = "none";
            }
        }
    }
    function morePlaces(){
        var i;
        var x = document.getElementById("more-button").innerText;
        if (x === "Mở rộng"){
            document.getElementById("more-button").innerText = "Thu gọn";
            for (i = 4; i <= ${numOfTours}; i++){
                var t = "tour"
                t += i;
                document.getElementById(t).style.display = "";
            }
        }

        else{
            document.getElementById("more-button").innerText ="Mở rộng";
            for (i = 5; i <= ${numOfTours}; i++){
                var t = "tour"
                t += i;
                document.getElementById(t).style.display = "none";

            }

        }
    }
    function searchBar()
    {
        var input,filter, ul, li, a, i, txtValue;
        input = document.getElementById("search-text");
        filter = input.value.toUpperCase();
        ul = document.getElementsByClassName("single-destination");
        li = document.getElementsByClassName("title-des");
        for (i = 0; i < li.length; i++)
        {
            txtValue = li[i].textContent || li[i].innerText;
            document.getElementById("test").innerHTML = txtValue
            if (txtValue.toUpperCase().indexOf(filter) > -1)
            {
                ul[i].style.display = "";
            }
            else
            {
                ul[i].style.display= "none";
            }
        }
    }
</script>

<%@ include file="/WEB-INF/views/fragments/footer.jspf" %>
</body>
</html>
