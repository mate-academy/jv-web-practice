<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ALL CARS</title>
</head>
<body>
<h1>ALL CARS FROM TAXI_SERVICE DB:</h1>
<table>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td>ID</td>
            <td>MODEL</td>
            <td>MANUFACTURER</td>
            <td>MANUFACTURER_ID</td>
        </tr>
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.id}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a></td>
        <tr>
        <u:if test="${car.drivers.size() != 0}">
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
        </u:if>
        <u:if test="${car.drivers.size() == 0}">
            <tr>
                <td colspan="4">there isn't any driver assigned to the car</td>
            </tr>
        </u:if>
    </c:forEach>
</table>
<tr>
    <td><a href="${pageContext.request.contextPath}/index">Main page</a></td>
</tr>
</body>
</html>
