<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List cars</h1>
<table>
    <tr>
        <td>Car id</td>
        <td>Model</td>
        <td>Manufacturer name</td>
        <td>Manufacturer country</td>
        <td>Driver name</td>
        <td>Driver license</td>
    </tr>
    <c:forEach items="@{cars}" var="car">
        <tr>
            <td><c:out value="${cars.id}" /></td>
            <td><c:out value="${cars.model}" /></td>
            <td><c:out value="${cars.manufacturer.name}" /></td>
            <td><c:out value="${cars.manufacturer.country}" /></td>
            <c:forEach items="@{cars}" var="car">
                <td><c:out value="${driver.name}"></c:out></td>
                <td><c:out value="${driver.licenseNumber}"></c:out></td>
            </c:forEach>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
