<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>Cars: </h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER_NAME</td>
        <td>MANUFACTURER_COUNTRY</td>
        <td>DRIVER_NAME</td>
        <td>DRIVER_LICENSE_NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
            <td>
                <table>
                    <c:forEach items="${car.drivers}" var="driver">
                        <tr>
                            <td><c:out value="${driver.name}"/></td>
                            <td><c:out value="${driver.licenseNumber}"/></td>
                        </tr>
                    </c:forEach>
                </table>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
