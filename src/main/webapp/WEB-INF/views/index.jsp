<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<h2>This is taxi service main page. Here we can:</h2>

<h3>Drivers:</h3>
<ul>
    <li><p><a href="${pageContext.request.contextPath}/drivers">Display all drivers</a></p></li>
    <li><p><a href="${pageContext.request.contextPath}/drivers/create">Create a new driver</a></p></li>
</ul>
<h3>Manufacturers:</h3>
<ul>
    <li><p><a href="${pageContext.request.contextPath}/manufacturers">Display all manufacturers</a></p></li>
    <li><p><a href="${pageContext.request.contextPath}/manufacturers/create">Create a new manufacturer</a></p></li>
</ul>
<h3>Cars:</h3>
<ul>
    <li><p><a href="${pageContext.request.contextPath}/cars">Display all cars</a></p></li>
    <li><p><a href="${pageContext.request.contextPath}/cars/create">Create a new car</a></p></li>
    <li><p><a href="${pageContext.request.contextPath}/cars/drivers/add">Add a driver to a car</a></p></li>
</ul>
</body>
</html>
