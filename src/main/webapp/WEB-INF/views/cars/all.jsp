<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table style="width:50%">
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER ID</td>
        <td>MANUFACTURER'S NAME</td>
        <td>MANUFACTURER'S COUNTRY</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
    </c:forEach>
</table>
<c:forEach items="${cars}" var="car">
    <h3>Drivers for car with ID ${car.id}:</h3>
    <table style="width:25%">
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>LICENSE NUMBER</td>
        </tr>
        <c:forEach items="${car.drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
            </tr>
        </c:forEach>
    </table>
</c:forEach>
<a href="${contentType.request.contextPath}/index">Back to menu</a>
</body>
</html>
