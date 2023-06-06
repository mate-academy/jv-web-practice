<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                    <button type="submit">DELETE CAR</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
