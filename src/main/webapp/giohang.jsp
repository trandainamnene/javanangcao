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

</head>
<body>
			<%
			String ms = request.getParameter("ms");
			String ts = request.getParameter("ts");
			String gia = request.getParameter("gia");
			String anh = request.getParameter("anh");
			giohangbo gh = null;
			if (ms != null && ts != null && gia != null && anh != null)
			{
				if (session.getAttribute("gh") == null)
				{
					gh = new giohangbo();
					session.setAttribute("gh" , gh);
				}
			
			gh = (giohangbo)session.getAttribute("gh");
			gh.Them(ms, ts, anh , (long)1, Long.parseLong(gia));
			session.setAttribute("gh", gh);
			}
			response.sendRedirect("htgiohang.jsp");
			%>
			
	
</body>
</html>