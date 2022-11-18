<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ALL manufacturers</title>
</head>
<body>
<table border="1">
    <thead>
    <tr>
        <th>Id</th>
        <th>name</th>
        <th>country</th>
    </tr>
    </thead>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td>
                <a href="http://localhost:8080/manufacturers/delete/?id=${manufacturer.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<form action="http://localhost:8080/main">
    <input type="submit" value="BACK">
</form>
</body>
</html>
