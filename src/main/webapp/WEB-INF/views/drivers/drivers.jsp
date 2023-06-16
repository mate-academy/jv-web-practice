<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
    <table>
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>License Number</td>
        </tr>
        <c:forEach items="${drivers}" var="car">
            <tr>
                <td><c:out value="${car.id}" /></td>
                <td><c:out value="${car.name}" /></td>
                <td><c:out value="${car.licenseNumber}" /></td>
                <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${car.id}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
