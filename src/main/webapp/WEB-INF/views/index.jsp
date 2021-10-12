<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Welcome to the Taxi service App.</h1>

<h2>Please, choose command from list below:</h2>
<ul>
    <li><a href="${pageContext.request.contextPath}/drivers/add">Create new driver</a></li>
    <li><a href="${pageContext.request.contextPath}/drivers">Display all drivers</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturers/add">Create new manufacturer</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/add">Create new car</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturers">Display all manufacturers</a></li>
    <li><a href="${pageContext.request.contextPath}/cars">Display all cars</a></li>
</ul>
</body>
</html>
