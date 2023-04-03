<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>List of all cars</h1>
<a href="${pageContext.request.contextPath}/displayAllCars/createCar">ADD CAR</a><br>
<a href="${pageContext.request.contextPath}/displayAllCars/addDriverToCar">ADD DRIVER TO CAR</a><br>
<br>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.manufacturer}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.drivers}"/></td>
            <td><a href="${pageContext.request.contextPath}/displayAllCars/deleteCar?id=${car.id}">delete car</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>