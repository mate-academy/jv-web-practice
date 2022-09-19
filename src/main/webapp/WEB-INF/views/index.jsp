<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Information</h1>
<a href="${pageContext.request.contextPath}/cars">List of all cars</a>
<a href="${pageContext.request.contextPath}/drivers">List of all drivers</a>
<a href="${pageContext.request.contextPath}/manufacturers">List of all manufacturers</a>
<h1>Add new information</h1>
<a href="${pageContext.request.contextPath}/drivers/add">Add new diver</a>
<a href="${pageContext.request.contextPath}/manufacturers/add">Add new manufacture</a>
<a href="${pageContext.request.contextPath}/cars/add">Add new car</a>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add a car to a driver</a>
</body>
</html>