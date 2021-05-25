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
</head>
<body>
  <!-- begin: sidebar -->
  <div class="sidebar-wrapper">
    <!-- begin: logo  -->
    <div class="logo">
      <p>Pham Tuan Son</p>
      <a href=""><i class="ti-power-off"></i></a>
    </div>
    <!-- end: logo  -->

    <!-- begin: nav -->
    <ul class="nav">
      <li class="choosed">
        <a href="" class="nav-link">
          <i class="ti-user"></i>
          <p>User Profile</p>
        </a>
      </li>
      <li>
        <a href="" class="nav-link">
          <i class="ti-clipboard"></i>
          <p>Blog</p>
        </a>
      </li>
      <li >
        <a href="" class="nav-link">
          <i class="ti-map"></i>
          <p>Tour</p>
        </a>
      </li>
      <li >
        <a href="" class="nav-link" >
          <i class="ti-check-box"></i>
          <p>Booking</p>
        </a>
      </li>


    </ul>
    <!-- end: nav -->
  </div>
  <!-- end: sidebar -->

  <!-- begin: user -->
  <div class="user-panel">
    <div class="card">
      <div class="card-header">
        <h4>Edit user</h4>
      </div>
      <div class="card-body">
        <form action="">
          <div class="first-name"><input type="text" name=""  placeholder="First-name"></div>
          <div class="last-name"><input type="text" name=""  placeholder="Last-name"></div>
          <div class="email"><input type="email" placeholder="Email"></div>
          <div class="password"><input type="password" name="" id="" placeholder="Password"></div>
          <div class="roll">
            <input list="roll" name="roll" placeholder="Roll">
            <datalist id="roll">
              <option value="Admin">
              <option value="Customer">
            </datalist>
          </div>
          <div class="img" ><input  type="file" accept="image/*"></div>
          <button type="submit">Submit</button>
        </form>
      </div>
    </div>
  </div>
  <!-- end: user-edit -->

  <!-- begin: user-list -->
  <div class="user-list">
    <div class="card">
      <div class="card-header">
        <h4>User List</h4>
      </div>
      <div class="card-body">
        <table>
          <thead>
          <th class="id">Id</th>
          <th class="email">Email</th>
          <th class="password">Password</th>
          <th class="first-name">First name</th>
          <th class="last-name">Last name</th>
          <th class="role">Role</th>
          <th class="img">Image</th>
          <th class="created">Created</th>

          </thead>
          <tbody>
          <tr>
            <td>1</td>
            <td>abc@gmail.com</td>
            <td>123456</td>
            <td>Son</td>
            <td>Pham</td>
            <td>Admin</td>
            <td>abc</td>
            <td>2/2</td>
            <td><button type="submit">Delete</button></td>
            <td><button type="submit">Change</button></td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
  <!-- end: user-list -->
</body>
</html>
