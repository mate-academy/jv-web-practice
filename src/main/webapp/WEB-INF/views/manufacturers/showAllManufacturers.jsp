<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/index.jsp" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<h3>All manufacturers</h3>
<table>
    <tr>
        <td><b>ID</b></td>
        <td><b>Name</b></td>
        <td><b>Country</b></td>
        <td><b>Delete manufacturer</b></td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
