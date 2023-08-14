<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars</h1>

<table>
    <tr>
        <td>Car ID</td>
        <td>Car model</td>
        <td>Manufacturer name</td>
        <td>Manufacturer country</td>
        <td>Drivers</td>
        <td>Delete car</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}"/></td>
            <td><c:out value="${car.getModel()}"/></td>
            <td><c:out value="${car.getManufacturer().getName()}"/></td>
            <td><c:out value="${car.getManufacturer().getCountry()}"/></td>
            <td>
                <table id="innerTable">
                    <tr>
                        <td>Name</td>
                        <td>License number</td>
                    </tr>
                    <c:forEach items="${car.getDrivers()}" var="driver">
                        <tr>
                            <td><c:out value="${driver.getName()}"/></td>
                            <td><c:out value="${driver.getLicenseNumber()}"/></td>
                        </tr>
                    </c:forEach>
                </table>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">delete this car</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
