<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html lang="en">
<head>
    <title>Car Drivers</title>
</head>
<body>
<div class="nav-bar">
    <a href="${pageContext.request.contextPath}/">Home</a>
    <a href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a>
    <a href="${pageContext.request.contextPath}/drivers">Drivers</a>
    <a href="${pageContext.request.contextPath}/cars">Cars</a>
</div>
<h1>Drivers of car with id - ${car.id}, model - ${car.model}, manufacturer - ${car.manufacturer.name}:</h1>
<table border="3px solid #333">
    <tr style="font-weight: bold">
        <td>Id</td>
        <td>Name</td>
        <td>License number</td>
    </tr>
    <c:forEach items="${driversOfCar}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/delete?carId=${car.id}&driverId=${driver.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

<h1>Add driver to the car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver
    <select name="driverId">
        <c:forEach items="${allDrivers}" var="driver">
            <option value="${driver.id}">${driver.id}, ${driver.name}, ${driver.licenseNumber}</option>
        </c:forEach>
    </select>
    <button name="carId" value="${car.id}" type="submit">Add driver</button>
</form>
</body>
</html>