<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GET ALL CARS</title>
</head>
<body>
<h1>List of all cars</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>DELETE</td>
        <td>MANUFACTURER ID</td>
        <td>MANUFACTURER NAME</td>
        <td>MANUFACTURER COUNTRY</td>
        <td>DRIVER NAME</td>
        <td>DRIVER ID</td>
        <td>DRIVER NUMBER</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}"> Delete car </a></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.manufacturer.country}" /></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name}" /><br/>
                </c:forEach>
            </td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.id}" /><br/>
                </c:forEach>
            </td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                 <c:out value="${driver.licenseNumber}" /><br/>
                </c:forEach>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
