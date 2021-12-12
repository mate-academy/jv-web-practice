<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<table border="1">
    <tr>
        <th colspan="4"><h1>List of manufacturers</h1></th>
    </tr>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>country</th>
        <th>delete link</th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
        <td><c:out value="${manufacturer.id}" /></td>
        <td><c:out value="${manufacturer.name}" /></td>
        <td><c:out value="${manufacturer.country}" /></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete this manufacturer</a></td>
    </tr>
    </c:forEach>
    <tr>
        <th colspan="5"><a href="${pageContext.request.contextPath}/manufacturers/add">Add new manufacturer</a></th>
    </tr>
    <tr>
        <th colspan="5"><a href="${pageContext.request.contextPath}/index">Back to main</a></th>
    </tr>
</table>
</body>
</html>
