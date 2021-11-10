<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<h1>Cars</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>MODEL</td>
            <td>MAKERNAME</td>
            <td>MAKERCOUNTRY</td>
            <td>DRIVERS</td>
            <td>DELETE</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}" /></td>
                <td><c:out value="${car.model}" /></td>
                <td><c:out value="${car.manufacturer.name}" /></td>
                <td><c:out value="${car.manufacturer.country}" /></td>
                <td><a href="${pageContext.request.contextPath}/driversByCar?id=${car.id}">Display drivers</a></td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete car</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
