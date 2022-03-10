<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
    <h1>Welcome to taxi service</h1>
    <p>Please, choose your choice below: </p>
    <a href="${pageContext.request.contextPath}/drivers/add">Create a new driver</a><br>
    <a href="${pageContext.request.contextPath}/drivers/all">Show all drivers</a><br>
    <a href="${pageContext.request.contextPath}/manufacturer/add">Create a new manufacturer</a><br>
    <a href="${pageContext.request.contextPath}/manufacturer/all">Show all manufacturers</a><br>
    <a href="${pageContext.request.contextPath}/cars/add">Create a new car</a><br>
    <a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a>
</body>
</html>
