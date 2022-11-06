<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBERS</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${drivers}" var="drivers">
        <tr>
            <td><c:out value="${drivers.id}" /></td>
            <td><c:out value="${drivers.name}" /></td>
            <td><c:out value="${drivers.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${drivers.id}">delete driver</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
