<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<p><a href="${pageContext.request.contextPath}/index">To main page</a></p>
<h2>List of all cars:</h2>
<table>
    <tr>
        <th style="border: solid black 1px">
            ID
        </th>
        <th style="border: solid black 1px">
            MODEL
        </th>
        <th style="border: solid black 1px">
            MANUFACTURER
        </th>
        <th style="border: solid black 1px">
            DRIVERS
        </th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.name}"/>
            </c:forEach></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}"><- delete this car</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>