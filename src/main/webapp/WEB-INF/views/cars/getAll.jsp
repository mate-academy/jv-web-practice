<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>List of car:</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>Manufacturer name</td>
        <td>Manufacturer country</td>
        <td>Driver name</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"></c:out> </td>
            <td><c:out value="${car.model}"></c:out> </td>
            <td><c:out value="${car.getManufacturer().name}"></c:out> </td>
            <td><c:out value="${car.getManufacturer().country}"></c:out> </td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name}" />
                </c:forEach>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
