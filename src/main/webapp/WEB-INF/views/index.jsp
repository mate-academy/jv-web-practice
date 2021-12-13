<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to TAXI service</title>
</head>
<body>
<h1>Choose operation:</h1>
<a href="${pageContext.request.contextPath}/drivers/add">Create a driver</a><br>
<a href="${pageContext.request.contextPath}/drivers">Display all drivers</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/add">Create a manufacturer</a><br>
<a href="${pageContext.request.contextPath}/cars/add">Create a car</a><br>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a><br>
</body>
</html>
