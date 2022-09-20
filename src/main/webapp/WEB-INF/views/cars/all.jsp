<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>This is all cars</title>
</head>
<body><h1>List of cars</h1>
<table>
    <tr>
        <td> ID </td>
        <td> MODEL </td>
        <td> CAR'S_MANUFACTURER </td>
        <td> MANUFACTURER_COUNTRY </td>
        <td> DELETE_THIS_CAR </td>
        <td> DRIVER_MANE </td>
        <td> DRIVER_LICENCE_NUMBER </td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/> </td>
            <td><c:out value="${car.model}"/> </td>
            <td><c:out value="${car.manufacturer.name}"/></td>
        <td><c:out value="${car.manufacturer.country}"/></td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete this car</a></td>
        <c:forEach items="${car.drivers}" var="driver">
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <tr></tr>
        </c:forEach>
    </c:forEach>
</table>
    <a href="${pageContext.request.contextPath}/index">Back to home</a>
</body>
</html>
