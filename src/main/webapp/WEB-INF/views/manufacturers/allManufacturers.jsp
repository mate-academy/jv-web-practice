<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturers list page</title>
</head>
<body>
<h1>ALL MANUFACTURERS:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Country</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">DELETE</a></td>
        </tr>
    </c:forEach>
</table>
<h2>Navigation:</h2>
<a href="${pageContext.request.contextPath}/manufacturers/add">ADD NEW MANUFACTURER</a><br>
<a href="${pageContext.request.contextPath}/index">BACK to START PAGE</a>
</body>
</html>
