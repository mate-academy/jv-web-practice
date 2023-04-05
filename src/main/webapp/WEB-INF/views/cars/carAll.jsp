<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
    <form method="get" action="${pageContext.request.contextPath}/home">
        <button type="submit"><--</button>
    </form>
    <h4>Car List</h4>
    <table>
        <tr>
            <td>| Cars </td>
            <td>| ID </td>
            <td>| Model </td>
            <td>| Manufacturer </td>
            <td>| Country </td>
            <td>| Drivers ...</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
                <td><c:out value="${car.id}" /></td>
                <td><c:out value="${car.model}" /></td>
                <td><c:out value="${car.manufacturer.name}" /></td>
                <td><c:out value="${car.manufacturer.country}" /></td>
                <td><c:out value="${car.getAllDriversString()}" /></td>
                <td><a href="${pageContext.request.contextPath}/cars/add-driver?id=${car.id}">add Driver</a></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <form method="get" action="${pageContext.request.contextPath}/cars/create">
        <button type="submit">New</button>
    </form>
</body>
</html>
