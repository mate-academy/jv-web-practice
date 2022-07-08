<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<h1>List of manufacturers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE_NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete this manufacturer></a></td>
        </tr>
    </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/manufacturers/add">Create manufacturer</a></p>
<p><a href="${pageContext.request.contextPath}/index">Main page</a></p>
</body>
</html>
