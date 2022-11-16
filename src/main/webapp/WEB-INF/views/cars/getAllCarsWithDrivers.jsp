<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars with drivers</title>
</head>
<body>
<h1>List of cars with drivers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVER ID</td>
        <td>DRIVER NAME</td>
        <td>DRIVER LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <c:forEach items="${car.getDrivers()}" var="driver">
            <tr>
                <td><c:out value="${car.getId()}"/></td>
                <td><c:out value="${car.getModel()}"/></td>
                <td><c:out value="${car.getManufacturer().getName()}"/> </td>
                <td><c:out value="${driver.getId()}"/></td>
                <td><c:out value="${driver.getName()}"/></td>
                <td><c:out value="${driver.getLicenseNumber()}"/></td>
                <td><a href="${pageContext.request.contextPath}/cars/drivers/delete?car_id=${car.getId()}&driver_id=${driver.getId()}">Delete car with driver</a></td>
            </tr>
        </c:forEach>
    </c:forEach>
</table>
<a href="http://localhost:8080/index">Return to homepage</a>
</body>
</html>
