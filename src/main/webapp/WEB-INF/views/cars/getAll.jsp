<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="get" action="${pageContext.request.contextPath}/index">
    <button type="submit">Back to Main page</button>
</form>
<h1>All Cars from the database</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Manufacturer ID</td>
        <td>Manufacturer Name</td>
        <td>Manufacturer Country</td>
        <td>Drivers</td>
        <td>Driver ID</td>
        <td>Driver Name</td>
        <td>Driver License Number</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}"/></td>
            <td><c:out value="${car.getModel()}"/></td>
            <td><c:out value="${car.getManufacturer().getId()}"/></td>
            <td><c:out value="${car.getManufacturer().getName()}"/></td>
            <td><c:out value="${car.getManufacturer().getCountry()}"/></td>
            <c:forEach items="${car.getDrivers()}" var="driver">
                <td><c:out value="${driver.getId()}"/></td>
                <td><c:out value="${driver.getName()}"/></td>
                <td><c:out value="${driver.getLicenseNumber()}"/></td>
            </c:forEach>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">delete this car</a></td>
        </tr>
    </c:forEach>
</table>
</form>
</body>
</html>
