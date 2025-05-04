<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Manufacturers</title>
</head>

<body>
<h1>Manufacturers list</h1>
<form action="<c:url value="/index"/>" >
    <input type="submit" value="Home" />
</form>
<form action="<c:url value="/manufacturers/create"/>" >
    <input type="submit" value="New Manufacturer" />
</form>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Country</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/manufacturers/delete?manufacturer_id=${manufacturer.id}">Delete</a>
                <a href="${pageContext.request.contextPath}/manufacturers/update?manufacturer_id=${manufacturer.id}">Edit</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
