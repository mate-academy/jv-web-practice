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
        <td>Id </td>
        <td>Model </td>
        <td>Manufacturer_name </td>
        <td>Manufacturer_country </td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.getName()}"/></td>
            <td><c:out value="${car.manufacturer.getCountry()}"/></td>
            <td><a href="${pageContext.request.contextPath}/car/delete?id=${car.id}">delete this car</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
