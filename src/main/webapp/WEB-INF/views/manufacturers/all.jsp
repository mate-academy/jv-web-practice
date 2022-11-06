<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturer</title>
</head>
<body>
<h1>List of manufacturer:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturers">
        <tr>
            <td><c:out value="${manufacturers.id}" /></td>
            <td><c:out value="${manufacturers.name}" /></td>
            <td><c:out value="${manufacturers.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturers.id}">Delete this manufacturer</a></td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
