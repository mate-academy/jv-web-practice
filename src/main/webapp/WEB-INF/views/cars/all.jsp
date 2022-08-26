<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h2>List of cars:</h2>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Drivers</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.name}"/><br>
                </c:forEach>
            <td><a href="${pageContext.request.contextPath}cars/delete?id=${car.id}">delete</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
