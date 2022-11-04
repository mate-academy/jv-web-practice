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
    </tr>
    <c:forEach items="${drivers}" var="cars">
        <tr>
            <td><c:out value="${cars.id}" /></td>
            <td><c:out value="${cars.name}" /></td>
            <td><c:out value="${cars.licenseNumber}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
