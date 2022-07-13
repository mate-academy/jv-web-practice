<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List all manufacturers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
        <c:forEach items="${cars}" var="car">
    <tr>
        <td><c:out value="${car.id}"/></td>
        <td><c:out value="${car.model}"/></td>
        <td><c:out value="${car.manufacturer}"/></td>
        <td><c:out value="${car.drivers}"/></td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this manufacturer</a></td>
    </tr>
    </c:forEach>
    </tr>
</table>
<a href="${pageContext.request.contextPath}/cars/add">
    <button class="GFG">
        To create a car, click here
    </button>
</a>
</body>
</html>
