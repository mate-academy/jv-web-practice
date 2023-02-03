<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>index page</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
    </tr>
    <c:forEach items="${cars}" var="cars">
        <tr>
            <td><c:out value="${cars.id}" /></td>
            <td><c:out value="${cars.model}" /></td>
            <td><c:out value="${cars.manufacturer}" /></td>
            <td><c:out value="${cars.drivers}" /></td>
        </tr>
    </c:forEach>
</table>
<h2>Enter car id to delete:</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/delete">
    Car Id <input type="number" name="car_id"><br>
    <button type="delete">Confirm</button>
</form>
</body>
</html>

