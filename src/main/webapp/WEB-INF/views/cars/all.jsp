<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>Here you can see a list of cars with manufacturers and drivers:</h1>
<table border="1" style="background: lemonchiffon">
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>Manufacturer name</td>
        <td>Manufacturer country</td>
        <td>Drivers name</td>
        <td>LicenseNumber</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${cars}" var="car">
    <c:forEach items="${car.getDrivers()}" var="driver">
    <tr>
        <td><c:out value="${car.id}" /></td>
        <td><c:out value="${car.model}" /></td>
        <td><c:out value="${car.manufacturer.getName()}" /></td>
        <td><c:out value="${car.manufacturer.getCountry()}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete</a></td>
        </c:forEach>
        </c:forEach>
</table>
</body>
</html>
