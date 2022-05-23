<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>TAXI SERVICE</h1>
<a href="${pageContext.request.contextPath}/drivers">
    Get All Drivers
</a><br>
<a href="${pageContext.request.contextPath}/manufacturers">
    Get All Manufacturers
</a><br>
<a href="${pageContext.request.contextPath}/drivers/add">
    Add Driver
</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/add">
    Add Manufacturer
</a><br>
<a href="${pageContext.request.contextPath}/cars/add">
    Add Car
</a><br>
<a href="${pageContext.request.contextPath}/cars/drivers/add">
    Add Driver to Car
</a><br>
</body>
</html>
