<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../header.jsp"%>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h3>CARS & DRIVERS</h3>
<table border="1">
    <tr>
        <td>Car Id</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Delete car</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.getManufacturer().name}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete car</a></td>
            <tr>
                <td><td>Driver Id</td>
                <td>Driver Name</td>
                <td>License Number</td>
                <td>Delete driver from car</td>
            </tr>
            <c:forEach items="${car.getDrivers()}" var="driver">
                <tr>
                    <td><td><c:out value="${driver.id}"/></td>
                    <td><c:out value="${driver.name}"/></td>
                    <td><c:out value="${driver.licenseNumber}"/></td>
                    <td><a href="${pageContext.request.contextPath}/cars/drivers/delete?car_id=${car.id}&driver_id=${driver.id}">Delete driver from car</a></td>
                </tr>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
</body>
</html>
