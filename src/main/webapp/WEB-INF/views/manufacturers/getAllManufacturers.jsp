<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<h1>List of manufacturers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.getId()}"/></td>
            <td><c:out value="${manufacturer.getName()}"/></td>
            <td><c:out value="${manufacturer.getCountry()}"/> </td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.getId()}">delete this manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
<form>
    <a href="http://localhost:8080/index">Return to homepage</a>
</form>
</body>
</html>