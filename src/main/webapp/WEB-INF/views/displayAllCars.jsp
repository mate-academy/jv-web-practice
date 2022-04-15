<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cars</title>
</head>
<body>
    <h1>List of Cars</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>License Number</td>
            <td>Car model</td>
            <td>Manufacturer</td>
            <td>Country of manufacturer</td>
            <td>Delete</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <c:forEach items="${car.getDrivers()}" var="driver">
                <tr>
                    <td><c:out value="${driver.id}"   /></td>
                    <td><c:out value="${driver.name}"   /></td>
                    <td><c:out value="${driver.licenseNumber}"   /></td>
                    <td><c:out value="${car.model}"   /></td>
                    <td><c:out value="${car.manufacturer.name}"   /></td>
                    <td><c:out value="${car.manufacturer.country}"   /></td>
                    <td><a href="${pageContext.request.contextPath}/delete/driverFromCar?driver_id=${driver.id}&car_id=${car.id}" style="text-decoration: none">delete this driver</a></td>
                </tr>
            </c:forEach>
        </c:forEach>
    </table>
</body>
</html>
