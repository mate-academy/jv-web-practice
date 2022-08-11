<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Taxi service portal</h1>
<br>Cars service:<br>
<a href="${pageContext.request.contextPath}/cars">Show all cars</a><br>
<a href="${pageContext.request.contextPath}/cars/add">Add car</a><br>
<a href="${pageContext.request.contextPath}/cars/drivers/assign">Assign driver to car</a><br>
<br>Drivers service:<br>
<a href="${pageContext.request.contextPath}/manufacturers">Show all manufacturers</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/add">Add manufacturer</a><br>
<br>Drivers service:<br>
<a href="${pageContext.request.contextPath}/drivers">Show all drivers</a><br>
<a href="${pageContext.request.contextPath}/drivers/add">Add driver</a><br>
</body>
</html>
