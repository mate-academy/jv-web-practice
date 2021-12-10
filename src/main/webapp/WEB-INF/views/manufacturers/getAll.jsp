<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<table border="1">
    <tr>
        <th colspan="3"><h1>List of manufacturers</h1></th>
    </tr>
    <tr>
        <th style="width:20%">id</th>
        <th style="width:40%">name</th>
        <th style="width:40%">country</th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
        <td><c:out value="${manufacturer.id}" /></td>
        <td><c:out value="${manufacturer.name}" /></td>
        <td><c:out value="${manufacturer.country}" /></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
