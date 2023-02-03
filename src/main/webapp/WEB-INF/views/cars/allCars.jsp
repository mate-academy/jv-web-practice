<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Getting all cars</title>
</head>
<body>
<h1>Get all cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td>${car.getId()}</td>
            <td>${car.getModel()}</td>
            <td>${car.getManufacturer().getName()}</td>
            <td>${car.getDrivers().toString()}</td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">Delete this car</a></td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="${pageContext.request.contextPath}/cars/create">Add new car</a>
<a href="${pageContext.request.contextPath}/cars/drivers/add">Add new driver to car</a>
<a href="${pageContext.request.contextPath}/index">Home page</a>
</body>
</html>