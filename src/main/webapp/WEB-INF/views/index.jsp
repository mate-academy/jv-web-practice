<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
    <h1>Welcome to taxi-service!</h1>
    <a href="${pageContext.request.contextPath}/drivers/add">Create new driver</a><br>
    <a href="${pageContext.request.contextPath}/drivers">Display all drivers</a><br>
    <a href="${pageContext.request.contextPath}/manufacturers/add">Create new manufacturer</a><br>
    <a href="${pageContext.request.contextPath}/cars/add">Create new car</a><br>
    <a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a><br>
    <a href="${pageContext.request.contextPath}/manufacturers">All manufacturers</a><br>
    <a href="${pageContext.request.contextPath}/cars">All cars</a><br>
</body>
</html>
