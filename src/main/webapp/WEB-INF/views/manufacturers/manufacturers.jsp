<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>List of manufacturers</title>
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
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}/users/delete?id=${manufacturer.id}">delete this manufacturer</a> </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/manufacturers/create">Add new manufacturer</a>
<a href="${pageContext.request.contextPath}/index">Back</a>
</body>
</html>
