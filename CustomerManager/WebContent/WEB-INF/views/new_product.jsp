<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Product</title>
</head>
<body>
<div align="center">
	<h2>New Product</h2>
	<form:form action="save" method="post" modelAttribute="product">
		<table border="1">
			<tr>
				<td>Title</td>
				<td><form:input path="title"/></td>
			</tr>
			<tr>
				<td>Manufacturer</td>
				<td><form:input path="manufacturer"/></td>
			</tr>
			<tr>
				<td>Category</td>
				<td><form:input path="category"/></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><form:input path="price"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type=submit value="save"/></td>
			</tr>
		</table>
	</form:form>
</div>

</body>
</html>