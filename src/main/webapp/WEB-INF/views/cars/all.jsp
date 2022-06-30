<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="k" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<h1>List of cars</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.getName()}, ${car.manufacturer.getCountry()}" /></td>
            <td><c:out value="${car.driversAsString()}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a> </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/index">go back</a>
</body>
</html>