<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>all car</title>
</head>
<body>
<h2><a href="${pageContext.request.contextPath}/main">MAIN PAGE</a></h2>
<h2><a href="${pageContext.request.contextPath}/cars/add">Add cars</a></h2>
<p>List of cars:</p>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
    </tr>
    <c:forEach items="${cars}" var="car">
    <tr>
        <td><c:out value="${car.id}"/></td>
        <td><c:out value="${car.model}"/></td>
        <td><c:out value="${car.manufacturer.name}"/></td>
        <td><c:out value="${car.drivers}"/></td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a></td>
        </c:forEach>
    </tr>
</table>
</body>
</html>
