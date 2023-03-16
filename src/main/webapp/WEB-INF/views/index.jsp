<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Start page</title>
</head>
<body>
	<h1>Hello, here is a list of current available operations with the service</h1>
	<a href="${pageContext.request.contextPath}/drivers/add">
	Create a driver</a>
	<br>
	<a href="${pageContext.request.contextPath}/drivers">
	Display all drivers with ability to delete</a>
	<br>
	<a href="${pageContext.request.contextPath}/manufacturers/add">
	Create a manufacturer</a>
	<br>
	<a href="${pageContext.request.contextPath}/manufacturers">
	Display all manufacturers with ability to delete</a>
	<br>
	<a href="${pageContext.request.contextPath}/cars/add">
	Create a car</a>
	<br>
	<a href="${pageContext.request.contextPath}/cars">
	Display all cars with ability to delete</a>
	<br>
	<a href="${pageContext.request.contextPath}/cars/drivers/add">
	Add driver to car</a>
</body>
</html>
