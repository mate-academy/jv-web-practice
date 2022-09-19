<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>Car's table</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DRIVER_ID</td>
        <td>DRIVER_NAME</td>
        <td>DRIVER_LICENSE_NUMBER</td>
        <td>IS_DELETED</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
        <td><c:out value="${car.getId()}"/></td>
        <td><c:out value="${car.getModel()}"/></td>
        <td><c:out value="${car.getManufacturer().getName()}"/></td>
        <td><c:out value="${car.getManufacturer().getCountry()}"/></td>
        <td>
        <c:forEach items="${car.getDrivers()}" var="driver">
            <tr>
                <td><c:out value="${driver.getId()}"/></td>
                <td><c:out value="${driver.getName()}"/></td>
                <td><c:out value="${driver.getLicenseNumber()}"/></td>
            </tr>
        </c:forEach>
        </td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">
            delete
        </a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>