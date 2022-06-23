<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/">Home</a>
<h1>All Manufacturers List:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                    Delete This Manufacturer
                </a>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="3">
            <a href="${pageContext.request.contextPath}/manufacturers/create">
                Create New
            </a>
        </td>
    </tr>
</table>
</body>
</html>
