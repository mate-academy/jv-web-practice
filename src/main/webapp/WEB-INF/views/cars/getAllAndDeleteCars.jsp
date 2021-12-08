<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../header.jsp"%>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h3>CARS & DRIVERS & MANUFACTURERS</h3>
<table border="1">
    <tr>
        <td>Car Id</td>
        <td>Model</td>
        <td>Manufacturer</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}"/></td>
            <td><c:out value="${car.getModel()}"/></td>
            <td><c:out value="${car.getManufacturer().getName()}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">Delete</a></td>
            <tr>
                <td><td>Driver Id</td>
                <td>Driver Name</td>
                <td>License Number</td>
            </tr>
            <c:forEach items="${car.getDrivers()}" var="driver">
                <tr>
                    <td><td><c:out value="${driver.getId()}"/></td>
                    <td><c:out value="${driver.getName()}"/></td>
                    <td><c:out value="${driver.getLicenseNumber()}"/></td>
                </tr>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
</body>
</html>
