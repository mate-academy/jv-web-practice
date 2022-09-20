<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Welcome</h1>
    <ol>
        <li><a href="${pageContext.request.contextPath}/manufacturers/create">Add new manufacturer to dataBase</a></li>
        <li><a href="${pageContext.request.contextPath}/drivers/create">Add new driver to dataBase</a></li>
        <li><a href="${pageContext.request.contextPath}/cars/create">Add new car to dataBase</a></li>
        <li><a href="${pageContext.request.contextPath}/cars/drivers/add">Add new driver to car</a></li>
    </ol>
    <ol>
        <li><a href="${pageContext.request.contextPath}/cars/all">Show all cars</a></li>
        <li><a href="${pageContext.request.contextPath}/drivers/all">Show all drivers</a></li>
        <li><a href="${pageContext.request.contextPath}/manufacturers/all">Show all manufacturers</a></li>
    </ol>
</body>
</html>
