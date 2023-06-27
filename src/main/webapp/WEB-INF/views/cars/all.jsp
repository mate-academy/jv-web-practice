<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
    <style><%@include file='/WEB-INF/css/style.css' %></style>
</head>
<body>
<h1>Cars List</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer</th>
        <th>Drivers</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="car" items="${cars}">
        <tr>
            <td>${car.id}</td>
            <td>${car.model}</td>
            <td>${car.manufacturer.name}</td>
            <td>
                <c:forEach var="driver" items="${car.drivers}">
                    ${driver.name} <br>
                </c:forEach>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?car_id=${car.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br><a href="${pageContext.request.contextPath}">Home page</a><br>
</body>
</html>