<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index">Go to Main Page</a>
<br>
<h2>All cars</h2>
<table>
    <tr>
        <th>Name</th>
        <th>Country</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td>${manufacturer.name}</td>
            <td>${manufacturer.country}</td>
            <td>
                <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                    DELETE
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
