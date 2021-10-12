<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>ALL CARS TABLE</h1>
<table>
    <tr>
        <td>ID</td>
        <td>name</td>
        <td>manufacturer_name</td>
        <td>delete_this_car_option</td>
        <td>drivers</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}" /></td>
            <td><c:out value="${car.getModel()}" /></td>
            <td><c:out value="${car.getManufacturer().getName()}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">delete this car</a></td>
            <td><c:out value="${car.getDrivers()}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
