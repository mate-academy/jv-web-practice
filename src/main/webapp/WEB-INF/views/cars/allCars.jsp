<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars</h1>
<table>
    <c:forEach items="${cars}" var="car">
        <tr>
        <tr>
            <td>CAR ID</td>
            <td>CAR MODEL</td>
            <td>DELETE</td>
        </tr>
        <td><c:out value="${car.id}"/></td>
        <td><c:out value="${car.model}"/></td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        <tr>
            <td>MANUFACTURER ID</td>
            <td>MANUFACTURER NAME</td>
            <td>MANUFACTURER COUNTRY</td>
        </tr>
        <td><c:out value="${car.manufacturer.id}"/></td>
        <td><c:out value="${car.manufacturer.name}"/></td>
        <td><c:out value="${car.manufacturer.country}"/></td>
        <tr>
            <td>DRIVER ID</td>
            <td>DRIVER NAME</td>
            <td>DRIVER LICENSE NUMBER</td>
        </tr>
        <c:forEach items="${car.drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
            </tr>
        </c:forEach>
        </tr>
        <tr>
        <tr>
            <td></td>
        </tr>
        </tr>
    </c:forEach>
</table>
</body>
</html>
