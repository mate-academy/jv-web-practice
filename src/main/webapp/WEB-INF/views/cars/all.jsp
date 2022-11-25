<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show all cars</title>
</head>
<body>
<h1>All cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Drivers</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}"/></td>
            <td><c:out value="${car.getModel()}"/></td>
            <td><c:out value="${car.getManufacturer().getName()}"/></td>
            <td>
                <c:forEach items="${car.getDrivers()}" var="driver">
                    <c:out value="${driver.getName()}" />
                    <c:out value="${drriver.getLicenseNumber()}" />
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
