<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all cars</title>
</head>
<body>
<h1>List of cars with manufacturers and drivers:</h1>
<table>
    <tr>
        <td>CARS ID</td>
        <td>CARS MODEL</td>
        <td>MANUFACTURERS ID</td>
        <td>MANUFACTURERS NAME</td>
        <td>MANUFACTURERS COUNTRY</td>
        <td>CARS REMOVAL</td>
        <td>DRIVERS ID</td>
        <td>DRIVERS NAME</td>
        <td>DRIVERS LICENSE NUMBER</td>
        <td>DRIVERS REMOVAL</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value ="${car.id}"/></td>
            <td><c:out value ="${car.model}"/></td>
            <td><c:out value ="${car.manufacturer.id}"/></td>
            <td><c:out value ="${car.manufacturer.name}"/></td>
            <td><c:out value ="${car.manufacturer.country}"/></td>
            <td><a href = "${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
            <c:forEach items="${car.drivers}" var="driver">
                <td><c:out value ="${driver.id}"/></td>
                <td><c:out value ="${driver.name}"/></td>
                <td><c:out value ="${driver.licenseNumber}"/></td>
                <td><a href = "${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">remove this driver from the car</a></td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
</body>
</html>
