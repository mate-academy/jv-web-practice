<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver Control Panel</title>
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
<h1><c:out value="${car.id}"/>.<c:out value="${car.model}"/> driver list</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
        <td>DELETE DRIVER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/delete?carId=${car.id}&driverId=${driver.id}">DELETE DRIVER FROM CAR</a></td>
        </tr>
    </c:forEach>
</table>
<h2>Add Driver to Car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <select name="driverId">
        <c:forEach items="${driversList}" var="driver">
            <option value="${driver.id}"><c:out value="${driver.id}"/>.<c:out value="${driver.name}"/></option>
        </c:forEach>
    </select>
    <button name="carId" value="${car.id}" type="submit">Add Driver</button>
</form>
</body>
</html>
