<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Report about drivers</title>
</head>
<body>
<style>
    td {
        text-align: center;
        vertical-align: middle;
    }
</style>
<h1>Table of drivers!</h1>
<table BORDER="4" CELLPADDING="2" CELLSPACING="2" WIDTH="100%">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>License number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
