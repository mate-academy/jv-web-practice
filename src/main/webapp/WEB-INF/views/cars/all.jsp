<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Cars</title>
    <style>
        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<H1>List of cars:</H1>
<table>
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Drivers</td>
        <td>Delete Car</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td>${car.id}</td>
            <td>${car.model}</td>
            <td>${car.manufacturer.name}</td>
            <td>
                <ul>
                    <c:forEach items="${car.drivers}" var="driver">
                        <li>id = ${driver.id}, name = ${driver.name}, licenseNumber = ${driver.licenseNumber}
                            <a href="${pageContext.request.contextPath}/cars/drivers/delete?car_id=${car.id}&driver_id=${driver.id}">Delete
                                this driver</a></li>
                    </c:forEach>
                </ul>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete this car</a></td>
        </tr>
    </c:forEach>
</table>
<br>
<H1>Add new Car</H1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    Manufacturer Id <input type="text" name="manufacturer_id"><br>
    <button type="submit">Add Car</button>
</form>
<br>
<br>
<ul>
    <li><a href="${pageContext.request.contextPath}/drivers/all">List All Drivers</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturers/all">List All Manufacturers</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></li>
</ul>
</body>
</html>
