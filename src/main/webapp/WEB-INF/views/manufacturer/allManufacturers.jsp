<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>My manufacturers</title>
</head>
<body>
<h1>List of manufacturers:</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Country</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${manufacturers}" var="mnf">
        <tr>
            <td><c:out value="${mnf.getId()}"/> </td>
            <td><c:out value="${mnf.getName()}"/> </td>
            <td><c:out value="${mnf.getCountry()}"/> </td>
            <td><a href="${pageContext.request.contextPath}/manufacturer/delete?id=${mnf.id}">DELETE</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
