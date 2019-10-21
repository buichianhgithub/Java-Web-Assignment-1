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
		if (session.getAttribute("first_name") == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	<h1>Future Enhancement</h1>
	<div>
		<img src="Resources/imgs/Under-Construction.png"
			alt="under construction">
	</div>
</body>
</html>