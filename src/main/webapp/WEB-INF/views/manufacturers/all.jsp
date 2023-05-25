<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<%@ include file="/WEB-INF/views/headers/button.jsp"%><br>
<h1>You can add a new manufacturer using the form below:</h1><br>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name <input type="text" name="name" required><br>
    Country <input type="text" name="country" required><br>
    <button type="submit">Add manufacturer</button>
</form><br>
<h1>List of manufacturers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${manufacturers}" var = "manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
