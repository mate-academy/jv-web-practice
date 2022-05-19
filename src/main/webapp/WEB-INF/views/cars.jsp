<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/cars/add">add new car</a>
<h1>List of all cars</h1>
<table border="1" cellpadding="5"
       style="border-collapse: collapse; border: 1px solid black;">
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer</th>
        <th>Drivers</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer}"/></td>
            <td><c:out value="${car.drivers}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
    </c:forEach>
</table>
<h2><a href="${pageContext.request.contextPath}/cars/drivers/add">add driver to car</a></h2>
<a href="${pageContext.request.contextPath}/index">back to index page</a>
</body>
</html>
