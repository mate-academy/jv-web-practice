<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index page</title>
    <style>
        table, th, td {
            border: 2px solid #333;
            border-collapse: collapse;
            text-align: center;
            width: 100%;
        }

        td {
            width: 33%;
        }
        .topnav {
            background-color: #338999;
            display: flex;
            justify-content: space-between;
        }

        .topnav a {
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a.active {
            color: white;
        }
    </style>
</head>
<body>
<div class="topnav">
    <a class="active" href="${pageContext.request.contextPath}/">Main</a>
    <a class="active" href="${pageContext.request.contextPath}/cars">Cars</a>
    <a class="active" href="${pageContext.request.contextPath}/drivers">Drivers</a>
    <a class="active" href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a>
</div>
<h1 style="text-align: center">Cars List</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
        <td>DELETE CAR</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}"/></td>
            <td><c:out value="${car.getModel()}"/></td>
            <td><c:out value="${car.getManufacturer().getName()}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers?carId=${car.id}"><c:out value="${car.drivers.size()}"/> drivers</a></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?carId=${car.id}">DELETE CAR!</a> </td>
        </tr>
    </c:forEach>
</table>

<h2>Add Car</h2>
<form name="form1" method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="carModel">
    Manufacturer <select name = "manufacturerId">
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.id}"><c:out value="${manufacturer.name}"/></option>
    </c:forEach>
</select>
    <button type="submit">Add</button>
</form>

<h2>Update Car</h2>
<form name="form2" method="post" action="${pageContext.request.contextPath}/cars/update">
    Id <select name="carUpdateId">
    <c:forEach items="${cars}" var="car">
        <option value="${car.id}"><c:out value="${car.id}"/>.<c:out value="${car.model}"/></option>
    </c:forEach>
</select>
    Model <input type="text" name="updateModel">
    Manufacturer <select name = "manufacturerId">
    <c:forEach items="${manufacturers}" var="manufacturer">
    <option value="${manufacturer.id}"><c:out value="${manufacturer.name}"/></option>
    </c:forEach></select>
    <button type="submit">Update Car</button>
</form>
</body>
</html>
