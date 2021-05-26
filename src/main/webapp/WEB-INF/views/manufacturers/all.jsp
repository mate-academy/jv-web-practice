<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<h1>List of all manufacturers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>c:out value="${manufacturer.id}</tr>
        <tr>c:out value="${manufacturer.name}</tr>
        <tr>c:out value="${manufacturer.country}</tr>
    </c:forEach>
</table>
</body>
</html>