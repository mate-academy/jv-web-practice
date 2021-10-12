<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Yelinskyi</title>
</head>
<body>
<h1>All manufacturer!</h1>
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
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete this
                manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
