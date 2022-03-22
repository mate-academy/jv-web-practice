<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}" /></td>
            <td><c:out value="${car.getModel()}" /></td>
            <td><c:out value="${car.getManufacturer().getName()}" /></td>
            <td>
                <c:forEach items="${cars.getDrivers()}" var="drivers">
                    <td><c:out value="${drivers.getName()}" /></td>
                </c:forEach>
            </td>
            <td>delete this car</td>
        </tr>
    </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/index">Back to menu</a></p>
</body>
</html>
