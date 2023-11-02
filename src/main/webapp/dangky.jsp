<%@page import="bo.giohangbo"%>
<%@page import="bean.giohangbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.sachbo"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>

</head>
<body class="container-fluid">

	<style>
.image-book {
	width: 100%;
	height: 264px;
	object-fit: cover;
}

.btn-search {
	max-width: 100%;
	padding : 6px 8px;
}

.list-book { 
	--order: 3;
}

.search-book { 
	--order: 2;
}

@media ( min-width : 768px) {
	.list-book { 
		--order: 2;
	}
	.search-book { 
		--order: 3;
	}
}

.main-form {
  display: flex;
  margin: auto;
  height: 100vh;
}

.fixed-nav {
		position : fixed;
		top : 0;
		left : 0;
		right : 0;
	}
	
.content-page {
	padding-top : 50px;
}

</style>

	<%
	String tama = (String) session.getAttribute("dn");
	%>
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-nav">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<%
			giohangbo ghbo  = (giohangbo)session.getAttribute("gh");
			int sl = 0;	
			if (ghbo != null)
		  		sl = ghbo.ds.size();
		  %>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="sachController">Trang
						Chủ <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item">
					<a class="nav-link" href="giohangController">Giỏ Hàng <span style="color:#B2533E;">(Hiện có : <%=sl%> mặt hàng)</span> </a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Thanh
						toán</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Lịch sử
						mua hàng</a></li>
			</ul>
			<ul class="navbar-nav">
				<%
				if (session.getAttribute("dn") == null) {
				%>
				<li class="nav-item"><a class="nav-link" href="dangnhapController">Đăng
						nhập</a></li>
				<li class="nav-item"><a class="nav-link" href="dangkyController">Đăng ký</a></li>
				<%
				} else {
				%>
				<li class="nav-item mr-5"><span class="navbar-text text-info">
						Xin chào : <b><%=tama%></b>
				</span></li>
				<li class="nav-item"><a class="nav-link" href="dangxuatController">Đăng
						xuất</a></li>
				<%
				}
				%>
			</ul>
		</div>
	</nav>
	
	
  <div class="main-form">
    <div class="m-auto card shadow-2-strong card-registration" style="border-radius: 15px">
      <div class="card-body p-4 p-md-5">
        <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Đăng ký</h3>
          <form method=POST action="dangkyController">
            <div class="row">
              <div class="col-md-6 mb-4">
                <div class="form-outline">
                    <input required="required" type="text" id="firstName" name="hoten" class="form-control form-control-lg" />
                    <label class="form-label" for="firstName">Họ tên :</label>
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                <div class="form-outline">
                    <input required="required" type="text" id="firstName" name="diachi" class="form-control form-control-lg" />
                    <label class="form-label" for="firstName">Địa chỉ :</label>
                  </div>
                </div>
              </div>
  
          <div class="row">
              <div class="col-md-6 mb-4 d-flex align-items-center">
                <div class="form-outline datepicker w-100">
                      <input required="required" type="text" class="form-control form-control-lg" id="birthdayDate" pattern="((09|03|07|08|05)+([0-9]{8})\b)"  name="sdt"/>
                      <label for="birthdayDate" class="form-label">Số Điện Thoại</label>
                </div>
                </div>
                  <div class="col-md-6 mb-4">
                    <input required="required" type="email" class="form-control form-control-lg" id="birthdayDate" name="email"/>
                    <label for="birthdayDate" class="form-label">Email</label>
  
                  </div>
                </div>
  
                <div class="row">
                  <div class="col-md-6 mb-4 pb-2">
  
                    <div class="form-outline">
                      <input required="required" type="text" id="emailAddress" class="form-control form-control-lg" name="username" />
                      <label class="form-label" for="emailAddress">Tên Đăng Nhập</label>
                    </div>
  
                  </div>
                  <div class="col-md-6 mb-4 pb-2">
  
                    <div class="form-outline">
                      <input required="required" type="password" id="phoneNumber" class="form-control form-control-lg" name="password"/>
                      <label class="form-label" for="phoneNumber">Mật Khẩu</label>
                    </div>
  
                  </div>
                </div>
  
                <div class="mt-4 pt-2">
                  <input class="btn btn-primary btn-lg" type="submit" value="Đăng Ký" />
                </div>
  
              </form>
              <% if (request.getAttribute("trangthaiDK") != null) {
              		if (!(boolean)request.getAttribute("trangthaiDK")) {%>
              `			<p class="text-danger mt-4">Đăng ký không thành công</p>
              		
              	<% } else  {%>
              			<p class="text-success mt-4">Đăng ký thành công</p>
              	<% }} %>
            </div>
          </div>
        </div>
  </div>
</body>
</html>
