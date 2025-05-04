<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
    <table>
        <tr>
            <td>Car id</td>
            <td>Car model</td>
            <td>Car manufacturer name</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}"></c:out></td>
                <td><c:out value="${car.model}"></c:out></td>
                <td><c:out value="${car.manufacturer.getName()}"></c:out></td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete this car</a> </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
