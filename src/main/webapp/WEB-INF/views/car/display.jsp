<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>Car id</td>
        <td>Model</td>
        <td>Manufacturer name</td>
        <td>Manufacturer country</td>
        <td>Driver`s name</td>
        <td>Driver`s license</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /> </td>
            <td><c:out value="${car.model}" /> </td>
            <td><c:out value="${car.manufacturer.name}" /> </td>
            <td><c:out value="${car.manufacturer.country}" /> </td>
            <c:forEach items="${car.getDrivers()}" var="driver">
                <td><c:out value="${driver.name}"></c:out></td>
                <td><c:out value="${driver.licenseNumber}"></c:out></td>
            </c:forEach>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
