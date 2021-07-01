<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of manufacturers</title>
</head>
<body>
    <table border="1">
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Country</td>
            <td>Delete</td>
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
    <a href="${pageContext.request.contextPath}/manufacturers/create">Add manufacturer</a>
    <a href="${pageContext.request.contextPath}/">To main page</a>
</body>
</html>
