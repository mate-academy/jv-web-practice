<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers list</title>
</head>
<body>
<h1>Manufacturers list</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>country</td>
    </tr>
    <c:forEach items="${manufacturers}" var = "manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/index">return to main page</a></p>
</body>
</html>
