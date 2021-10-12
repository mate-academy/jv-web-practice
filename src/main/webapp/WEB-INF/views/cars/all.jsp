<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars: </h1>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>ManufacturerId</td>
        <td>Manufacturer</td>
        <td>Country</td>
        <td>Driver's name</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.manufacturer.country}" /></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">${driver.name} <br> </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete this cars</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
