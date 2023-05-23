<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>display manufacturers</title>
</head>
<body>
<h1>display all manufacturers</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>country</td>
        <td>delete</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete this manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
