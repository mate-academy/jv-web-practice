<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<a href="/cars/drivers/add">Add driver to car</a><br/><br/>
<a href="/cars/add">Add car</a><br/>
<h1>List of cars</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVER</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}" /></td>
            <td><c:out value="${car.getModel()}" /></td>
            <td><c:out value="${car.getManufacturer().getName()}" /></td>
            <td><c:forEach items="${car.getDrivers()}" var="driver">
                <c:out value="${driver.getName()}" />
            </c:forEach></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?&id=${car.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
