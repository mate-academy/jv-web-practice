<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER ID</td>
        <td>MANUFACTURER NAME</td>
        <td>MANUFACTURER COUNTRY</td>
        <td>DRIVER ID</td>
        <td>DRIVER NAME</td>
        <td>DRIVER LICENSE NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <c:if test="${car.drivers.size() == 0}">
            <tr>
                <td><c:out value="${car.id}" /></td>
                <td><c:out value="${car.model}" /></td>
                <td><c:out value="${car.manufacturer.id}" /></td>
                <td><c:out value="${car.manufacturer.name}" /></td>
                <td><c:out value="${car.manufacturer.country}" /></td>
                <td>---</td>
                <td>---</td>
                <td>---</td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
            </tr>
        </c:if>
        <c:if test="${car.drivers.size() > 0}">
            <c:forEach items="${car.drivers}" var="driver">
                <c:if test="${driver == car.drivers.get(0)}">
                    <tr>
                        <td><c:out value="${car.id}" /></td>
                        <td><c:out value="${car.model}" /></td>
                        <td><c:out value="${car.manufacturer.id}" /></td>
                        <td><c:out value="${car.manufacturer.name}" /></td>
                        <td><c:out value="${car.manufacturer.country}" /></td>
                        <td><c:out value="${driver.id}" /></td>
                        <td><c:out value="${driver.name}" /></td>
                        <td><c:out value="${driver.licenseNumber}" /></td>
                        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
                    </tr>
                </c:if>
                <c:if test="${driver != car.drivers.get(0)}">
                    <tr>
                        <td>---</td>
                        <td>---</td>
                        <td>---</td>
                        <td>---</td>
                        <td>---</td>
                        <td><c:out value="${driver.id}" /></td>
                        <td><c:out value="${driver.name}" /></td>
                        <td><c:out value="${driver.licenseNumber}" /></td>
                        <td>---</td>
                    </tr>
                </c:if>
            </c:forEach>
        </c:if>
    </c:forEach>
</table>
</body>
</html>
