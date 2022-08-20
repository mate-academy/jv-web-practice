<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<style>
    body {
        font-family: Helvetica, sans-serif;
        font-size: 12px;
        line-height: 16px;
    }
</style>
<body>
<h2>List of all cars</h2>
<table border="1px">
    <tr>
        <td width="20px">Id</td>
        <td width="150">Manufacturer</td>
        <td width="100px">Model</td>
        <td width="400">Drivers</td>
        <td width="25px">Delete</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.drivers}"/></td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                    <input type="button" name="delete" value="DELETE"></a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="${pageContext.request.contextPath}/cars/add">
    <input type="button" name="add" value="ADD CAR"></a>
<br><br>
<a href="${pageContext.request.contextPath}/cars/drivers/add">
    <input type="button" name="add" value="ADD DRIVER TO CAR"></a>
</body>
<br><br>
<a href="${pageContext.request.contextPath}/index">
    <input type="button" name="index" value="GO TO INDEX PAGE"></a>
</body>
</html>
