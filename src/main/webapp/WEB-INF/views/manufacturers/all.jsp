<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<h1>List of manufacturers:</h1><br>
<c:if test = "${empty manufacturers}">
    <h3>We have no manufacturers yet. <a href="${pageContext.request.contextPath}/manufacturers/add">Create one</a> first.</h3><br>
</c:if>
<c:if test = "${!empty manufacturers}">
    <table>
        <tr>
            <td><b>ID:</b></td>
            <td><b>NAME:</b></td>
            <td><b>COUNTRY:</b></td>
        </tr>
        <c:forEach items = "${manufacturers}" var = "manufacturer">
            <tr>
                <td><c:out value = "${manufacturer.id}" /></td>
                <td><c:out value = "${manufacturer.name}" /></td>
                <td><c:out value = "${manufacturer.country}" /></td>
                <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<br><a href="${pageContext.request.contextPath}/index">Back to index page</a>
</body>
</html>
