<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h2>New Product</h2>
	<form:form action="saveAccount" method="post" modelAttribute="customer">
		<table border="1">
			<tr>
				<td>User name</td>
				<td><form:input path="name"/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><form:input path="password"/></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><form:input path="address"/></td>
			</tr>
			<tr>
				<td>Payment Method</td>
				<td><form:input path="payMethod"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type=submit value="saveAccount"/></td>
			</tr>
		</table>
	</form:form>
</div>

</body>
</html>