<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Yelinskyi</title>
</head>
<body>
<h1>All cars!</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
        <td>DRIVERS</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"></c:out></td>
            <td><c:out value="${car.model}"></c:out></td>
            <td><c:out value="${car.manufacturer.name}"></c:out></td>
            <td><c:out value="${car.manufacturer.country}"></c:out></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this
                car</a></td>
            <c:forEach items="${car.drivers}" var="driver">
                <td><c:out value="${driver.name}"></c:out></td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
</body>
</html>
