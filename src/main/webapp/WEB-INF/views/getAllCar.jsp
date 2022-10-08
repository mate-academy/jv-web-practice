<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of car:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MANUFACTURER NAME</td>
        <td>MANUFACTURER COUNTRY</td>
        <td>MODEL</td>
        <td>DRIVER NAME</td>
        <td>LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${cars}" var="cars">
        <tr>
            <td><c:out value="${cars.id}" /></td>
            <td><c:out value="${cars.manufacturer.name}" /></td>
            <td><c:out value="${cars.manufacturer.country}" /></td>
            <td><c:out value="${cars.model}" /></td>
        <td><a href="${pageContext.request.contextPath}
            /cars/delete?id=${cars.id}">delete this car</a> </td>
        <c:forEach items="${cars.drivers}" var="driver">
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
        </tr>
        </c:forEach>
    </c:forEach>
</table>
</body>
</html>
