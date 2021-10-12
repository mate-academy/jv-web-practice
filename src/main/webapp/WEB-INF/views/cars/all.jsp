<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars list</title>
    <style>
        li {
            list-style-type: none;
        }
        ul {
            padding-left: 0;
        }
    </style>
</head>
<body>
<h1>Taxi Service - List of cars:</h1>
<table>
    <tr>
        <th>ID</th>
        <th>MODEL</th>
        <th>MANUFACTURER</th>
        <th>COUNTRY</th>
        <th>DRIVERS</th>
        <th>DELETE</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.getManufacturer().getName()}" /></td>
            <td><c:out value="${car.getManufacturer().getCountry()}" /></td>
            <td>
                <c:forEach items="${car.getDrivers()}" var="driver">
                    <ul>
                        <li><b>name:</b> <c:out value="${driver.name}" /><b>; license number:</b> <c:out value="${driver.licenseNumber}" /></li>
                    </ul>
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
