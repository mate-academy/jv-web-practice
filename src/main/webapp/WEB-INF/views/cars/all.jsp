<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>All cars:</h1>
<table>
    <tr>
        <td>id</td>
        <td>model</td>
        <td>manufacturer name</td>
        <td>manufacturer country </td>
        <td>drivers info</td>
        <td>delete</td>
    </tr>
    <c:forEach  var="car" items="${cars}">
        <tr>
            <td>
                <c:out value="${car.id}"/>
            </td>
            <td>
                <c:out value="${car.model}"/>
            </td>
            <td>
                <c:out value="${car.manufacturer.name}"/>
            </td>
            <td>
                <c:out value="${car.manufacturer.country}"/>
            </td>
            <td>
                <c:forEach var="driver" items="${car.drivers}">
                    ${driver.id} ${driver.name} ${driver.licenseNumber}<br>
                </c:forEach>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/index">back</a>
</body>
</html>
