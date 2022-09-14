<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Drivers</title>
</head>
<body>
<h1>List of Drivers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENCE NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
        <td><c:out value="${driver.id}"/></td>
        <td><c:out value="${driver.name}"/></td>
        <td><c:out value="${driver.licenseNumber}"/></td>
        <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete this driver</a></td>
        </tr>
    </c:forEach>
</table>
<br>
<form method="get" action="${pageContext.request.contextPath}/drivers/add">
    <button type="submit">Create driver</button>
</form>
</body>
</html>
