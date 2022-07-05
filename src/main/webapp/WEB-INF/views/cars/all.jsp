<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h2>List of cars:</h2>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS List</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.getName()}" /></td>
            <c:forEach items="${car.getDrivers()}" var="driver" >
                    <td>id = "${driver.id}",
                    name = "${driver.name}",
                    licenseNumber = "${driver.licenseNumber}"</td>
            </c:forEach>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
