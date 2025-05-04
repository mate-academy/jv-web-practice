<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<h1>All manufacturers</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Country</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturers">
        <tr>
            <td><c:out value="${manufacturers.id}" /></td>
            <td><c:out value="${manufacturers.name}" /></td>
            <td><c:out value="${manufacturers.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturers.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
