<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CARS</title>
</head>
<body>
<h1>ALL CARS FROM TAXI_SERVICE DB:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>MANUFACTURER_ID</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.id}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a></td>
        <tr>
        <tr>
            <td>ID</td>
            <td>DRIVER_NAME</td>
            <td>LICENSE_NUMBER</td>
        </tr>
        <x:forEach items="${car.drivers}" var="driver">
            <tr>
            <td><x:out value="${driver.id}"/></td>
            <td><x:out value="${driver.name}"/></td>
            <td><x:out value="${driver.licenseNumber}"/></td>
            </tr>
        </x:forEach>
    </tr>
        </tr>
    </c:forEach>
</table>
</body>
</html>
