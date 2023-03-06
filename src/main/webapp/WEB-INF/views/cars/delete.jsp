<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <meta charset="UTF-8">
    <title>List of cars</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<h1>List of cars:</h1>

<table>
    <tr>
        <th style = "border: 2px solid #ddd; padding: 8px;">ID</th>
        <th style = "border: 2px solid #ddd; padding: 8px;">Model</th>
        <th style = "border: 2px solid #ddd; padding: 8px;">Manufacturer</th>
        <th style = "border: 2px solid #ddd; padding: 8px;">Country</th>
        <th style = "border: 2px solid #ddd; padding: 8px;">Drivers</th>
        <th style = "border: 2px solid #ddd; padding: 8px;">License</th>
        <th style = "border: 2px solid #ddd; padding: 8px;">Actions</th>
    </tr>

    <c:forEach var="car" items="${cars}">
        <tr>
            <td style = "border: 1px solid #ddd; padding: 8px;">${car.id}</td>
            <td style = "border: 1px solid #ddd; padding: 8px;">${car.model}</td>
            <td style = "border: 1px solid #ddd; padding: 8px;">${car.manufacturer.name}</td>
            <td style = "border: 1px solid #ddd; padding: 8px;">${car.manufacturer.country}</td>
            <td style = "border: 1px solid #ddd; padding: 8px;">
                <c:forEach var="driver" items="${car.drivers}">
                    ${driver.name}<br />
                </c:forEach>
            </td>
            <td style = "border: 1px solid #ddd; padding: 8px;">
                <c:forEach var="driver" items="${car.drivers}">
                    ${driver.licenseNumber}<br />
                </c:forEach>
            </td>
            <td style = "border: 1px solid #ddd; padding: 8px;">
                <form action="${pageContext.request.contextPath}/cars/delete" method="post">
                    <input type="hidden" name="id" value="${car.id}" />
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
