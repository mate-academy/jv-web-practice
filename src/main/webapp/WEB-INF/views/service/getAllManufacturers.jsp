<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Manufacturers</title>
</head>
<body>
<form method="get" action="${pageContext.request.contextPath}/index">
    <button type="submit">Back to Main page</button>
</form>
<br>
<h1>All Manufacturers from the database</h1>
<table>
    <td>ID</td>
    <td>Name</td>
    <td>Country</td>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.getId()}"/></td>
            <td><c:out value="${manufacturer.getName()}"/></td>
            <td><c:out value="${manufacturer.getCountry()}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturer/delete?id=${manufacturer.getId()}">delete this manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
