<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get_All_Cars</title>
</head>
<body>
<h1>Get all cars</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>COUNTRY</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${allCars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">${driver.name} <br> </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a></td>
        </tr>
    </c:forEach>
</table>
<td><a href="${pageContext.request.contextPath}/index">Back to taxi</a></td><br>
</body>
</html>
