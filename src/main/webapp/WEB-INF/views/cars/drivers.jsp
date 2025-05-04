<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage drivers for car</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
    <h3>${car.getManufacturer().getName()} ${car.getModel()} (id: ${car.getId()})</h3>
    <a href="${pageContext.request.contextPath}/cars/drivers/add?id=${car.getId()}">
        <h4>Add driver to this car</h4></a>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>License number</th>
    </tr>
    <c:forEach items="${car.getDrivers()}" var="driver">
        <tr>
            <td>
                <c:out value="${driver.getId()}" />
            </td>
            <td>
                <c:out value="${driver.getName()}" />
            </td>
            <td>
                <c:out value="${driver.getLicenseNumber()}" />
            </td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/cars/drivers/delete">
                    <input type="hidden" name="car_id" value="${car.getId()}" />
                    <input type="hidden" name="driver_id" value="${driver.getId()}" />
                    <button type="submit">remove this driver from car</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
