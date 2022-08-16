<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service: Manufacturers</title>
</head>
<body>
<a href="/index">Home</a>
<h1>Cars:</h1>
<table border="1">
    <tr>
        <td><b>MODEL</b></td>
        <td><b>MANUFACTURER</b></td>
        <td><b>DRIVERS</b></td>
        <td></td>
        <td></td>
    </tr>
    <c:forEach var="car" items="${cars}">
        <tr>
            <td>${car.getModel()}</td>
            <td>${car.getManufacturer().getName()}</td>
            <td>
            <c:forEach var="driver" items="${car.getDrivers()}">
                ${driver}<br>
            </c:forEach>
            </td>
            <td><a href="/cars/drivers/add?id=${car.getId()}">add driver</a></td>
            <td><a href="cars/delete?id=${car.getId()}">delete car</a></td>
        </tr>
    </c:forEach>
    <th colspan="5">
        <b>Total rows: ${cars.size()}</b>
    </th>
</table>
<a href="/cars/add">Add new car...</a>
</body>
</html>
