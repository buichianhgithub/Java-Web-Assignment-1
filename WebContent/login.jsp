<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>

</head>
<body>
	
	<form action="login" method="post">
		<table>
			<h1>Login Form</h1>
			<tr>
				<td>Username:</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
			<td></td>
			<td>
				<div class="g-recaptcha" data-sitekey="6Leutb4UAAAAAPaZKlj4pY3VckWWBPTkhjtQOIH_">
				</div>
			</td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" name="login"></input></td>
			</tr>
		</table>
	</form>
</body>
</html>