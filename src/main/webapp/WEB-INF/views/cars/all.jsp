<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>All cars</h1>
<p><a href="${pageContext.request.contextPath}/index">Home</a></p>
<p><a href="${pageContext.request.contextPath}/cars/new">Create a car</a></p>
<table>
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer</th>
        <th>Drivers</th>
        <th>Action</th>
    </tr>
    <c:forEach var="car" items="${cars}">
        <tr>
            <td>${car.id}</td>
            <td>${car.model}</td>
            <td>${car.manufacturer.name} (${car.manufacturer.country})</td>
            <td>
                <c:forEach var="driver" items="${car.drivers}">
                    <p>${driver.name} (${driver.licenseNumber})</p>
                </c:forEach>
            </td>
            <td>
                <form action="${pageContext.request.contextPath}/cars/delete" method="post">
                    <input type="hidden" name="id" value="${car.id}">
                    <button type="submit">X</button>
                </form>
                <a href="${pageContext.request.contextPath}/cars/drivers/add?car_id=${car.id}">Add a driver</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
