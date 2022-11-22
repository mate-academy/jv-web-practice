<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Choose an operation</h1>
<a href="${pageContext.request.contextPath}/drivers/add">Add a new driver</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/add">Add a new manufacturer</a><br>
<a href="${pageContext.request.contextPath}/cars/add">Add a new car</a><br>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a><br>
<a href="${pageContext.request.contextPath}/drivers">Show all drivers</a><br>
<a href="${pageContext.request.contextPath}/manufacturers">Show all manufacturers</a><br>
<a href="${pageContext.request.contextPath}/cars">Show all cars</a><br>
</body>
</html>
