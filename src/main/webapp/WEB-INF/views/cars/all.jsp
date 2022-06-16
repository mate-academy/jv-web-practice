<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<style>
    table, th, td {
        border:1px solid black;
    }
</style>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars</h1>
<table style="width:75%">
    <tr>
        <td>MODEL</td>
        <td>MANUFACTURER_NAME</td>
        <td>MANUFACTURER_COUNTRY</td>
        <td>DRIVER_NAME</td>
        <td>DRIVER_LICENSE_NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.getManufacturer().name}" /></td>
            <td><c:out value="${car.getManufacturer().country}" /></td>
            <td>
        <c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.name}" /><br>
        </c:forEach>
            </td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.licenseNumber}" /><br>
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a></td>
        </tr>
    </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/index">Return to main page</a></p>
</body>
</html>
