<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<form name="loginForm" method="get" action="login">
	<p>
		User Name: <input type="text" name = "userName"/>
	</p>
	<p>
		Password: <input type="text" name = "password"/>
	</p>
	<p>
		<input class="btn" type="submit" value="login"/> <a href="createAccount" class="btn btn-success">Create Account</a>
	</p>
</form>

<p>${message}</p>

</body>
</html>