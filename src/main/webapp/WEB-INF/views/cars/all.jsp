<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All Cars List</title>
</head>
<body>
<h1>All Cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Origin country</td>
        <td>Assigned drivers</td>

    </tr>
    <c:forEach  items="${car}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
            <c:forEach items="${car.getDrivers()}" var="driver">
                <td>
                    <ul>
                        <li>Driver name: <c:out value="${driver.name}" /></li>
                        <li>License number: <c:out value="${driver.licenseNumber}" /></li>
                    </ul>
                </td>
            </c:forEach>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete from DB</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>