<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Manager</title>
<link href = "webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div align="center">
	<h1>Product Manager</h1>
	<h2>Welcome ${admin.userName}</h2>
	<form method="get" action="search">
		<input type="text" name = "keyword"/>
		<input type="submit" value="search"/>
	</form>
	<h3><a href="newAccount">New Product</a></h3>
	<table border = "1">
		<tr>
			<th>Title</th>
			<th>Category</th>
			<th>Manufacturer</th>
			<th>Price</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${listProduct}" var="product"> 
			<tr>
				<td>${product.title}</td>
				<td>${product.category}</td>
				<td>${product.manufacturer}</td>
				<td>${product.price}</td>
				<td><a href="/edit?id=${product.id}"> Edit</a>&nbsp;&nbsp;<a href="/delete?id=${product.id}">Delete</a></td>
			
			</tr>
		</c:forEach>
	</table>
</div>
	<script src="webjars.jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars.bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>