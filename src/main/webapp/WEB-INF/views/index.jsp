<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Welcome to taxi service!</h1><br>
<h3><a href="${pageContext.request.contextPath}/drivers">Display all drivers</a></h3>
<h3><a href="${pageContext.request.contextPath}/drivers/add">Create new driver</a></h3>
<h3><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></h3><br>
<h3><a href="${pageContext.request.contextPath}/cars">Display all cars</a></h3>
<h3><a href="${pageContext.request.contextPath}/cars/add">Create new car</a></h3><br>
<h3><a href="${pageContext.request.contextPath}/manufacturers">Display all cars' manufacturers</a></h3>
<h3><a href="${pageContext.request.contextPath}/manufacturers/add">Create new manufacturer</a></h3>
</body>
</html>
