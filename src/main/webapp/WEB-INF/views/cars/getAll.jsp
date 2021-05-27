<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page of cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>Drivers</td>>
        <td>MANUFACTURER</td>
        <td>Country</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /> </td>
            <td><c:out value="${car.model}" /> </td>
            <td><c:out value="${car.drivers}" /> </td>
            <td><c:out value="${car.manufacturer.name}" /> </td>
            <td><c:out value="${car.manufacturer.country}" /> </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete this car</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
