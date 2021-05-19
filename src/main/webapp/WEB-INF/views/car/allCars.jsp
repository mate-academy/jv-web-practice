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
        <td>id</td>
        <td>model</td>
        <td>manufacturer</td>
        <td>drivers</td>
        <td>delete</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}" /></td>
            <td><c:out value="${car.getModel()}" /></td>
            <td><c:out value="${car.getManufacturer().getName()}" /></td>
            <td><c:forEach items="${car.getDrivers()}" var="driver">
                    <c:out value="${driver.getName()}" />
            </c:forEach></td>
            <td><button onclick="location.href='${pageContext.request.contextPath}/cars/delete?id=${car.getId()}'"
                        type="button">delete this car</button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
