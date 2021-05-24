<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Report about manufacturers</title>
</head>
<body>
<style>
    td {
        text-align: center;
        vertical-align: middle;
    }
</style>
<h1>Table of manufacturers!(Admin version)</h1>
<table BORDER="4" CELLPADDING="2" CELLSPACING="2" WIDTH="100%">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Country</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/get/admin/delete?manufacturerId=${manufacturer.id}">delete this manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
