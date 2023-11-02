<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String maXoa = request.getParameter("ms");
		String step = request.getParameter("step");
		giohangbo lstGioHang = null;
		if (step == null)
		{
			lstGioHang = (giohangbo)session.getAttribute("gh");
			lstGioHang.Xoa(maXoa);
		} else 
		{
			lstGioHang = (giohangbo)session.getAttribute("gh");
			for (giohangbean i : lstGioHang.ds)
			{
				if (i.getMaSach().equals(maXoa)){
					lstGioHang.Them(maXoa, "", "" ,Long.parseLong(step), (long)0);
					break;
				}
			}
		}
		response.sendRedirect("htgiohang.jsp");
	%>
</body>
</html>