<%@page import="bo.giohangbo"%>
<%@page import="bean.giohangbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String deleteall = request.getParameter("deleteall");
	String[] dsMaSach = request.getParameterValues("cb-masach");
	giohangbo gh = null;
	if (dsMaSach != null)
	{
	 	gh = (giohangbo)session.getAttribute("gh");
		for (String i : dsMaSach)
		{
			gh.Xoa(i);
		}
	}
	if (deleteall != null)
	{
		gh = (giohangbo)session.getAttribute("gh");
		gh.ds.clear();
	}
	response.sendRedirect("htgiohang.jsp");
	%>
</body>
</html>