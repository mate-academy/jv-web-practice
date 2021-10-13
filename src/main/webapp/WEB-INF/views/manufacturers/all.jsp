<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WEB-INF/views/style.css" />
</head>
<body>
<h1>All manufacturers</h1>
<table>
    <th> ID</th>
    <th> NAME</th>
    <th> LICENCE NUMBER</th>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.model}"/></td>
            <td><c:out value="${manufacturer.licenseNumber}"/></td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${manufacturer.id}">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
