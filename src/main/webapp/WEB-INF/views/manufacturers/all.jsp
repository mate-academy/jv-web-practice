<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>This is all manufacturers</title>
</head>
<body><h1>List of manufacturers</h1>
<table>
    <tr>
        <td>|ID|</td>
        <td>|NAME|</td>
        <td>|COUNTRY|</td>
        <td>|DELETE|</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/> </td>
            <td><c:out value="${manufacturer.name}"/> </td>
            <td><c:out value="${manufacturer.country}"/> </td>
            <td><a href="${ageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete this manufacturer</a> </td>
        </tr>
    </c:forEach>
</table>
<form method="get" action="${ageContext.request.contextPath}/">
    <button type="submit">Back to home</button>
</form>
</body>
</html>
