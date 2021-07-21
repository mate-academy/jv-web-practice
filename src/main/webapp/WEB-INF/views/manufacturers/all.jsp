<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<a href="/manufacturers/add">Add manufacturer</a>
<h1>List of manufacturers</h1>
<table style="border:solid;">
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.getId()}" /></td>
            <td><c:out value="${manufacturer.getName()}" /></td>
            <td><c:out value="${manufacturer.getCountry()}" /></td>
            <td><button type="submit" href="${pageContext.request.contextPath}/manufacturers/delete?&id=${manufacturer.getId()}">delete</button></td>
    </c:forEach>
</table>
</body>
</html>
