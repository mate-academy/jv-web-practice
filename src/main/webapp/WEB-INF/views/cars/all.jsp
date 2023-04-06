<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 38097
  Date: 06.04.2023
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Cars:</h1>
<table>
    <tr>
        <th>id</th>
        <th>Model</th>
        <th>Manufacturer</th>
    </tr>
    <tr>
        <c:forEach items="${cars}" var="car">
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                    <button type="submit">DELETE CAR</button>
                </form>
            </td>
        </c:forEach>
    </tr>
</table>
</body>
</html>
