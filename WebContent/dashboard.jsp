<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<style type="text/css">
body{
	width:100%;
	height:800px;
}
ul li {
	display: inline-block;
	margin-right: 20px;
}
.cls-content{
	display:inline-block;
	width:25%;
	height:70%;
	border:1px solid black;
}
.cls-big-content{
	width:48%;
	height:70%;
	border:1px solid black;
}

</style>
</head>
<body>
	<% if(session.getAttribute("first_name")==null){
		response.sendRedirect("login.jsp");
	}
	
	%>
	<ul>
		<li><a href="tap1.jsp">Tap 1</a></li>
		<li><a href="tap2.jsp">Tap 2</a></li>
		<li><a href="tap3.jsp">Tap 3</a></li>
		<li><a href="tap4.jsp">Tap 4</a></li>
		<li style="float: right">Welcome <%=session.getAttribute("first_name") %></li>
		<li style="float: right">
			<form action="login">
				<input type="submit" value="Log Out">
			</form>
		</li>
	</ul>
	
	<h1 style="text-align:center;">Dashboard</h1>
	<section class="cls-content">
		<h3 style="text-align:center;">Future Enhancement</h3>
	</section>
	<section class="cls-content">
		<h3 style="text-align:center;">Future Enhancement</h3>
	</section>
	<section class="cls-content cls-big-content">
		<h3 style="text-align:center;">Future Enhancement</h3>
	</section>
	
</body>
</html>