<%@page import="bean.khachhangbean"%>
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
	
* {
	box-sizing : border-box;
	}

	
button:focus {
	outline : none;
}
	
.price {
	font-size : 24px;
	font-weight : 500;
}
	
.over-flow {
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 1;
    overflow: hidden;
    /* text-overflow: ellipsis; */
    /* white-space: nowrap; */
    word-break: break-word;
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

.icon-list {
	font-size : 36px;
}

	
.card-book {
	box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 12px;
	
}

.card-book__content {
	padding : 20px 16px
}

.fixed-nav {
	position : fixed;
	top : 0;
	left : 0;
	right : 0;
	z-index : 1;
	box-shadow : rgba(17, 17, 26, 0.1) 0px 1px 0px;
}

@media ( min-width : 768px) {
	.list-book { 
		--order: 2;
	}
	.search-book { 
		--order: 3;
	}
}

.content-page {
	padding-top : 50px;
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
				<li class="nav-item active"><a class="nav-link" href="sachController">Trang
						Chủ <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item">
					<a class="nav-link" href="giohangController">Giỏ Hàng <span style="color:#B2533E;">(Hiện có : <%=sl%> mặt hàng)</span> </a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Thanh
						toán</a></li>
				<li class="nav-item"><a class="nav-link" href="lichsuController">Lịch sử
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


	<div class="container mt-5 content-page">
		<div class="row">
			<div class="col-lg-2 col-md-12 mb-5" style="order: var(--order)">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarList" aria-controls="navbarList" aria-expanded="true" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"><i class='bx bx-list-ul icon-list' ></i></span>
				
			</button>
				<div class="collapse navbar-collapse" id="navbarList">
				<%
				ArrayList<loaibean> dsLoai = (ArrayList<loaibean>)request.getAttribute("dsLoai");
				
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

			<div class="col-lg-8 col-md-12 list-book">
				<div class="row book-container">
			
			</div>
			<div>
				<%
					int length = (int)request.getAttribute("length");
					for (int i = 1 ; i <= length ; i++)
					{
				%>
					<button class="getPage"><%=i%></button>
				<%} %>
			</div>
			</div>
		


			<div class="col-lg-2 col-md-12 search-book mb-5"
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
	
</body>

<script type="text/javascript">
	const aTag = document.querySelectorAll('.getPage');
	const container = document.querySelector('.book-container')
	console.log(aTag)
	aTag.forEach(function(e , i) {
		e.onclick = function(event){
			const xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				console.log(this.responseText);
				container.innerHTML = this.responseText; 
			}
			xhttp.open("GET", "phanTrangController?page="+(i + 1));
			xhttp.send();
		}
	})
	
	const xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				console.log(this.responseText);
				container.innerHTML = this.responseText; 
			}
			xhttp.open("GET", "phanTrangController");
			xhttp.send();
	
</script>

</html>