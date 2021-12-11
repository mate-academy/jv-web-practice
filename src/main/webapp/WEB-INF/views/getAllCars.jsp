<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars in taxi service</h1>

<td><a href="${pageContext.request.contextPath}/index">
    <button type="submit">Click here to back in Main Menu</button></a></td>

<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER NAME</td>
        <td>MANUFACTURER COUNTRY</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
            <td><c:forEach var="driver" items="${car.drivers}">
                    ${driver.id} ${driver.name} ${driver.licenseNumber} <br>
                </c:forEach></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                <button type="submit">delete this car</button>
            </a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>