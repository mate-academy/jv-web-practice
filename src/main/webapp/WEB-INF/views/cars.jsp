<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all cars</title>
</head>
<body>
<h1>List of cars:</h1>
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
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                 <c:out value="${driver.name}" /><br>
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                Delete this car
            </a>
            </td>
        </tr>
    </c:forEach>
</table>
<button type="button">
    <a href="${pageContext.request.contextPath}/cars/add">
        Add car
    </a>
</button>
<button type="button">
    <a href="${pageContext.request.contextPath}/cars/drivers/add">
        Add driver to car
    </a>
</button>
</body>
</html>

