<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List cars with drivers</title>
</head>
<body>
<h1>List cars with drivers</h1>
<table>
    <tr>
        <td>CAR ID</td>
        <td>CAR MODEL</td>
        <td>DRIVER ID</td>
        <td>DRIVER NAME</td>
        <td>REMOVE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <c:forEach items="${car.getDrivers()}" var="driver">
            <tr>
                <td><c:out value="${car.getId()}"/></td>
                <td><c:out value="${car.getModel()}"/></td>
                <td><c:out value="${driver.getId()}"/></td>
                <td><c:out value="${driver.getName()}"/></td>
                <td><a href="${pageContext.request.contextPath}/cars/drivers/remove?car_id=${car.getId()}&driver_id=${driver.getId()}">remove driver from car</a></td>
            </tr>
        </c:forEach>
    </c:forEach>
</table>
</body>
</html>
