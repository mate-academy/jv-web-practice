<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>MANUFACTURERS</title>
</head>
<body>
<%@include file="/WEB-INF/views/header/menu.jsp"%>
<h1>Manufacturers</h1>
<table>
    <tr>
        <th></th>
        <th>ID</th>
        <th>NAME</th>
        <th>COUNTRY</th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td>
                <input type="button"
                       value="delete"
                       onclick="window.location.href =
                               '${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}'">
            </td>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
        </tr>
    </c:forEach>
</table>
<%@include file="create.jsp"%>
</body>
</html>
