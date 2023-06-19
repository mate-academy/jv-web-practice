<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer</th>
        <th>Drivers</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td>${car.id}</td>
            <td>${car.model}</td>
            <td>${car.manufacturer.name} (${car.manufacturer.country})</td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    ${driver.name}<br>
                </c:forEach>
            </td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/cars/delete">
                    <input type="hidden" name="carId" value="${car.id}">
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
