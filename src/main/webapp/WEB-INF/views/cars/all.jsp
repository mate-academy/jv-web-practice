<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<h1> List of cars: </h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <td><c:out value="${car.id}"/></td>
        <td><c:out value="${car.model}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
