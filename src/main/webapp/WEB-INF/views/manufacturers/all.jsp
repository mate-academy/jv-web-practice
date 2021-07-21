<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<h2>All manufacturers</h2>
<table>
    <tr>
        <td>Manufacturers ID</td>
        <td>Manufacturers name</td>
        <td>Manufacturers country</td>
        <td>Manufacturers delete</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"></c:out></td>
            <td><c:out value="${manufacturer.name}"></c:out></td>
            <td><c:out value="${manufacturer.country}"></c:out></td
            <td><a href="${pageContext.request.contextPath}/manufacturer/delete?id=${manufacturer.id}"></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
