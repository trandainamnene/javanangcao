<%@page import="bean.khachhangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.giohangbean"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.sachbo"%>
<%@page import="bo.loaibo"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
</head>
<body>
	<style>
* {
	box-sizing : border-box;
}


	
button:focus {
	outline : none;
}
	
	/* Chrome, Safari, Edge, Opera */
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}

	
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

.icon-remove {
		color : red;
		font-size : 24px
}

.book-item {
	display:flex;
	justify-content:space-between;
	flex-wrap : wrap;
}

.book-item__img {
	width : 100%;
	height: 100%;
	object-fit: cover;
}

.form-delete {
	display : flex;
	justify-content : space-between;
	align-items : center;
}

.seperate {
	height : 1px;
	margin : 16px 0;
}

.card-book {
	box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 12px;
}

.icon-list {
	font-size : 36px;
}

.fixed-nav {
	position : fixed;
	top : 0;
	left : 0;
	right : 0;
	z-index : 1;
	box-shadow : rgba(17, 17, 26, 0.1) 0px 1px 0px;
}


.content-page {
	padding-top : 50px;
}

@media ( min-width : 992px) {
	.list-book { 
		--order: 2;
	}
	.search-book { 
		--order: 3;
	}
	
	
}
</style>

	<%
		khachhangbean tama = (khachhangbean)session.getAttribute("dn");
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
				<li class="nav-item"><a class="nav-link" href="sachController">Trang
						Chủ <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="giohangController">Giỏ
						Hàng  <span style="color:#B2533E;">(Hiện có : <%=sl%> mặt hàng)</span></a></li>
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
						Xin chào : <b><%=tama.getHoten()%></b>
				</span></li>
				<li class="nav-item"><a class="nav-link" href="dangxuatController">Đăng
						xuất</a></li>
				<%
				}
				%>
			</ul>
		</div>
	</nav>
	
	
	<%
	ArrayList<loaibean> dsLoai = (ArrayList<loaibean>)request.getAttribute("dsLoai");	ArrayList<sachbean> dsSach = (ArrayList<sachbean>)request.getAttribute("dsSach");
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	%>


	<div class="container mt-5 content-page ">
		<div class="row">
			<div class="col-lg-2 col-md-12 mb-5">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarList" aria-controls="navbarList" aria-expanded="true" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"><i class='bx bx-list-ul icon-list' ></i></span>
				
			</button>
				<div class="collapse navbar-collapse" id="navbarList">
				<%
				for (loaibean l : dsLoai) {
				%>
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active">
					<a href="sachController?ml=<%=l.getMaloai()%>"> <%=l.getTenLoai()%></a>
					</ul>
				<%
				}
				%>		
				</div>
			</div>

			<div class="col-lg-6 col-12 mb-4">
				
			<% 
				
				giohangbo gh1 = (giohangbo)session.getAttribute("gh");
				if (gh1 == null) { out.print("Giỏ hàng hiện đang trống"); }
				if (gh1 != null)
				{
					if (gh1.ds.size() == 0)
					{
						response.sendRedirect("sachController");
					}
				for (giohangbean i : gh1.ds)
				{ 
			%>
				<form action="xoaController" id="form-deletes">
				
				</form>
			
				<div class="row">
					<div class="col-11">
						<div class="row">
							<div class="col-12 col-md-12 col-lg-6">
								<img class="book-item__img" src="<%=i.getAnh()%>">
							</div>
							<div class="col-12 col-md-12 col-lg-6">
								<h2><%=i.getTenSach() %></h2>
								<p>Số lượng : <%=i.getSoLuongMua() %></p>
								<p>Giá : <b class="text-success"><%=i.getGia()%></b></p>
								<p>Thành tiền : <b class="text-success"><%=i.getThanhTien() %></b> </p>
								<form action="xoaController?ms=<%=i.getMaSach()%>" method="POST" class="mt-4 form-delete">
									<input required="required" class="mr-4 p-1" type="number" style="flex: 1;" placeholder="Nhập số lượng" name="step">
									<input type="submit" value="+" class="btn btn-primary">
								</form>
								<a style="display:block;" href="xoaController?ms=<%=i.getMaSach()%>" class="mt-4 btn btn-danger">Xóa</a>
							</div>		
						</div>
					</div>
					<div class="col-1">
						<input type="checkbox" name="cb-masach" value=<%=i.getMaSach()%> form="form-deletes">
					</div>
				</div>		
				<div class="seperate bg-info"></div>	
				<%} %>	
				<div>
					<input class="btn btn-danger mb-3" type="submit" form="form-deletes" value="Xóa các sách đã chọn">
					<a href="xoaController?deleteall=true" class="btn btn-danger mb-3">Xóa tất cả</a>
				</div>
				<div class="book-item">
					<h3 style="text-align:right;">Tổng tiền : <b class="text-success"><%=gh1.TongTien()%></b></h3>
					<a href="lichsuController" type="button" class="btn btn-primary">Đặt Mua</a>
				</div>
				
			<%
			} 
			%>
			</div>

			<div class="col-lg-3 col-12 search-book mb-5"
				style="order: var(--order)">
				<form class="form-inline" action="sachController">
					<input style="width: 100%" class="form-control mr-sm-2 mb-4"
						type="text" placeholder="Nhập tên sách , tác giả"
						aria-label="Search" name="tukhoa">
					<button
						class="btn btn-outline-info my-2 my-sm-0 ml-auto btn-search"
						type="submit"><i class='bx bx-search-alt-2'></i> Tìm kiếm</button>
				</form>
			</div>

		</div>
	</div>
	

	<div id="textajax">
	asdioaskdosa</div>
</body>
