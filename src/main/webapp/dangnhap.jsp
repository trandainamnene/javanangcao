<%@page import="org.apache.catalina.connector.Response"%>
<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<style>
	* {
		box-sizing : border-box;
	}
	
	.wrap-form {
		display : flex;
		justify-content : center;
		align-items : center;
		height : 100vh;
	}

	.login-form {
		width : 600px;
		padding : 40px;
	}
	
	.fixed-nav {
		position : fixed;
		top : 0;
		left : 0;
		right : 0;
	}
</style>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-nav">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="sachController">Trang Chủ <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="giohangController">Giỏ Hàng</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Thanh toán</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Lịch sử mua hàng</a>
      </li>
    </ul>
   <ul class="navbar-nav">
   <%if (session.getAttribute("dn") == null) { %>
   	 <li class="nav-item">
        <a class="nav-link" href="dangnhapController">Đăng nhập</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="dangkyController">Đăng ký</a>
      </li>
      <%} else {%>
      <li class="nav-item">
        <a class="nav-link" href="dangxuatController">Đăng xuất</a>
      </li>
      <%} %>
   </ul>
  </div>
</nav>

	<div class="wrap-form ">
		<form action="dangnhapController" method="POST" class="login-form">
  <!-- Email input -->
  
  <%if (request.getParameter("dadangnhap") != null) { 
		out.print("<p class=\"text-danger\">Bạn phải đăng nhập để tiếp tục</p>"); 
		}%>
  <div class="form-outline mb-4">
    <input type="text" name="txtun" id="form2Example1" class="form-control" />
    <label class="form-label" for="form2Example1">Username</label>
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
    <input type="password" name="txtpass" id="form2Example2" class="form-control" />
    <label class="form-label" for="form2Example2">Password</label>
  </div>

  <!-- 2 column grid layout for inline styling -->
  
  <!-- Submit button -->
  <button type="submit" class="btn btn-primary btn-block mb-4">Đăng nhập</button>
	
	<%if (request.getAttribute("kt") != null && !(boolean)request.getAttribute("kt")) { 
		out.print("<p class=\"text-danger\">Không đăng nhập được</p>"); 
		}%>
  <!-- Register buttons -->
  <div class="text-center">
    <p>Chưa có tài khoản? <a href="dangkyController">Đăng ký</a></p>
  </div>
</form>
	</div>
	
	<!--  <form>
		Username=<input type="text" name="txtun">
		Password=<input type="password" name="txtpass">
		<input type="submit" name="th" value="Dang Nhap"> 
	</form>-->
	
</body>
</html>