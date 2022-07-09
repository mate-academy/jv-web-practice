<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>List of cars</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Manufacturer</td>
        <td>Model</td>
        <td>Country</td>
        <td></td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
        <td><c:out value="${car.getId()}" /></td>
        <td><c:out value="${car.getManufacturer().getName()}" /></td>
            <td><c:out value="${car.getModel()}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?car_id=${car.getId()}">delete this car</a></td>
            <td></td>
        </tr>
        <c:forEach items="${car.getDrivers()}" var="driver">
            <tr>
                <td>Driver</td>
                <td><c:out value="${driver.getId()}" /></td>
                <td><c:out value="${driver.getName()}" /></td>
                <td><c:out value="${driver.getLicenseNumber()}" /></td>
                <td></td>
            </tr>
        </c:forEach>
    </c:forEach>
</table>
</body>
</html>
