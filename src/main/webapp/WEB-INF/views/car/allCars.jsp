<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>My cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Manufacturer</td>
        <td>List of drivers</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}"/> </td>
            <td><c:out value="${car.getModel()}"/> </td>
            <td><c:out value="${car.getDrivers().size()} drivers"/> </td>
            <td><a href="${pageContext.request.contextPath}/car/delete?id=${car.id}">DELETE</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
