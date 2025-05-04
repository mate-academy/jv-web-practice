<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<h1>All manufacturers</h1>
<p><a href="${pageContext.request.contextPath}/index">Home</a></p>
<p><a href="${pageContext.request.contextPath}/manufacturers/new">Create a manufacturer</a></p>
<table style="text-align: center">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Country</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="manufacturer" items="${manufacturers}">
        <tr>
            <td>${manufacturer.id}</td>
            <td>${manufacturer.name}</td>
            <td>${manufacturer.country}</td>
            <td>
                <form action="${pageContext.request.contextPath}/manufacturers/delete" method="post"
                      style="margin: 0">
                    <input type="hidden" name="id" value="${manufacturer.id}">
                    <button type="submit" style="cursor: pointer">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
