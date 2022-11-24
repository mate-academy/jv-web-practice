<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Index</title>
</head>
<body>
<h2>Taxi service</h2>
<a href="${pageContext.request.contextPath}/cars-drivers/add">Add a driver to a car</a>
<br><br>
<a href="${pageContext.request.contextPath}/drivers/add">Create new driver</a>
<br>
<a href="${pageContext.request.contextPath}/drivers">Show all drivers</a>
<br><br>
<a href="${pageContext.request.contextPath}/manufacturers/add">Create new manufacturer</a>
<br>
<a href="${pageContext.request.contextPath}/manufacturers">Show all manufacturers</a>
<br><br>
<a href="${pageContext.request.contextPath}/cars/add">Create new car</a>
<br>
<a href="${pageContext.request.contextPath}/cars">Show all cars</a>
</body>
</html>
