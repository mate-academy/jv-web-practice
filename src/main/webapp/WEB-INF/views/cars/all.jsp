<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>Registered cars</h1>
<table>
    <colgroup>
        <col span="7" style="background-color:#CCCCCC">
    </colgroup>
    <tr>
        <th>ID</th>
        <th>MODEL</th>
        <th>MANUFACTURER NAME</th>
        <th>MANUFACTURER COUNTRY</th>
        <th>DRIVERS(ID, NAME, LICENSE)</th>
        <th>DELETE</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.manufacturer.country}" /></td>
            <td>
            <c:forEach items="${car.drivers}" var="driver">
                <br><c:out value="${driver.id}, ${driver.name}, ${driver.licenseNumber}"/>
            </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
    </c:forEach>
</table>
<input type="button" value="Add new car" onClick='location.href="http://localhost:8080/cars/add"'>
<input type="button" value="Add driver to car" onClick='location.href="http://localhost:8080/cars/drivers/add"'>
<input type="button" value="Remove driver from car" onClick='location.href="http://localhost:8080/cars/drivers/delete"'>
</body>
</html>
