<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show all cars</title>
</head>
<body>

<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer name</td>
        <td>Manufacturer country</td>
        <td>Drivers</td>>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /> </td>
            <td><c:out value="${car.model}" /> </td>
            <td><c:out value="${car.manufacturer.name}" /> </td>
            <td><c:out value="${car.manufacturer.country}" /> </td>
            <td><c:out value="${car.drivers}" /> </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
