<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h2><a href="/index">Main page</a></h2>
<h1>List of all cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER'S ID</td>
        <td>DRIVERS' IDs</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
            <c:forEach items="${car.drivers}" var="driver" varStatus="status">
                <td>${driver.id}<c:if test="${!status.last}">,</c:if></td>
            </c:forEach>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
<h2><a href="/cars/register">Register new car</a></h2>
<h2><a href="/cars/drivers/add">Add driver to car</a></h2>
</body>
</html>
