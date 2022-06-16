<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<style>
    table, th, td {
        border:1px solid black;
    }
</style>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<h1>List of manufacturers</h1>
<table style="width:50%">
    <tr>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/index">Return to main page</a></p>
</body>
</html>
