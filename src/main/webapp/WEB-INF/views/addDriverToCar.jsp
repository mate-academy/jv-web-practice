<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h3> Add Driver to Car </h3>
<form action="${pageContext.request.contextPath}/drivers/cars/add" method="post">
    <table style="width: 40%">
        <tr>
            <td>Driver ID</td>
            <td><input type="number" name="driverId" required/></td>
        </tr>
        <tr>
            <td>Car ID</td>
            <td><input type="number" name="carId" required/></td>
        </tr>
    </table>
    <input type="submit" value="Confirm" />
</form>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENCE_NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
        </tr>
    </c:forEach>
</table>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
