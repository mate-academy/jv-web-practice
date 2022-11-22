<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>All drivers</title>
    <style>
        <%@include file="/style/style.css"%>
    </style>
</head>
<body>
<h1>All drivers</h1>
<table>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>LICENSE NUMBER</th>
        <th>DELETE</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete this driver</a></td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/index">Back</a>
</body>
</html>
