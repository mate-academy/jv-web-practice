<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>manufacturer</title>
</head>
<body>
<h1>List of Manufacturer</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Country</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"   /></td>
            <td><c:out value="${manufacturer.name}"   /></td>
            <td><c:out value="${manufacturer.country}"   /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturer/delete?id=${manufacturer.id}" style="text-decoration: none">delete this manufacturer</a></td>
        </tr>
    </c:forEach>>
</table>
</body>
</html>
