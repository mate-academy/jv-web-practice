<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<a href="/">Main page</a>
<a href="/cars/add">Create New Cars</a>
<a href="/cars/drivers/add">Add drivers to cars</a>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MANUFACTURER NAME</td>
        <td>MODEL</td>
        <td>DRIVERS</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.drivers.toString()}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
