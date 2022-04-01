<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/menu">MENU</a>
<h2>List of drivers:</h2>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td>${driver.id}</td>
            <td>${driver.name}</td>
            <td>${driver.licenseNumber}</td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
