<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
    <h1>List of cars:</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>MODEL</td>
            <td>MANUFACTURER_ID</td>
            <td>MANUFACTURER_NAME</td>
            <td>MANUFACTURER_COUNTRY</td>
            <td>DRIVERS</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}" /> </td>
                <td><c:out value="${car.model}" /> </td>
                <td><c:out value="${car.manufacturer.id}" /> </td>
                <td><c:out value="${car.manufacturer.name}" /> </td>
                <td><c:out value="${car.manufacturer.country}" /> </td>
                <td><c:out value="${car.drivers}" /> </td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a> </td>
            </tr>
        </c:forEach>
    </table>
    <a href="${pageContext.request.contextPath}/index">return to main page</a>
</body>
</html>
