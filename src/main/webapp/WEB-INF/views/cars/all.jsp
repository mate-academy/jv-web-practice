<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>New car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="car_model"><br>
    Manufacturer ID <input type="number" name="car_manufacturer_id"><br>
    <button type="submit">Add</button>
</form>
<br>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>model</td>
        <td>manufacturer</td>
        <td>drivers</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td>[
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name}"/>,
                </c:forEach>]
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
