<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car List</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>| ID </td>
        <td>| MODEL</td>
        <td>| MANUFACTURER ID</td>
        <td>| MANUFACTURER NAME</td>
        <td>| MANUFACTURER COUNTRY</td>
        <td>| DELETE |</td>
    </tr>
    <c:forEach items="${carList}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                <img src="https://findicons.com/files/icons/1261/sticker_system/128/trash_empty.png"
                     alt="trash icon" width="20" height="20" > Delete car</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
