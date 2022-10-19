<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of manufacturers</title>
</head>
<body>
<h1>List of manufacturers:</h1>
<table border="2">
    <tr>
        <td>ID</td>
        <td>BRAND</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
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
<form>
    <div>
        <input type="button" value="Add new manufacturer" onClick='location.href="${pageContext.request.contextPath}/manufacturers/add"'>
    </div>
</form>
</body>
</html>
