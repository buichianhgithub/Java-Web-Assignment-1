<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	ul li{
		display:inline-block;
		margin-right:20px;
	}
</style>
</head>
<body>
	<ul>
		<li><a href="#">Tap 1</a></li>
		<li><a href="#">Tap 2</a></li>
		<li><a href="#">Tap 3</a></li>
		<li><a href="#">Tap 4</a></li>
		<li style="float:right">Welcome <%=session.getAttribute("first_name") %></li>
		<li style="float:right"><a href="#">Log Out</a></li>
	</ul>
</body>
</html>