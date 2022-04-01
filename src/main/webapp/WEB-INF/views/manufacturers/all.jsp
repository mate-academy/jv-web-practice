<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/menu">MENU</a>
<h2>List of manufacturers:</h2>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td>${manufacturer.id}</td>
            <td>${manufacturer.name}</td>
            <td>${manufacturer.country}</td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">DELETE</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
