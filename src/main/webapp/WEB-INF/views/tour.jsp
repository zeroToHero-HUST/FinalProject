<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/header.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/tour.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/font/themify-icons.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/footer.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/header-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/tour-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/footer-resp.css" />

</head>
<body>
<!-- begin: slide -->

<%@ include file="/WEB-INF/views/fragments/header.jspf" %>

<!-- begin: slide -->
<div id="slider">
    <div class="slider-contents slider-1 fade" >
        <h3>${thisTour.title}</h3>
        <p>${thisTour.description}</p>
    </div>

</div>
<!-- end: slide -->

<!-- begin: tour  -->
<div class="tour">
    <div class="container">
        <div class="tour-description">
            <div class="contents">
                <h3>Description</h3>
                <p>${thisTour.description}</p>
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
        <form action="${pageContext.request.contextPath}/booking" method="post" name ="booking" id="booking">
        <input type="text" name="tourId" value="${thisTour.tourId}" form="booking" hidden>
        <input type="text" name="price" value="${thisTour.price}" form="booking" hidden>
        <input type="text" name="userId" value="${user.userId}" form="booking" hidden>
        <div class="tour-summary">
            <div class="destination">
                <p>Tour</p>
                <i class="ti-map"></i>
                <span>${thisTour.title}</span>
            </div>
            <div class="check-in" >
                <p>Check-in</p>

<%--                <i class="ti-calendar"></i>--%>
                <span><input type="date" id = "check-in-date" name="checkInDate" required></span>
            </div>
            <div class="check-out">
                <p>Check-out</p>
<%--                <i class="ti-calendar"></i>--%>
                <span><input type="date" id = "check-out-date" name="checkOutDate" required></span>
            </div>
            <div class="price">
                <p>Price</p>
                <i class="ti-credit-card"></i>
                <span>${thisTour.price}</span>
            </div>
        </div>
        <button type="submit">Submit</button>
        </form>
    </div>

</div>
<!-- end: tour  -->
<div class="more-tours">
    <div class="title"><h3>More Tours</h3></div>
    <div class="detail">
        <c:forEach var = "destination" items="${moreTours}">
        <div class="single-destination">
            <div class="thumb">
                <img src="https://preview.colorlib.com/theme/travelo/img/place/x1.png.pagespeed.ic.PhjDw51Df0.webp" alt="">
                <a href="${pageContext.request.contextPath}/tour/TourServlet?TourId=${destination.tourId}">${destination.price}</a>
            </div>
            <div class="destination-infor">
                <a href="${pageContext.request.contextPath}/tour/TourServlet?TourId=${destination.tourId}"><h3>${destination.title}</h3></a>
                <p>${destination.countryName}</p>
                <div class="rate">
                        <span>
                            <i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i>
                            <a href="${pageContext.request.contextPath}/tour/TourServlet?TourId=${destination.tourId}">(20 Review)</a>
                        </span>
                    <div class="days">
                        <i class="ti-alarm-clock"></i>
                        <a href="${pageContext.request.contextPath}/tour/TourServlet?TourId=${destination.tourId}">${destination.duration} </a>
                    </div>
                </div>
            </div>
        </div>
        </c:forEach>

    </div>
</div>

<%@ include file="/WEB-INF/views/fragments/footer.jspf" %>
<script >
    document.getElementById("check-in-date").addEventListener("change", getMyDateValue);
    document.getElementById("check-out-date").addEventListener("change", setStartDate);
    function getMyDateValue(){
        // set checkout date when check in date is changed
        // document.getElementById("test").innerText = "c";
        var  checkOutDate, duration;
        duration = parseInt(${thisTour.duration});
        var checkInDate = document.getElementById("check-in-date").value;
        checkOutDate = new Date(checkInDate);
        checkOutDate.setDate(checkOutDate.getDate()+duration);
        document.getElementById("check-out-date").value = checkOutDate.toLocaleDateString('en-CA');

    }
    function setStartDate(){
        // set check in date when check out date is changed
        var  checkInDate, duration;
        duration = parseInt(${thisTour.duration});
        var checkOutDate = document.getElementById("check-out-date").value;
        checkInDate = new Date(checkOutDate);
        checkInDate.setDate(checkInDate.getDate()-duration);
        document.getElementById("check-in-date").value = checkInDate.toLocaleDateString('en-CA');
    }
</script>
</body>
</html>