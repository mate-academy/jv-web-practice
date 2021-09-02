<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
    <h1>ALL CARS LIST:</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>MODEL</td>
            <td>MANUFACTURER ID</td>
            <td>MANUFACTURER NAME</td>
            <td>MANUFACTURER COUNTRY</td>
            <td>DRIVER ID</td>
            <td>DRIVER NAME</td>
            <td>DRIVER LICENSE #</td>
            <td>DELETE</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <c:if test="${empty car.drivers}">
                <tr>
                    <td><c:out value="${car.id}" /></td>
                    <td><c:out value="${car.model}" /></td>
                    <td><c:out value="${car.manufacturer.id}" /></td>
                    <td><c:out value="${car.manufacturer.name}" /></td>
                    <td><c:out value="${car.manufacturer.country}" /></td>
                    <td>---</td>
                    <td>---</td>
                    <td>---</td>
                    <td><a href="${pageContext.request.contextPath}/delete-car?id=${car.id}">Delete this car</a></td>
                </tr>
            </c:if>
            <c:if test="${!empty car.drivers}">
                <c:forEach items="${car.drivers}" var="driver">
                    <tr>
                    <td><c:out value="${car.id}" /></td>
                    <td><c:out value="${car.model}" /></td>
                    <td><c:out value="${car.manufacturer.id}" /></td>
                    <td><c:out value="${car.manufacturer.name}" /></td>
                    <td><c:out value="${car.manufacturer.country}" /></td>
                    <td><c:out value="${driver.id}" /></td>
                    <td><c:out value="${driver.name}" /></td>
                    <td><c:out value="${driver.licenseNumber}" /></td>
                    <td><a href="${pageContext.request.contextPath}/delete-car?id=${car.id}">Delete this car</a></td>
                </c:forEach>
            </c:if>
        </c:forEach>
    </table>
</body>
</html>
