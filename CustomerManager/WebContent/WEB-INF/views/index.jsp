<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Manager</title>
</head>
<body>
<div align="center">
	<h1>Product Manager</h1>
	<h2>Welcome ${customer.name}</h2>
	<form method="get" action="search">
		<input type="text" name = "keyword"/>
		<input type="submit" value="search"/>
	</form>
	<h3><a href="new">New Product</a></h3>
	<table border = "1">
		<tr>
			<th>Title</th>
			<th>Category</th>
			<th>Manufacturer</th>
			<th>Price</th>
		</tr>
		<c:forEach items="${listProduct}" var="product"> 
			<tr>
				<td>${product.title}</td>
				<td>${product.manufacturer}</td>
				<td>${product.category}</td>
				<td>${product.price}</td>
			
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>