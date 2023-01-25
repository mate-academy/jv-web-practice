<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>List of all cars</h1>
<table>
    <tr>
        <td>id</td>
        <td>model</td>
        <td>manufacturer</td>
        <td>drivers</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${cars.id}"/></td>
            <td><c:out value="${cars.model}"/></td>
            <td><c:out value="${cars.manufacturer.name}"/></td>
            <td>
                <c:forEach items="${cars.drivers}" var="driver">
                    <c:out value="${drivers.name}"/>
                </c:forEach>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}"><- delete car</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
