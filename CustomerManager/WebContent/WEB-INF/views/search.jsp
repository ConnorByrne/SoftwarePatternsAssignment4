<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
<link href = "webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
 <style>
  .affix {
    top: 0;
    width: 100%;
    z-index: 9999 !important;
  }

  .affix + .container-fluid {
    padding-top: 70px;
  }
  </style>
</head>
<body>
<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/CustomerManager/login?userName=${customer.name}&password=${customer.password}">Customer Manager</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/CustomerManager/login?userName=${customer.name}&password=${customer.password}">Home<span class="glyphicon glyphicon-home"></span></a></li>
      <li><a href="/CustomerManager/">Customer Login<span class="glyphicon glyphicon-book"></span></a></li>
      <li><a href="/CustomerManager/adminLogin">Admin Login<span class="glyphicon glyphicon-tower"></span></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    	<li><form class="navbar-form" action="search">
      	<div class="form-group">
        <input type="text" name = "keyword" class="form-control" placeholder="Search">
      	</div>
      	<button type="submit" value="search" class="btn btn-default"><div class="glyphicon glyphicon-search"></div></button>
    	</form></li>
    	<li><a href="/CustomerManager/checkout"><span class="btn btn-success glyphicon glyphicon-shopping-cart"></span>Checkout</a></li>
    	<li><a href="/CustomerManager/createAccount"><span class="btn btn-success glyphicon glyphicon-user"></span>Sign Up</a></li>
    	<li><a href="/CustomerManager/logout"><span class=" btn btn-primary glyphicon glyphicon-log-in"></span>Logout</a></li>
    </ul>
  </div>
</nav>
<div align="center" class="container">
	<h1>Search Result</h1>
	<table class = "table table-striped table-bordered">
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
	<script src="webjars.jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars.bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>