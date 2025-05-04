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
        <td> ID </td>
        <td> NAME </td>
        <td> COUNTRY </td>
    </tr>
    <c:forEach items ="${allManufacturers}" var ="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/deleteManufacturer?id=${manufacturer.id}"> delete this manufacturer></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>