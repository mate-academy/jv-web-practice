<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of drivers</title>
</head>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENCE NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"></c:out> </td>
            <td><c:out value="${driver.name}"></c:out> </td>
            <td><c:out value="${driver.licenseNumber}"></c:out> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
