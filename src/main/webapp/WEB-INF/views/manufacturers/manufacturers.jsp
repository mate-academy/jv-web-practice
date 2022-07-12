<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<h2><a href="/">Main page</a> </h2>
<h1>List all manufacturers:</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>country</td>
        <td>delete</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
