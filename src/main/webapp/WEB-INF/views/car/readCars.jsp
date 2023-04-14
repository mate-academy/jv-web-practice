<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Cars</title>
</head>

<body>
<h2>Cars list</h2>
<form action="<c:url value="/index"/>" >
    <input type="submit" value="Home" />
</form>
<form action="<c:url value="/cars/create"/>" >
    <input type="submit" value="New Car" />
</form>
<table>
    <tr>
        <td>ID</td>
        <td>Manufacturer</td>
        <td>Model</td>
        <td>Country</td>
        <td>Drivers</td>
        <td>License number</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.getManufacturer().name}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.getManufacturer().country}" /></td>
            <td><c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name}" /><br>
                    <a href="${pageContext.request.contextPath}/cars/drivers/delete?car_id=${car.id}&driver_id=${driver.id}">Remove Driver</a><br>
                </c:forEach>
            <td>
            <td><c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.licenseNumber}" /><br>
                </c:forEach>
            <td>
            <a href="${pageContext.request.contextPath}/cars/delete?car_id=${car.id}">Delete Car</a>
            <a href="${pageContext.request.contextPath}/cars/update?car_id=${car.id}">Edit Car</a>
            <a href="${pageContext.request.contextPath}/cars/drivers/add?car_id=${car.id}">Add Driver</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
