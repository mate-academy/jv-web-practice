<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
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
<h1>Delete car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/delete">
    <select name="car_id">
        <c:forEach items="${cars}" var="car">
            <option value="${car.id}">${car.model}</option>
        </c:forEach>
    </select>
    <button type="submit">DELETE CAR</button>
</form>
</body>
</html>
