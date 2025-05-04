<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TaxiService</title>
</head>
<body>
<h1>All Drivers</h1>
<table>
    <tr>
        <th>ID</th>
        <th>MODEL</th>
        <th>MANUFACTURER_NAME</th>
        <th>MANUFACTURER_COUNTRY</th>
        <th>DRIVER_NAME</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name}"></c:out>
                </c:forEach>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
