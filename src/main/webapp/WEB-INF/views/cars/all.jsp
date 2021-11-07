<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<H1>All cars</H1>
<table border="1">
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.id}.${driver.name}"/>
                    <a href="/cars/delete?carId=${car.id}&driverId=${driver.id}">Delete driver from
                        car</a><br>
                </c:forEach>
            </td>
            <td>
                <a href="/cars/delete?carId=${car.id}">Delete car</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
