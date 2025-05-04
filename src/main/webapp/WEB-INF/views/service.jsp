<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TAXI SERVICE</title>
</head>
<body>
    <h3>Changing data</h3>
<ol>
    <li><a href="${pageContext.request.contextPath}/manufacturers/add">Add new manufacturer to dataBase</a></li>
    <li><a href="${pageContext.request.contextPath}/drivers/add">Add new driver to dataBase</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/add">Add new car to dataBase</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/drivers/add">Add new driver to car</a></li>
</ol>

<h3>Please choose operation</h3>
<ol>
    <li><a href="${pageContext.request.contextPath}/cars">Show all cars</a></li>
    <li><a href="${pageContext.request.contextPath}/drivers">Show all drivers</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturers">Show all manufacturers</a></li>
</ol>
</body>
</html>
