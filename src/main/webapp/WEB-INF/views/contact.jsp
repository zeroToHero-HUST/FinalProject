<%--
  Created by IntelliJ IDEA.
  User: Hoang
  Date: 5/21/2021
  Time: 8:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Content</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/header.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/header-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/font/themify-icons.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/contact.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/contact-resp.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/footer.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/responsive/footer-resp.css" />
</head>
<body>

<%@ include file="/WEB-INF/views/fragments/header.jspf" %>

<!-- begin: slide -->
<div id="slider">
    <div class="slider-contents fade">
        <h3>Contact</h3>
        <p>Pixel Perfect Design With Awesome Contents</p>
    </div>
</div>
<!-- end: slide -->

<!-- Begin: content -->
<div id="content">
    <div class="contact-section">
        <h2 class="contact-title">Get in Touch</h2>

        <div class="row contact-content">
            <!-- contact-form -->
            <div class="col col-two-third contact-form s-col-full">
                <form action="">
                    <div class="row">
                        <div class="col col-full contact-message s-col-full">
                                <textarea name="" id="" cols="30" rows="9"  placeholder="Enter Message">
                                </textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col col-half s-col-full">
                            <input type="text" placeholder="Enter your name" required name="" id="form-control">
                        </div>
                        <div class="col col-half s-col-full">
                            <input type="email" placeholder="Email" required name="" id="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col col-full s-col-full">
                            <input type="text" placeholder="Enter Subject" required name="" id="form-control">
                        </div>
                    </div>
                    <input type="submit" value="Send" class="s-col-full">
                </form>
            </div>

            <!-- contact info -->
            <div class="col contact-info pull-right m-col-full s-col-full">
                <div class="row info-item">
                    <div class="col info-icon"><i class="ti-home"></i></div>
                    <div class="col info-text">
                        <div class="row"><h3>Buttonwood, California.</h3></div>
                        <div class="row"><p>Rosemead, CA 91770</p></div>
                    </div>
                </div>
                <div class="row info-item">
                    <div class="col info-icon"><i class="ti-mobile"></i></div>
                    <div class="col info-text">
                        <div class="row"><h3>+1 253 565 2365</h3></div>
                        <div class="row"><p>Mon to Fri 9am to 6pm</p></div>
                    </div>
                </div>
                <div class="row info-item">
                    <div class="col info-icon"><i class="ti-email"></i></div>
                    <div class="col info-text">
                        <div class="row"><h3>support@colorlib.com</h3></div>
                        <div class="row"><p>Send us your query anytime!</p></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- End: content -->

<%@ include file="/WEB-INF/views/fragments/footer.jspf" %>
</body>
</html>
