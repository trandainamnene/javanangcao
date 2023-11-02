<%@page import="org.apache.tomcat.util.threads.TaskQueue"%>
<%@page import="java.text.NumberFormat"%>
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
		String a = request.getParameter("txta");
		String b = request.getParameter("txtb");
		String butC = request.getParameter("butc");
		String butT = request.getParameter("butt");
		String butN = request.getParameter("butn");
		String butChia = request.getParameter("butchia");
		int kq = 0;
		if (a == "")
		{
			a = "0";
		}
		if (b == "")
		{
			b = "0";
		}
	%>
	<p>Gia tri cua a la <%=a %></p>
	<p>Gia tri cua b la <%=b %></p>
	<p>Phep tinh <%
		if (butC != null)
		{
			out.print(butC);
		}
		if (butT != null)
		{
			out.print(butT);
		}
		if (butN != null)
		{
			out.print(butN);
		}
		if (butChia != null)
		{
			out.print(butChia);
		}
	%></p>
	<p>Ket qua
		<%
		if (butC != null)
		{
			kq =Integer.parseInt(a) + Integer.parseInt(b);
			out.print(Integer.parseInt(a) + Integer.parseInt(b));
		}
		if (butT != null)
		{
			kq =Integer.parseInt(a) - Integer.parseInt(b);
			out.print(Integer.parseInt(a) - Integer.parseInt(b));
		}
		if (butN != null)
		{
			kq =Integer.parseInt(a) * Integer.parseInt(b);
			out.print(Integer.parseInt(a) * Integer.parseInt(b));
		}
		if (butChia != null)
		{
			kq =Integer.parseInt(a) / Integer.parseInt(b);
			out.print(Integer.parseInt(a) / Integer.parseInt(b));
		}
		response.sendRedirect("calculator.jsp?kq=" + kq + "&a=" + a + "&b=" + b);
		%>
	</p>
</body>
</html>