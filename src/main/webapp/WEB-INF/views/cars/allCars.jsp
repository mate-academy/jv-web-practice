<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td> ID </td>
        <td> MODEL </td>
        <td> MANUFACTURER ID </td>
        <td> DRIVERS </td>
    </tr>
    <c:forEach items ="${allCars}" var ="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer}" /></td>
            <td><c:out value="${car.drivers}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/deleteCar?id=${car.id}">delete this car></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
