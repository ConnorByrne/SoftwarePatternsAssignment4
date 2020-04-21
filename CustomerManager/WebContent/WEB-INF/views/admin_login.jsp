<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page</title>
<link href = "webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<form name="loginForm" method="get" action="adminIndex">
	<p>
		User Name: <input type="text" name = "userName"/>
	</p>
	<p>
		Password: <input type="text" name = "password"/>
	</p>
	<p>
		<input class="btn" type="submit" value="login"/> 
		
	</p>
</form>

<p>${message}</p>

	<script src="webjars.jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars.bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>