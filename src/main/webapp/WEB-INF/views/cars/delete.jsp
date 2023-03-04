<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <meta charset="UTF-8">
    <title>List of cars</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<h1>List of cars:</h1>

<table>
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer</th>
        <th>Country</th>
        <th>Drivers</th>
        <th>License</th>
        <th>Actions</th>
    </tr>

    <c:forEach var="car" items="${cars}">
        <tr>
            <td>${car.id}</td>
            <td>${car.model}</td>
            <td>${car.manufacturer.name}</td>
            <td>${car.manufacturer.country}</td>
            <td>
                <c:forEach var="driver" items="${car.drivers}">
                    ${driver.name}<br />
                </c:forEach>
            </td>
            <td>
                <c:forEach var="driver" items="${car.drivers}">
                    ${driver.licenseNumber}<br />
                </c:forEach>
            </td>
            <td>
                <form action="${pageContext.request.contextPath}/cars/delete" method="post">
                    <input type="hidden" name="id" value="${car.id}" />
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
