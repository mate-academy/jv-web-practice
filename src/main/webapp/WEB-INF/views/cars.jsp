<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style >
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
    <title>Display all cars</title>
</head>
<body>
<h3>List of cars:</h3>
<table>
    <tr>
        <th>Id</th>
        <th>Model</th>
        <th>Manufacturer</th>
        <th>Drivers</th>
        <th>Delete link</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.getModel()}" /></td>
            <td><c:out value="${car.getManufacturer().getName()} "/></td>
            <td><d:out value="${car.getDrivers().toString()} "/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
