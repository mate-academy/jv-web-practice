<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<%@ include file="/WEB-INF/views/headers/button.jsp"%><br>
<h1>You can add a new car using the form below:</h1><br>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model <input type="text" name="model" required><br>
    Manufacturer <select name="manufacturer_id">
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.id}">
            <c:out value="${manufacturer.name}" />.
            <c:out value="${manufacturer.country}" />
        </option>
    </c:forEach>
</select><br>
    <button type="submit">Add car</button>
</form><br>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
    </tr>
    <c:forEach items="${cars}" var = "car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
        </tr>
    </c:forEach>
</table>
<h3>Link driver with a car by ID:</h3>
<form method="post" action="${PageContext.request.contextPath}/cars/carsByDrivers">
    Car ID <input type="number" name="car_id"><br>
    Driver ID <input type="number" name="driver_id"><br>
    <button type="submit">Confirm</button>
</form><br>
<input type="hidden" value="${car.id}" name="car_id" />
</form><br>
</body>
</html>
