<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
// Kiem tra da tao bien session chua
	if (session.getAttribute("ss") == null)
	{
		session.setAttribute("ss", 0);
	}
	
	int s = 0;
	String tamn = request.getParameter("txtn");
	if (tamn != null)
	{
		int n = Integer.parseInt(tamn);
		//b1 : gan session vao bien
		s = (int)session.getAttribute("ss");
		//b2 : thay doi bien
		s = s + n;
		//b3 : Gan bien vao session
		session.setAttribute("ss", s);
	}
%>
<form action="" method="POST">
		Nhập n :
		<input type="number" name="txtn" min=1 max =9>
		<br>
		<br>
		<br>
		<br>
		<input type="submit" name="btn1" value="Hiển thị">
	</form>
	Tong : <%=session.getAttribute("ss") %>
</body>
</html>