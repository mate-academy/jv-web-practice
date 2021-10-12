<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cars</title>
</head>
<body>
<h1>List of cars</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Delete</td>
        <td>Pass driver id</td>
        <td>Add</td>
    </tr>
    <c:forEach items="${allCars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.getName()}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete this car</a></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver</a></td>
        </tr>
    </c:forEach>
</table>
<table>
    <tr>
        <td>Car id</td>
        <td>This car drivers</td>
    </tr>
    <c:forEach items="${allCars}" var="car">
        <td><c:out value="${car.id}"/></td>
        <td><c:out value="${car.drivers}"/></td>
    </c:forEach>
</table>
</body>
</html>
