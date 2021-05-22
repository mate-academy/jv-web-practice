<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<h1>List of manufacturers:</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Country</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"></c:out> </td>
            <td><c:out value="${manufacturer.name}"></c:out> </td>
            <td><c:out value="${manufacturer.country}"></c:out> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
