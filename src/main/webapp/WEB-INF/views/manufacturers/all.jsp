<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<h2>All manufacturers</h2>
<table>
    <tr>
        <td>ID</td>
        <td>name</td>
        <td>country</td>
        <td>delete</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
