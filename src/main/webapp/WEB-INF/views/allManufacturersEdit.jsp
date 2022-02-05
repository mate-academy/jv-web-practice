<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<h2><a href="/index">Back to home page</a></h2>
<br>
<br>
<h3>All active manufacturers:</h3>
<br>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Country</th>
        <th>Delete from the Matrix</th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete this manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
