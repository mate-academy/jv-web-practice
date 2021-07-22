<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
    <h1>All drivers in DB</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>LICENSE_NUMBER</td>
        </tr>
        <c:forEach items="${drivers}" var="drivers">
            <tr>
                <td><c:out value="${drivers.id}" /></td>
                <td><c:out value="${drivers.name}" /></td>
                <td><c:out value="${drivers.licenseNumber}" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
