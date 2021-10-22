<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>all manufacturers</title>
    <style><%@include file="/WEB-INF/views/css/styles.css"%></style>
</head>
<body>
<h2>List manufacturers!</h2>
<table>
    <td>ID</td>
    <td>NAME</td>
    <td>COUNTRY</td>
    <c:forEach items="${manufacturers}" var="manufacture">
        <tr>
            <td><c:out value="${manufacture.id}" /></td>
            <td><c:out value="${manufacture.name}" /></td>
            <td><c:out value="${manufacture.country}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
