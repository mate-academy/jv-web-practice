<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>

<h1>List of cars:</h1>
<table>
    <tr>
        <td>CAR ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER NAME</td>
        <td>MANUFACTURER COUNTRY</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <td><c:out value="${car.id}" /> </td>
        <td><c:out value="${car.model}" /> </td>
        <td><c:out value="${car.getManufacturer().getName()}"/></td>
        <td><c:out value="${car.getManufacturer().getCountry()}"/></td>
        <td>
            <c:forEach items="${car.getDrivers()}" var="driver">
                ${driver.id} ${driver.name} ${driver.licenseNumber} <br>
            </c:forEach>
        </td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a> </td>
    </c:forEach>
</table>
</body>
</html>
