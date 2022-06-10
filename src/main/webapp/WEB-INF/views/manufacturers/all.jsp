<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<h1>List of manufacturers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <td><c:out value="${manufacturer.id}" /> </td>
        <td><c:out value="${manufacturer.name}" /> </td>
        <td><c:out value="${manufacturer.country}" /> </td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">DELETE</a> </td>
    </c:forEach>
</table>
</body>
</html>
