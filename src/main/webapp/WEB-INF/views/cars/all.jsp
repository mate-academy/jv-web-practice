<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
    <style>
        form {
            display: inline-block;
        }
    </style>
</head>
<body>
<h2>All cars</h2>
<table border="1">
    <tr align="center">
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer</th>
        <th>Drivers</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr align="center">
            <td><c:out value="${car.id} "/></td>
            <td><c:out value="${car.model} "/></td>
            <td><c:out value="${car.manufacturer.name} "/></td>
            <td><c:out value="${car.drivers} "/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a> </td>
        </tr>
    </c:forEach>
</table>
<br>
<form action="/cars/add">
    <input type="submit" value="Add new car">
</form>
<form action="${pageContext.request.contextPath}/index">
    <input type="submit" value="Home page">
</form>
</body>
</html>
