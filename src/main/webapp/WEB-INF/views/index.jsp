<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<h2>Choose your operation:</h2>
<h3>Cars operations:</h3>
<ul>
    <li><p><a href="${pageContext.request.contextPath}/cars/create">Create new car</a></p></li>
    <li><p><a href="${pageContext.request.contextPath}/cars/drivers/add-driver-to-car">Add a driver to car</a></p></li>
</ul>
<h3>Drivers operations:</h3>
<ul>
    <li><p><a href="${pageContext.request.contextPath}/drivers">Display all drivers</a></p></li>
    <li><p><a href="${pageContext.request.contextPath}/drivers/create">Create new driver</a></p></li>
</ul>
<h3>Manufacturers:</h3>
<ul>
    <li><p><a href="${pageContext.request.contextPath}/manufacturers/create">Create new manufacturer</a></p></li>
</ul>
</body>
</html>
