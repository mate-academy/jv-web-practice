<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body bgcolor="#fafad2">
<h1 align="center" style="color: lightsteelblue">List of manufacturers</h1>
<div align="center">
    <a href="/index">Home</a>
    <a href="/cars">Show cars</a>
    <a href="/drivers">Show drivers</a>
    <a href="/manufacturers">Show manufacturers</a>
</div>

<a href="/manufacturers/add">Create new Manufacturer</a><br>

<table border="1">
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>COUNTRY</th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">DELETE</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
