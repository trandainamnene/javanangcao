<%@page import="dao.KetNoi"%>
<%@page import="java.util.Calendar"%>
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
		KetNoi kn = new KetNoi();
		kn.ketNoi();
	%>

</body>
</html>