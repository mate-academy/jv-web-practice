<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all cars</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        th {
            text-align: left;
        }
    </style>
</head>
<body>
<table style="width:50%">
    <caption>LIST OF ALL CARS:</caption>
    <tr>
        <th>ID</th>
        <th>MODEL</th>
        <th>MANUFACTURER</th>
        <th>DRIVERS</th>
        <th>ADD A DRIVER</th>
        <th>DELETE</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <li>${driver.name}</li>
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/add">add a driver</a></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
