<%--
  Created by IntelliJ IDEA.
  User: phamtuanson
  Date: 24/05/2021
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/admin/blog.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/fragments/sidebar.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/stylesheets/font/themify-icons.css" />

</head>
<body>

<%@ include file="/WEB-INF/views/fragments/sidebar.jspf" %>

<!-- begin: blog-edit -->
<div class="blog-panel">
    <div class="card">
        <div class="card-header">
            <h4>Edit blog</h4>
        </div>
        <div class="card-body">
            <form action="">
                <div class="title"><input type="text" placeholder="Title"></div>
                <div class="quote"><textarea name=""  cols="30" rows="5" placeholder="Quote"></textarea></div>
                <div class="content"><textarea name=""  cols="30" rows="10" placeholder="Content"></textarea></div>
                <div class="img" ><input  type="file" accept="image/*"></div>
                <button type="submit">Submit</button>
            </form>
        </div>
    </div>
</div>
<!-- end: blog-edit -->

<!-- begin: blog-list -->
<div class="blog-list">
    <div class="card">
        <div class="card-header">
            <h4>Blog List</h4>
        </div>
        <div class="card-body">
            <table>
                <thead>
                <th class="id">Id</th>
                <th class="title">Title</th>
                <th class="content">Content</th>
                <th class="quote">Quote</th>
                <th class="image">Images</th>
                <th class="user-create">User created</th>
                <th class="created">Created</th>
                <th class="updated">Updated</th>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Second divided from form fish beast made every of seas all gathered us saying he our</td>
                    <td>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower

                        MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower

                        MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually

                    </td>
                    <td>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</td>
                    <td>abc</td>
                    <td>Admind</td>
                    <td>2/2</td>
                    <td>3/3</td>

                    <td><button type="submit">Delete</button></td>
                    <td><button type="submit">Change</button></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- end: blog-list -->
</body>
</html>
