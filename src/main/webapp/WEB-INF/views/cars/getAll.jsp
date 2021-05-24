<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of cars</title>
</head>
<body>
<table border="1">
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>Manufacturer's name</td>
        <td>Manufacturer's country</td>
        <td>Driver's list</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.getManufacturer().name}" /></td>
            <td><c:out value="${car.getManufacturer().country}" /></td>
            <c:forEach items="${car.getDrivers()}" var="driver">
            <td>
                <ul>
                    <li>Driver id: <c:out value="${driver.id}" /></li>
                    <li>Driver name: <c:out value="${driver.name}" /></li>
                    <li>License number: <c:out value="${driver.licenseNumber}" /></li>
                    <li><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete driver</a></li>
                </ul>
            </td>
            </c:forEach>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete Car</a></td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/cars/addCar">Add car</a>
<a href="${pageContext.request.contextPath}/">To main page</a>
</body>
</html>
