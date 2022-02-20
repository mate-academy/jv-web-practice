<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html lang="en">
<head>
    <title>Cars</title>
</head>
<body>
<div class="nav-bar">
    <a href="${pageContext.request.contextPath}/">Home</a>
    <a href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a>
    <a href="${pageContext.request.contextPath}/drivers">Drivers</a>
    <a href="${pageContext.request.contextPath}/cars">Cars</a>
</div>
<h1>Add new car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model">
    Manufacturer
    <select name="manufacturer.id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}">${manufacturer.name}</option>
        </c:forEach>
    </select>
    <button type="submit">Add car</button>
</form>

<h1>Update an existing car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/update">
    Id
    <select name="id">
        <c:forEach items="${cars}" var="car">
            <option value="${car.id}">${car.id}</option>
        </c:forEach>
    </select>
    Model <input type="text" name="model">
    Manufacturer
    <select name="manufacturer.id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}">${manufacturer.name}</option>
        </c:forEach>
    </select>
    <button type="submit">Update car</button>
</form>

<h1>All cars:</h1>
<table border="3px solid #333">
    <tr style="font-weight: bold">
        <td>Id</td>
        <td>Model</td>
        <td>Manufacturer's name</td>
        <td>Number of drivers</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.drivers.size()}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete</a></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers?carId=${car.id}">Car drivers menu</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
