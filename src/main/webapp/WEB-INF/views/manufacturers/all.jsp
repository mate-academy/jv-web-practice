<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<h1>List of manufacturers:</h1>
<style>
    <%@include file="/WEB-INF/tablesStyle.css"%>
</style>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}"
                   onclick="if(!confirm('Are you sure that you want to delete the manufacturer?')) return false">
                    delete this manufacturer
            </a></td>
        </tr>
    </c:forEach>
</table>
<br><a href="${pageContext.request.contextPath}/cars/add">To add car</a>
<br><a href="${pageContext.request.contextPath}/">Back to main</a>
</body>
</html>
