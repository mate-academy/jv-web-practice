<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    table, th, td {
        border: 1px solid black;
    }
</style>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of all cars</h1>
<table>
    <tr>
        <th>ID</th>
        <th>MODEL</th>
        <th>MANUFACTURER</th>
        <th>DRIVERS</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <th><c:out value="${car.id}"/></th>
            <th><c:out value="${car.model}"/></th>
            <th>
                <a href="${pageContext.request.contextPath}/manufacturers/find?id=${car.manufacturer.id}">${car.manufacturer.id}</a>
            </th>
            <th>
                <c:forEach items="${car.drivers}" var="driver">
                    <br><a href="${pageContext.request.contextPath}/drivers/find?id=${driver.id}">${driver.name}</a></br>
                </c:forEach>
                <form method="post" action="${pageContext.request.contextPath}/cars/driver/add?carId=${car.id}">
                    driver id - <input type="number" name="driverId">
                    <button type="submit">add</button>
                </form>
            </th>
            <th><a href="${pageContext.request.contextPath}/cars/delete?carId=${car.id}">delete</a></th>
        </tr>
    </c:forEach>
</table>
</body>
</html>