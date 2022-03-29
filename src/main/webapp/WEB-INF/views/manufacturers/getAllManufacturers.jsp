<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <td><c:out value="${manufacturer.id}" /></td>
        <td><c:out value="${manufacturer.name}" /></td>
        <td><c:out value="${manufacturer.country}" /></td>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/index">Back to index page</a>
</body>
</html>
