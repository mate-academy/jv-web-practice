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
        <td>MANUFACTURER ID</td>
        <td>MANUFACTURER NAME</td>
        <td>DRIVERS INFO</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <c:forEach items="${car.drivers}" var="driver">
                <td><c:out value="${driver.name}" />; </td>
            </c:forEach>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete car</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
