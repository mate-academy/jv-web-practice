<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of all cars:</h1>
<table>
    <tr>
        <td>id</td>
        <td>manufacturer</td>
        <td>model</td>
        <td>delete</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.manufacturer.getName()}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
<h1>${message}</h1>
</body>
</html>
