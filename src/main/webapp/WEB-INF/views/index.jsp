<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Taxi service</h1>
<h2>Choose an action:</h2>
<ol>
    <li><a href="${pageContext.request.contextPath}/cars">Show all cars</a></li>
    <li><a href="${pageContext.request.contextPath}/drivers">Show all drivers</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturers">Show all manufacturers</a></li>
</ol>
<h2>Adding information to Database:</h2>
<ol>
    <li><a href="${pageContext.request.contextPath}/drivers/add">Add new driver</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturers/add">Add new manufacturer</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/add">Add new car</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/drivers/add"
    >Add new driver to the Car</a></li>
</ol>
</body>
</html>
