<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table border="1" cellpadding="5"
       style="border-collapse: collapse; border: 1px solid black;">
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer</th>
        <td>Drivers</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:forEach items="${car.drivers}" var="driver"> <c:out value="${driver.name}"/><br></c:forEach></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
