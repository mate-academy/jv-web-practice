<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Drivers</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer}" /></td>
            <td><c:out value="${car.drivers}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
    </c:forEach>
</table>
</body>
<footer>
    <a href="${pageContext.request.contextPath}/cars/create">Create new car</a>
    <a href="${pageContext.request.contextPath}/cars/addDriver">Add driver to car</a>
    <a href="${pageContext.request.contextPath}/index">To main menu</a>
</footer>
</html>
