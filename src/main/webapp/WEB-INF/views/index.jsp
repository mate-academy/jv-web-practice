<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Admin operations</h1>
<table>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Add new manufacturer</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/all">Display all manufacturers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Add new driver</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/all">Display all drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add">Add new car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/all">Display all cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/delete">Delete driver from car</a></td></tr>
</table>
</body>
</html>
