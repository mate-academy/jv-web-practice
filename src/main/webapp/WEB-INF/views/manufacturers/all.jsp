<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete manufacturer</title>
</head>
<body>
<table>
    <caption><h3>List of all manufacturers:</h3></caption>
    <thead>
    <tr>
        <h1>
        <td>Id</td>
        <td>Name</td>
        <td>Country</td>
        <td>DELETE</td>
        </h1>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.getId()}"/></td>
            <td><c:out value="${manufacturer.getName()}"/></td>
            <td><c:out value="${manufacturer.getCountry()}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>

