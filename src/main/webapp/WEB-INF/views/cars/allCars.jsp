<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars:</h1><br>
<c:if test = "${empty cars}">
    <h3>We have no manufacturers yet. <a href="${pageContext.request.contextPath}/manufacturers/create">Create one</a> first.</h3><br>
</c:if>
<c:if test = "${!empty cars}">
    <table>
        <tr>
            <td><b>ID:</b></td>
            <td><b>MODEL:</b></td>
            <td><b>MANUFACTURER:</b></td>
            <td><b>COUNTRY:</b></td>
            <td><b>DRIVERS:</b></td>
        </tr>
        <c:forEach items = "${cars}" var = "car">
            <tr>
                <td><c:out value = "${car.id}" /></td>
                <td><c:out value = "${car.model}" /></td>
                <td><c:out value = "${car.manufacturer.name}" /></td>
                <td><c:out value = "${car.manufacturer.country}" /></td>
                <td>
                    <c:forEach items ="${car.drivers}"  var = "driver">
                    <c:out value = "${driver.name}" /><br>
                    </c:forEach>
                </td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<br><a href="${pageContext.request.contextPath}/index">Back to index page</a>
</body>
</html>
