<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Manufacturers from DB</title>
</head>
<body>
<h2>List of Manufacturers</h2>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"></c:out></td>
            <td><c:out value="${manufacturer.name}"></c:out></td>
            <td><c:out value="${manufacturer.country}"></c:out></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
