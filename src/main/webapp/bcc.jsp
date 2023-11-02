<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
	<style>
		table {
			border-collapse: collapse;
			margin-top : 10px;
		}
	</style>
	<% String a =  request.getParameter("txtn");%>
	<form action="" method="POST">
		Nhập n :
		<input type="number" name="txtn" min=1 max =9 value=<%=a == null ? 1 : a%>>
		<br>
		<br>
		<br>
		<br>
		<input type="submit" name="btn1" value="Hiển thị">
	</form>
	
	<table border=1>
		<thead>
			<tr>
				<th>Bảng cửu chương <%=a == null ? "" : a %></th>
			</tr>
		</thead>
		
			<%for(int i = 1 ; i <= 10 ; i++) { 
				if (a != null) {
			%>
				<tr>
					<td> <%=a%> X <%=i %> = <%=i*Integer.parseInt(a)%></td>
				</tr>
			<%}}%>
		
	</table>
	<table>
		
	</table>
</html>