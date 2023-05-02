<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars">
    <table>
        <tr>
            <td>ID</td>
            <td>MODEL</td>
            <td>Delete</td>
        </tr>
        <c:forEach items="${carList}" var="car">
            <tr>
                <td><c:out value="${car.id}" /></td>
                <td><c:out value="${car.model}" /></td>
                <td><a href="${pageContext.request.contextPath}/car/delete?id=${car.id}"> delete this car </a> </td>
            </tr>
        </c:forEach>
    </table>
    <br>
</form>
</body>
</html>
