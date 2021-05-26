<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of all cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>c:out value="${car.id}</tr>
        <tr>c:out value="${car.model}</tr>
        <tr>c:out value="${car.manufacturer}</tr>
        <tr>c:out value="${car.drivers}</tr>
    </c:forEach>
</table>
</body>
</html>
