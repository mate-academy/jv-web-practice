<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1><p><strong>all cars in db</strong></p></h1>
<table border="1">
    <thead>
    <tr>
        <th>Id</th>
        <th>model</th>
        <th>manufacturer</th>
        <th>delete</th>
    </tr>
    </thead>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete/?id=${car.id}">Delete</a>
            </td>
    </c:forEach>
</table>
<form action="${pageContext.request.contextPath}">
    <input type="submit" value="BACK">
</form>
</body>
</html>
