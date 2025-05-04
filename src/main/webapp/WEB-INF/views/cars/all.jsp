<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>All cars</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER_Id</td>
        <td>MANUFACTURER</td>
        <td>COUNTRY</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.id}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">${driver.name} <br> </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
