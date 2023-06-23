<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<style>
    .button-link {
        display: inline-block;
        padding: 4px 6px;
        background-color: #0045b3;
        color: #fff;
        text-decoration: none;
        border-radius: 4px;
        border: none;
        cursor: pointer;
    }

    .button-link:hover {
        background-color: #0078b3;
    }
</style>
<h1>List of manufacturers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MANUFACTURER</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}" class="button-link">DELETE</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
