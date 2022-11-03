<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Manufacturers</title>
</head>
<body>
<h1>All Manufacturers.</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Manufacturer</td>
        <td>Country</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="../manufacturers/delete?id=<c:out value="${manufacturer.id}" />">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
