<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars list</title>
</head>
<body>
    <h1>Cars list</h1>
<table>
    <tr>
        <td>id</td>
        <td>model</td>
        <td>manufacturer</td>
        <td>drivers</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.name}"/>
            </c:forEach>
            <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a>
        </tr>
    </c:forEach>
</table>
    <p><a href="${pageContext.request.contextPath}/index">return to main page</a></p>
</body>
</html>
