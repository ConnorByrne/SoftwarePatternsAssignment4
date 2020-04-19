<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
</head>
<body>
<div align="center">
	<h1>Search Result</h1>
	<table border = "1">
		<tr>
			<th>Title</th>
			<th>Manufacturer</th>
			<th>Category</th>
			<th>Price</th>
		</tr>
		<c:forEach items="${result}" var="product"> 
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