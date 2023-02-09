<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/cars/add">Create a new car</a>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>CAR_ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER_ID</td>
        <td>MANUFACTURER</td>
        <td>COUNTRY</td>
        <td>DRIVERS</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.id}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
            <c:forEach items="${car.drivers}" var="driver">
                <td><c:out value="DRIVER_ID: ${driver.id}"/></td>
                <td><c:out value="NAME: ${driver.name}"/></td>
                <td><c:out value="LICENSE_NUMBER: ${driver.licenseNumber}"/></td>
            </c:forEach>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/add?id=${car.id}">Add a driver</a></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete a car</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
