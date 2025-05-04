<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>All cars</h1>
<p><a href="${pageContext.request.contextPath}/index">Home</a></p>
<p><a href="${pageContext.request.contextPath}/cars/new">Create a car</a></p>
<table style="text-align: center">
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer (Country)</th>
        <th>Drivers (License numbers)</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="car" items="${cars}">
        <tr>
            <td>${car.id}</td>
            <td>${car.model}</td>
            <td>${car.manufacturer.name} (${car.manufacturer.country})</td>
            <td>
                <c:forEach var="driver" items="${car.drivers}">
                    <span>${driver.name} (${driver.licenseNumber})</span><br/>
                </c:forEach>
            </td>
            <td>
                <div style="display: flex; align-items: center">
                    <form action="${pageContext.request.contextPath}/cars/delete" method="post"
                          style="margin: 0 5px 0 0">
                        <input type="hidden" name="id" value="${car.id}">
                        <button type="submit" style="cursor: pointer">Delete</button>
                    </form>
                    <button>
                        <a href="${pageContext.request.contextPath}/cars/drivers/add?car_id=${car.id}"
                           style="text-decoration: none; color: black">
                            Add a driver
                        </a>
                    </button>
                </div>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
