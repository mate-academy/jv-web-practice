<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Manufacturers</title>
</head>
<body>
<h1>All Manufacturers</h1>
<table>
    <tr>
        <td>Manufacturer`s ID</td>
        <td>Manufacturer`s name</td>
        <td>Manufacturer`s country</td>
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