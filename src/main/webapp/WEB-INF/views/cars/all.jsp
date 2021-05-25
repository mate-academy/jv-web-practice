<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
    <h1>All Cars:</h1>
    <table>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer`s name</td>
        <td>Manufacturer`s country</td>
        <td>Driver`s name</td>
        <td>Driver`s licence number</td>
        <c:forEach items="${cars}" var="car">
            <tr>
                <<td><c:out value="${car.id}"></c:out></td>
                <td><c:out value="${car.model}"></c:out></td>
                <td><c:out value="${car.getManufacturer().name}"></c:out></td>
                <td><c:out value="${car.getManufacturer().country}"></c:out></td>
                <c:forEach items="${car.getDrivers()}" var="driver">
                    <td><c:out value="${driver.name}"></c:out></td>
                    <td><c:out value="${driver.licenseNumber}"></c:out></td>
                </c:forEach>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>