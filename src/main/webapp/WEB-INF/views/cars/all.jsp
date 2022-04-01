<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/menu">MENU</a>
<h2>List of cars:</h2>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>COUNTRY</td>
        <td>DRIVER NAME</td>
        <td>LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td>${car.id}</td>
            <td>${car.model}</td>
            <td>${car.manufacturer.name}</td>
            <td>${car.manufacturer.country}</td>
            <c:forEach items="${car.drivers}" var="driver">
                <td>${driver.name}</td>
                <td>${driver.licenseNumber}</td>
            </c:forEach>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
